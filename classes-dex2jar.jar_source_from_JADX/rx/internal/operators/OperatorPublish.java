package rx.internal.operators;

import java.util.Queue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import rx.Observable;
import rx.Observable.OnSubscribe;
import rx.Producer;
import rx.Subscriber;
import rx.Subscription;
import rx.exceptions.MissingBackpressureException;
import rx.functions.Action0;
import rx.functions.Action1;
import rx.functions.Func1;
import rx.internal.util.RxRingBuffer;
import rx.internal.util.SynchronizedQueue;
import rx.internal.util.unsafe.SpscArrayQueue;
import rx.internal.util.unsafe.UnsafeAccess;
import rx.observables.ConnectableObservable;
import rx.subscriptions.Subscriptions;

public final class OperatorPublish<T> extends ConnectableObservable<T> {
    final AtomicReference<PublishSubscriber<T>> current;
    final Observable<? extends T> source;

    /* renamed from: rx.internal.operators.OperatorPublish.1 */
    static final class C12691 implements OnSubscribe<T> {
        final /* synthetic */ AtomicReference val$curr;

        C12691(AtomicReference atomicReference) {
            this.val$curr = atomicReference;
        }

        public void call(Subscriber<? super T> subscriber) {
            while (true) {
                PublishSubscriber publishSubscriber = (PublishSubscriber) this.val$curr.get();
                if (publishSubscriber == null || publishSubscriber.isUnsubscribed()) {
                    PublishSubscriber publishSubscriber2 = new PublishSubscriber(this.val$curr);
                    publishSubscriber2.init();
                    if (this.val$curr.compareAndSet(publishSubscriber, publishSubscriber2)) {
                        publishSubscriber = publishSubscriber2;
                    } else {
                        continue;
                    }
                }
                Object innerProducer = new InnerProducer(publishSubscriber, subscriber);
                if (publishSubscriber.add(innerProducer)) {
                    subscriber.add(innerProducer);
                    subscriber.setProducer(innerProducer);
                    return;
                }
            }
        }
    }

    /* renamed from: rx.internal.operators.OperatorPublish.2 */
    static final class C12712 implements OnSubscribe<R> {
        final /* synthetic */ Func1 val$selector;
        final /* synthetic */ Observable val$source;

        /* renamed from: rx.internal.operators.OperatorPublish.2.1 */
        class C12701 implements Action1<Subscription> {
            final /* synthetic */ Subscriber val$child;

            C12701(Subscriber subscriber) {
                this.val$child = subscriber;
            }

            public void call(Subscription subscription) {
                this.val$child.add(subscription);
            }
        }

        C12712(Observable observable, Func1 func1) {
            this.val$source = observable;
            this.val$selector = func1;
        }

        public void call(Subscriber<? super R> subscriber) {
            ConnectableObservable create = OperatorPublish.create(this.val$source);
            ((Observable) this.val$selector.call(create)).unsafeSubscribe(subscriber);
            create.connect(new C12701(subscriber));
        }
    }

    static final class InnerProducer<T> extends AtomicLong implements Producer, Subscription {
        static final long NOT_REQUESTED = -4611686018427387904L;
        static final long UNSUBSCRIBED = Long.MIN_VALUE;
        private static final long serialVersionUID = -4453897557930727610L;
        final Subscriber<? super T> child;
        final PublishSubscriber<T> parent;

        public InnerProducer(PublishSubscriber<T> publishSubscriber, Subscriber<? super T> subscriber) {
            this.parent = publishSubscriber;
            this.child = subscriber;
            lazySet(NOT_REQUESTED);
        }

        public boolean isUnsubscribed() {
            return get() == UNSUBSCRIBED;
        }

        public long produced(long j) {
            if (j <= 0) {
                throw new IllegalArgumentException("Cant produce zero or less");
            }
            long j2;
            long j3;
            do {
                j3 = get();
                if (j3 == NOT_REQUESTED) {
                    throw new IllegalStateException("Produced without request");
                } else if (j3 == UNSUBSCRIBED) {
                    return UNSUBSCRIBED;
                } else {
                    j2 = j3 - j;
                    if (j2 < 0) {
                        throw new IllegalStateException("More produced (" + j + ") than requested (" + j3 + ")");
                    }
                }
            } while (!compareAndSet(j3, j2));
            return j2;
        }

        public void request(long j) {
            if (j >= 0) {
                long j2;
                long j3;
                do {
                    j2 = get();
                    if (j2 == UNSUBSCRIBED) {
                        return;
                    }
                    if (j2 >= 0 && j == 0) {
                        return;
                    }
                    if (j2 == NOT_REQUESTED) {
                        j3 = j;
                    } else {
                        j3 = j2 + j;
                        if (j3 < 0) {
                            j3 = Long.MAX_VALUE;
                        }
                    }
                } while (!compareAndSet(j2, j3));
                this.parent.dispatch();
            }
        }

        public void unsubscribe() {
            if (get() != UNSUBSCRIBED && getAndSet(UNSUBSCRIBED) != UNSUBSCRIBED) {
                this.parent.remove(this);
                this.parent.dispatch();
            }
        }
    }

    static final class PublishSubscriber<T> extends Subscriber<T> implements Subscription {
        static final InnerProducer[] EMPTY;
        static final InnerProducer[] TERMINATED;
        final AtomicReference<PublishSubscriber<T>> current;
        boolean emitting;
        boolean missed;
        final NotificationLite<T> nl;
        final AtomicReference<InnerProducer[]> producers;
        final Queue<Object> queue;
        final AtomicBoolean shouldConnect;
        volatile Object terminalEvent;

        /* renamed from: rx.internal.operators.OperatorPublish.PublishSubscriber.1 */
        class C12721 implements Action0 {
            C12721() {
            }

            public void call() {
                PublishSubscriber.this.producers.getAndSet(PublishSubscriber.TERMINATED);
                PublishSubscriber.this.current.compareAndSet(PublishSubscriber.this, null);
            }
        }

        static {
            EMPTY = new InnerProducer[0];
            TERMINATED = new InnerProducer[0];
        }

        public PublishSubscriber(AtomicReference<PublishSubscriber<T>> atomicReference) {
            this.queue = UnsafeAccess.isUnsafeAvailable() ? new SpscArrayQueue(RxRingBuffer.SIZE) : new SynchronizedQueue(RxRingBuffer.SIZE);
            this.nl = NotificationLite.instance();
            this.producers = new AtomicReference(EMPTY);
            this.current = atomicReference;
            this.shouldConnect = new AtomicBoolean();
        }

        boolean add(InnerProducer<T> innerProducer) {
            if (innerProducer == null) {
                throw new NullPointerException();
            }
            InnerProducer[] innerProducerArr;
            Object obj;
            do {
                innerProducerArr = (InnerProducer[]) this.producers.get();
                if (innerProducerArr == TERMINATED) {
                    return false;
                }
                int length = innerProducerArr.length;
                obj = new InnerProducer[(length + 1)];
                System.arraycopy(innerProducerArr, 0, obj, 0, length);
                obj[length] = innerProducer;
            } while (!this.producers.compareAndSet(innerProducerArr, obj));
            return true;
        }

        boolean checkTerminated(Object obj, boolean z) {
            int i = 0;
            if (obj != null) {
                InnerProducer[] innerProducerArr;
                if (!this.nl.isCompleted(obj)) {
                    Throwable error = this.nl.getError(obj);
                    this.current.compareAndSet(this, null);
                    try {
                        innerProducerArr = (InnerProducer[]) this.producers.getAndSet(TERMINATED);
                        int length = innerProducerArr.length;
                        while (i < length) {
                            innerProducerArr[i].child.onError(error);
                            i++;
                        }
                        return true;
                    } finally {
                        unsubscribe();
                    }
                } else if (z) {
                    this.current.compareAndSet(this, null);
                    try {
                        innerProducerArr = (InnerProducer[]) this.producers.getAndSet(TERMINATED);
                        int length2 = innerProducerArr.length;
                        while (i < length2) {
                            innerProducerArr[i].child.onCompleted();
                            i++;
                        }
                        return true;
                    } finally {
                        unsubscribe();
                    }
                }
            }
            return false;
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        void dispatch() {
            /*
            r18 = this;
            monitor-enter(r18);
            r0 = r18;
            r2 = r0.emitting;	 Catch:{ all -> 0x0059 }
            if (r2 == 0) goto L_0x000e;
        L_0x0007:
            r2 = 1;
            r0 = r18;
            r0.missed = r2;	 Catch:{ all -> 0x0059 }
            monitor-exit(r18);	 Catch:{ all -> 0x0059 }
        L_0x000d:
            return;
        L_0x000e:
            r2 = 1;
            r0 = r18;
            r0.emitting = r2;	 Catch:{ all -> 0x0059 }
            r2 = 0;
            r0 = r18;
            r0.missed = r2;	 Catch:{ all -> 0x0059 }
            monitor-exit(r18);	 Catch:{ all -> 0x0059 }
            r8 = 0;
            r6 = 0;
        L_0x001b:
            r0 = r18;
            r2 = r0.terminalEvent;	 Catch:{ all -> 0x0086 }
            r0 = r18;
            r3 = r0.queue;	 Catch:{ all -> 0x0086 }
            r7 = r3.isEmpty();	 Catch:{ all -> 0x0086 }
            r0 = r18;
            r2 = r0.checkTerminated(r2, r7);	 Catch:{ all -> 0x0086 }
            if (r2 != 0) goto L_0x000d;
        L_0x002f:
            if (r7 != 0) goto L_0x00c5;
        L_0x0031:
            r0 = r18;
            r2 = r0.producers;	 Catch:{ all -> 0x0086 }
            r2 = r2.get();	 Catch:{ all -> 0x0086 }
            r2 = (rx.internal.operators.OperatorPublish.InnerProducer[]) r2;	 Catch:{ all -> 0x0086 }
            r10 = r2.length;	 Catch:{ all -> 0x0086 }
            r4 = 9223372036854775807; // 0x7fffffffffffffff float:NaN double:NaN;
            r3 = 0;
            r11 = r2.length;	 Catch:{ all -> 0x0086 }
            r9 = 0;
        L_0x0044:
            if (r9 >= r11) goto L_0x0065;
        L_0x0046:
            r12 = r2[r9];	 Catch:{ all -> 0x0086 }
            r12 = r12.get();	 Catch:{ all -> 0x0086 }
            r14 = 0;
            r14 = (r12 > r14 ? 1 : (r12 == r14 ? 0 : -1));
            if (r14 < 0) goto L_0x005c;
        L_0x0052:
            r4 = java.lang.Math.min(r4, r12);	 Catch:{ all -> 0x0086 }
        L_0x0056:
            r9 = r9 + 1;
            goto L_0x0044;
        L_0x0059:
            r2 = move-exception;
            monitor-exit(r18);	 Catch:{ all -> 0x0059 }
            throw r2;
        L_0x005c:
            r14 = -9223372036854775808;
            r12 = (r12 > r14 ? 1 : (r12 == r14 ? 0 : -1));
            if (r12 != 0) goto L_0x0056;
        L_0x0062:
            r3 = r3 + 1;
            goto L_0x0056;
        L_0x0065:
            if (r10 != r3) goto L_0x0094;
        L_0x0067:
            r0 = r18;
            r3 = r0.terminalEvent;	 Catch:{ all -> 0x0086 }
            r0 = r18;
            r2 = r0.queue;	 Catch:{ all -> 0x0086 }
            r2 = r2.poll();	 Catch:{ all -> 0x0086 }
            if (r2 != 0) goto L_0x0092;
        L_0x0075:
            r2 = 1;
        L_0x0076:
            r0 = r18;
            r2 = r0.checkTerminated(r3, r2);	 Catch:{ all -> 0x0086 }
            if (r2 != 0) goto L_0x000d;
        L_0x007e:
            r2 = 1;
            r0 = r18;
            r0.request(r2);	 Catch:{ all -> 0x0086 }
            goto L_0x001b;
        L_0x0086:
            r2 = move-exception;
            r3 = r6;
        L_0x0088:
            if (r3 != 0) goto L_0x0091;
        L_0x008a:
            monitor-enter(r18);
            r3 = 0;
            r0 = r18;
            r0.emitting = r3;	 Catch:{ all -> 0x011c }
            monitor-exit(r18);	 Catch:{ all -> 0x011c }
        L_0x0091:
            throw r2;
        L_0x0092:
            r2 = 0;
            goto L_0x0076;
        L_0x0094:
            r3 = 0;
            r10 = r3;
            r3 = r7;
        L_0x0097:
            r12 = (long) r10;
            r7 = (r12 > r4 ? 1 : (r12 == r4 ? 0 : -1));
            if (r7 >= 0) goto L_0x00b5;
        L_0x009c:
            r0 = r18;
            r7 = r0.terminalEvent;	 Catch:{ all -> 0x0086 }
            r0 = r18;
            r3 = r0.queue;	 Catch:{ all -> 0x0086 }
            r9 = r3.poll();	 Catch:{ all -> 0x0086 }
            if (r9 != 0) goto L_0x00da;
        L_0x00aa:
            r3 = 1;
        L_0x00ab:
            r0 = r18;
            r7 = r0.checkTerminated(r7, r3);	 Catch:{ all -> 0x0086 }
            if (r7 != 0) goto L_0x000d;
        L_0x00b3:
            if (r3 == 0) goto L_0x00dc;
        L_0x00b5:
            if (r10 <= 0) goto L_0x00bd;
        L_0x00b7:
            r10 = (long) r10;	 Catch:{ all -> 0x0086 }
            r0 = r18;
            r0.request(r10);	 Catch:{ all -> 0x0086 }
        L_0x00bd:
            r10 = 0;
            r2 = (r4 > r10 ? 1 : (r4 == r10 ? 0 : -1));
            if (r2 == 0) goto L_0x00c5;
        L_0x00c3:
            if (r3 == 0) goto L_0x001b;
        L_0x00c5:
            monitor-enter(r18);	 Catch:{ all -> 0x0086 }
            r0 = r18;
            r2 = r0.missed;	 Catch:{ all -> 0x0119 }
            if (r2 != 0) goto L_0x0111;
        L_0x00cc:
            r2 = 0;
            r0 = r18;
            r0.emitting = r2;	 Catch:{ all -> 0x0119 }
            r3 = 1;
            monitor-exit(r18);	 Catch:{ all -> 0x00d5 }
            goto L_0x000d;
        L_0x00d5:
            r2 = move-exception;
        L_0x00d6:
            monitor-exit(r18);	 Catch:{ all -> 0x00d5 }
            throw r2;	 Catch:{ all -> 0x00d8 }
        L_0x00d8:
            r2 = move-exception;
            goto L_0x0088;
        L_0x00da:
            r3 = 0;
            goto L_0x00ab;
        L_0x00dc:
            r0 = r18;
            r7 = r0.nl;	 Catch:{ all -> 0x0086 }
            r11 = r7.getValue(r9);	 Catch:{ all -> 0x0086 }
            r12 = r2.length;	 Catch:{ all -> 0x0086 }
            r7 = 0;
            r9 = r7;
        L_0x00e7:
            if (r9 >= r12) goto L_0x010d;
        L_0x00e9:
            r13 = r2[r9];
            r14 = r13.get();	 Catch:{ all -> 0x0086 }
            r16 = 0;
            r7 = (r14 > r16 ? 1 : (r14 == r16 ? 0 : -1));
            if (r7 <= 0) goto L_0x00ff;
        L_0x00f5:
            r7 = r13.child;	 Catch:{ Throwable -> 0x0103 }
            r7.onNext(r11);	 Catch:{ Throwable -> 0x0103 }
            r14 = 1;
            r13.produced(r14);	 Catch:{ all -> 0x0086 }
        L_0x00ff:
            r7 = r9 + 1;
            r9 = r7;
            goto L_0x00e7;
        L_0x0103:
            r7 = move-exception;
            r13.unsubscribe();	 Catch:{ all -> 0x0086 }
            r13 = r13.child;	 Catch:{ all -> 0x0086 }
            r13.onError(r7);	 Catch:{ all -> 0x0086 }
            goto L_0x00ff;
        L_0x010d:
            r7 = r10 + 1;
            r10 = r7;
            goto L_0x0097;
        L_0x0111:
            r2 = 0;
            r0 = r18;
            r0.missed = r2;	 Catch:{ all -> 0x0119 }
            monitor-exit(r18);	 Catch:{ all -> 0x0119 }
            goto L_0x001b;
        L_0x0119:
            r2 = move-exception;
            r3 = r8;
            goto L_0x00d6;
        L_0x011c:
            r2 = move-exception;
            monitor-exit(r18);	 Catch:{ all -> 0x011c }
            throw r2;
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.internal.operators.OperatorPublish.PublishSubscriber.dispatch():void");
        }

        void init() {
            add(Subscriptions.create(new C12721()));
        }

        public void onCompleted() {
            if (this.terminalEvent == null) {
                this.terminalEvent = this.nl.completed();
                dispatch();
            }
        }

        public void onError(Throwable th) {
            if (this.terminalEvent == null) {
                this.terminalEvent = this.nl.error(th);
                dispatch();
            }
        }

        public void onNext(T t) {
            if (this.queue.offer(this.nl.next(t))) {
                dispatch();
            } else {
                onError(new MissingBackpressureException());
            }
        }

        public void onStart() {
            request((long) RxRingBuffer.SIZE);
        }

        void remove(InnerProducer<T> innerProducer) {
            InnerProducer[] innerProducerArr;
            Object obj;
            do {
                innerProducerArr = (InnerProducer[]) this.producers.get();
                if (innerProducerArr != EMPTY && innerProducerArr != TERMINATED) {
                    int i = -1;
                    int length = innerProducerArr.length;
                    for (int i2 = 0; i2 < length; i2++) {
                        if (innerProducerArr[i2].equals(innerProducer)) {
                            i = i2;
                            break;
                        }
                    }
                    if (i < 0) {
                        return;
                    }
                    if (length == 1) {
                        obj = EMPTY;
                    } else {
                        obj = new InnerProducer[(length - 1)];
                        System.arraycopy(innerProducerArr, 0, obj, 0, i);
                        System.arraycopy(innerProducerArr, i + 1, obj, i, (length - i) - 1);
                    }
                } else {
                    return;
                }
            } while (!this.producers.compareAndSet(innerProducerArr, obj));
        }
    }

    private OperatorPublish(OnSubscribe<T> onSubscribe, Observable<? extends T> observable, AtomicReference<PublishSubscriber<T>> atomicReference) {
        super(onSubscribe);
        this.source = observable;
        this.current = atomicReference;
    }

    public static <T, R> Observable<R> create(Observable<? extends T> observable, Func1<? super Observable<T>, ? extends Observable<R>> func1) {
        return Observable.create(new C12712(observable, func1));
    }

    public static <T> ConnectableObservable<T> create(Observable<? extends T> observable) {
        AtomicReference atomicReference = new AtomicReference();
        return new OperatorPublish(new C12691(atomicReference), observable, atomicReference);
    }

    public void connect(Action1<? super Subscription> action1) {
        Subscriber subscriber;
        Subscriber publishSubscriber;
        do {
            subscriber = (PublishSubscriber) this.current.get();
            if (subscriber != null && !subscriber.isUnsubscribed()) {
                break;
            }
            publishSubscriber = new PublishSubscriber(this.current);
            publishSubscriber.init();
        } while (!this.current.compareAndSet(subscriber, publishSubscriber));
        subscriber = publishSubscriber;
        boolean z = !subscriber.shouldConnect.get() && subscriber.shouldConnect.compareAndSet(false, true);
        action1.call(subscriber);
        if (z) {
            this.source.unsafeSubscribe(subscriber);
        }
    }
}
