package rx.internal.operators;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicLong;
import rx.Observable;
import rx.Observable.Operator;
import rx.Producer;
import rx.Subscriber;
import rx.exceptions.CompositeException;
import rx.internal.util.RxRingBuffer;
import rx.internal.util.ScalarSynchronousObservable;
import rx.subscriptions.CompositeSubscription;

public final class OperatorMerge<T> implements Operator<T, Observable<? extends T>> {
    final boolean delayErrors;
    final int maxConcurrent;

    private static final class HolderDelayErrors {
        static final OperatorMerge<Object> INSTANCE;

        static {
            INSTANCE = new OperatorMerge(Integer.MAX_VALUE, null);
        }

        private HolderDelayErrors() {
        }
    }

    private static final class HolderNoDelay {
        static final OperatorMerge<Object> INSTANCE;

        static {
            INSTANCE = new OperatorMerge(Integer.MAX_VALUE, null);
        }

        private HolderNoDelay() {
        }
    }

    static final class InnerSubscriber<T> extends Subscriber<T> {
        static final int limit;
        volatile boolean done;
        final long id;
        int outstanding;
        final MergeSubscriber<T> parent;
        volatile RxRingBuffer queue;

        static {
            limit = RxRingBuffer.SIZE / 4;
        }

        public InnerSubscriber(MergeSubscriber<T> mergeSubscriber, long j) {
            this.parent = mergeSubscriber;
            this.id = j;
        }

        public void onCompleted() {
            this.done = true;
            this.parent.emit();
        }

        public void onError(Throwable th) {
            this.done = true;
            this.parent.getOrCreateErrorQueue().offer(th);
            this.parent.emit();
        }

        public void onNext(T t) {
            this.parent.tryEmit(this, t);
        }

        public void onStart() {
            this.outstanding = RxRingBuffer.SIZE;
            request((long) RxRingBuffer.SIZE);
        }

        public void requestMore(long j) {
            int i = this.outstanding - ((int) j);
            if (i > limit) {
                this.outstanding = i;
                return;
            }
            this.outstanding = RxRingBuffer.SIZE;
            i = RxRingBuffer.SIZE - i;
            if (i > 0) {
                request((long) i);
            }
        }
    }

    static final class MergeProducer<T> extends AtomicLong implements Producer {
        private static final long serialVersionUID = -1214379189873595503L;
        final MergeSubscriber<T> subscriber;

        public MergeProducer(MergeSubscriber<T> mergeSubscriber) {
            this.subscriber = mergeSubscriber;
        }

        public long produced(int i) {
            return addAndGet((long) (-i));
        }

        public void request(long j) {
            if (j > 0) {
                if (get() != Long.MAX_VALUE) {
                    BackpressureUtils.getAndAddRequest(this, j);
                    this.subscriber.emit();
                }
            } else if (j < 0) {
                throw new IllegalArgumentException("n >= 0 required");
            }
        }
    }

    static final class MergeSubscriber<T> extends Subscriber<Observable<? extends T>> {
        static final InnerSubscriber<?>[] EMPTY;
        final Subscriber<? super T> child;
        final boolean delayErrors;
        volatile boolean done;
        boolean emitting;
        volatile ConcurrentLinkedQueue<Throwable> errors;
        final Object innerGuard;
        volatile InnerSubscriber<?>[] innerSubscribers;
        long lastId;
        int lastIndex;
        final int maxConcurrent;
        boolean missed;
        final NotificationLite<T> nl;
        MergeProducer<T> producer;
        volatile RxRingBuffer queue;
        volatile CompositeSubscription subscriptions;
        long uniqueId;

        static {
            EMPTY = new InnerSubscriber[0];
        }

        public MergeSubscriber(Subscriber<? super T> subscriber, boolean z, int i) {
            this.child = subscriber;
            this.delayErrors = z;
            this.maxConcurrent = i;
            this.nl = NotificationLite.instance();
            this.innerGuard = new Object();
            this.innerSubscribers = EMPTY;
            request((long) Math.min(i, RxRingBuffer.SIZE));
        }

        private void reportError() {
            Collection arrayList = new ArrayList(this.errors);
            if (arrayList.size() == 1) {
                this.child.onError((Throwable) arrayList.get(0));
            } else {
                this.child.onError(new CompositeException(arrayList));
            }
        }

        void addInner(InnerSubscriber<T> innerSubscriber) {
            getOrCreateComposite().add(innerSubscriber);
            synchronized (this.innerGuard) {
                Object obj = this.innerSubscribers;
                int length = obj.length;
                Object obj2 = new InnerSubscriber[(length + 1)];
                System.arraycopy(obj, 0, obj2, 0, length);
                obj2[length] = innerSubscriber;
                this.innerSubscribers = obj2;
            }
        }

        boolean checkTerminate() {
            if (this.child.isUnsubscribed()) {
                return true;
            }
            Queue queue = this.errors;
            if (this.delayErrors || queue == null || queue.isEmpty()) {
                return false;
            }
            try {
                reportError();
                return true;
            } finally {
                unsubscribe();
            }
        }

        void emit() {
            synchronized (this) {
                if (this.emitting) {
                    this.missed = true;
                    return;
                }
                this.emitting = true;
                emitLoop();
            }
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        void emitLoop() {
            /*
            r21 = this;
            r9 = 0;
            r8 = 0;
            r0 = r21;
            r0 = r0.child;	 Catch:{ all -> 0x008a }
            r16 = r0;
        L_0x0008:
            r2 = r21.checkTerminate();	 Catch:{ all -> 0x008a }
            if (r2 == 0) goto L_0x000f;
        L_0x000e:
            return;
        L_0x000f:
            r0 = r21;
            r11 = r0.queue;	 Catch:{ all -> 0x008a }
            r0 = r21;
            r2 = r0.producer;	 Catch:{ all -> 0x008a }
            r2 = r2.get();	 Catch:{ all -> 0x008a }
            r4 = 9223372036854775807; // 0x7fffffffffffffff float:NaN double:NaN;
            r4 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1));
            if (r4 != 0) goto L_0x0096;
        L_0x0024:
            r4 = 1;
            r15 = r4;
        L_0x0026:
            r5 = 0;
            r4 = 0;
            if (r11 == 0) goto L_0x0229;
        L_0x002a:
            r6 = 0;
            r5 = 0;
            r20 = r5;
            r5 = r6;
            r6 = r2;
            r2 = r20;
        L_0x0032:
            r12 = 0;
            r3 = (r6 > r12 ? 1 : (r6 == r12 ? 0 : -1));
            if (r3 <= 0) goto L_0x0044;
        L_0x0038:
            r2 = r11.poll();	 Catch:{ all -> 0x008a }
            r3 = r21.checkTerminate();	 Catch:{ all -> 0x008a }
            if (r3 != 0) goto L_0x000e;
        L_0x0042:
            if (r2 != 0) goto L_0x0099;
        L_0x0044:
            r10 = r2;
            if (r5 <= 0) goto L_0x0226;
        L_0x0047:
            if (r15 == 0) goto L_0x00d1;
        L_0x0049:
            r2 = 9223372036854775807; // 0x7fffffffffffffff float:NaN double:NaN;
        L_0x004e:
            r6 = 0;
            r5 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1));
            if (r5 == 0) goto L_0x0056;
        L_0x0054:
            if (r10 != 0) goto L_0x002a;
        L_0x0056:
            r0 = r21;
            r5 = r0.done;	 Catch:{ all -> 0x008a }
            r0 = r21;
            r6 = r0.queue;	 Catch:{ all -> 0x008a }
            r0 = r21;
            r0 = r0.innerSubscribers;	 Catch:{ all -> 0x008a }
            r17 = r0;
            r0 = r17;
            r0 = r0.length;	 Catch:{ all -> 0x008a }
            r18 = r0;
            if (r5 == 0) goto L_0x00df;
        L_0x006b:
            if (r6 == 0) goto L_0x0073;
        L_0x006d:
            r5 = r6.isEmpty();	 Catch:{ all -> 0x008a }
            if (r5 == 0) goto L_0x00df;
        L_0x0073:
            if (r18 != 0) goto L_0x00df;
        L_0x0075:
            r0 = r21;
            r2 = r0.errors;	 Catch:{ all -> 0x008a }
            if (r2 == 0) goto L_0x0081;
        L_0x007b:
            r2 = r2.isEmpty();	 Catch:{ all -> 0x008a }
            if (r2 == 0) goto L_0x00db;
        L_0x0081:
            r16.onCompleted();	 Catch:{ all -> 0x008a }
        L_0x0084:
            if (r6 == 0) goto L_0x000e;
        L_0x0086:
            r6.release();	 Catch:{ all -> 0x008a }
            goto L_0x000e;
        L_0x008a:
            r2 = move-exception;
            r3 = r8;
        L_0x008c:
            if (r3 != 0) goto L_0x0095;
        L_0x008e:
            monitor-enter(r21);
            r3 = 0;
            r0 = r21;
            r0.emitting = r3;	 Catch:{ all -> 0x020a }
            monitor-exit(r21);	 Catch:{ all -> 0x020a }
        L_0x0095:
            throw r2;
        L_0x0096:
            r4 = 0;
            r15 = r4;
            goto L_0x0026;
        L_0x0099:
            r0 = r21;
            r3 = r0.nl;	 Catch:{ all -> 0x008a }
            r3 = r3.getValue(r2);	 Catch:{ all -> 0x008a }
            r0 = r16;
            r0.onNext(r3);	 Catch:{ Throwable -> 0x00b2 }
        L_0x00a6:
            r3 = r4 + 1;
            r10 = r5 + 1;
            r4 = 1;
            r4 = r6 - r4;
            r6 = r4;
            r4 = r3;
            r5 = r10;
            goto L_0x0032;
        L_0x00b2:
            r10 = move-exception;
            r0 = r21;
            r3 = r0.delayErrors;	 Catch:{ all -> 0x008a }
            if (r3 != 0) goto L_0x00c9;
        L_0x00b9:
            rx.exceptions.Exceptions.throwIfFatal(r10);	 Catch:{ all -> 0x008a }
            r3 = 1;
            r21.unsubscribe();	 Catch:{ all -> 0x00c7 }
            r0 = r16;
            r0.onError(r10);	 Catch:{ all -> 0x00c7 }
            goto L_0x000e;
        L_0x00c7:
            r2 = move-exception;
            goto L_0x008c;
        L_0x00c9:
            r3 = r21.getOrCreateErrorQueue();	 Catch:{ all -> 0x008a }
            r3.offer(r10);	 Catch:{ all -> 0x008a }
            goto L_0x00a6;
        L_0x00d1:
            r0 = r21;
            r2 = r0.producer;	 Catch:{ all -> 0x008a }
            r2 = r2.produced(r5);	 Catch:{ all -> 0x008a }
            goto L_0x004e;
        L_0x00db:
            r21.reportError();	 Catch:{ all -> 0x008a }
            goto L_0x0084;
        L_0x00df:
            r5 = 0;
            r7 = 0;
            if (r18 <= 0) goto L_0x0222;
        L_0x00e3:
            r0 = r21;
            r10 = r0.lastId;	 Catch:{ all -> 0x008a }
            r0 = r21;
            r5 = r0.lastIndex;	 Catch:{ all -> 0x008a }
            r0 = r18;
            if (r0 <= r5) goto L_0x00f7;
        L_0x00ef:
            r6 = r17[r5];	 Catch:{ all -> 0x008a }
            r12 = r6.id;	 Catch:{ all -> 0x008a }
            r6 = (r12 > r10 ? 1 : (r12 == r10 ? 0 : -1));
            if (r6 == 0) goto L_0x0115;
        L_0x00f7:
            r0 = r18;
            if (r0 > r5) goto L_0x00fc;
        L_0x00fb:
            r5 = 0;
        L_0x00fc:
            r6 = 0;
        L_0x00fd:
            r0 = r18;
            if (r6 >= r0) goto L_0x0109;
        L_0x0101:
            r12 = r17[r5];	 Catch:{ all -> 0x008a }
            r12 = r12.id;	 Catch:{ all -> 0x008a }
            r12 = (r12 > r10 ? 1 : (r12 == r10 ? 0 : -1));
            if (r12 != 0) goto L_0x01ac;
        L_0x0109:
            r0 = r21;
            r0.lastIndex = r5;	 Catch:{ all -> 0x008a }
            r6 = r17[r5];	 Catch:{ all -> 0x008a }
            r10 = r6.id;	 Catch:{ all -> 0x008a }
            r0 = r21;
            r0.lastId = r10;	 Catch:{ all -> 0x008a }
        L_0x0115:
            r6 = 0;
            r10 = r5;
            r11 = r6;
            r6 = r4;
            r4 = r2;
        L_0x011a:
            r0 = r18;
            if (r11 >= r0) goto L_0x020d;
        L_0x011e:
            r2 = r21.checkTerminate();	 Catch:{ all -> 0x008a }
            if (r2 != 0) goto L_0x000e;
        L_0x0124:
            r19 = r17[r10];
            r2 = 0;
        L_0x0127:
            r3 = 0;
            r12 = r4;
            r14 = r3;
        L_0x012a:
            r4 = 0;
            r3 = (r12 > r4 ? 1 : (r12 == r4 ? 0 : -1));
            if (r3 <= 0) goto L_0x0215;
        L_0x0130:
            r3 = r21.checkTerminate();	 Catch:{ all -> 0x008a }
            if (r3 != 0) goto L_0x000e;
        L_0x0136:
            r0 = r19;
            r3 = r0.queue;	 Catch:{ all -> 0x008a }
            if (r3 != 0) goto L_0x01b7;
        L_0x013c:
            r4 = r2;
        L_0x013d:
            if (r14 <= 0) goto L_0x021f;
        L_0x013f:
            if (r15 != 0) goto L_0x01e8;
        L_0x0141:
            r0 = r21;
            r2 = r0.producer;	 Catch:{ all -> 0x008a }
            r2 = r2.produced(r14);	 Catch:{ all -> 0x008a }
        L_0x0149:
            r12 = (long) r14;	 Catch:{ all -> 0x008a }
            r0 = r19;
            r0.requestMore(r12);	 Catch:{ all -> 0x008a }
        L_0x014f:
            r12 = 0;
            r5 = (r2 > r12 ? 1 : (r2 == r12 ? 0 : -1));
            if (r5 == 0) goto L_0x0157;
        L_0x0155:
            if (r4 != 0) goto L_0x0218;
        L_0x0157:
            r0 = r19;
            r4 = r0.done;	 Catch:{ all -> 0x008a }
            r0 = r19;
            r5 = r0.queue;	 Catch:{ all -> 0x008a }
            if (r4 == 0) goto L_0x0211;
        L_0x0161:
            if (r5 == 0) goto L_0x0169;
        L_0x0163:
            r4 = r5.isEmpty();	 Catch:{ all -> 0x008a }
            if (r4 == 0) goto L_0x0211;
        L_0x0169:
            r0 = r21;
            r1 = r19;
            r0.removeInner(r1);	 Catch:{ all -> 0x008a }
            r4 = r21.checkTerminate();	 Catch:{ all -> 0x008a }
            if (r4 != 0) goto L_0x000e;
        L_0x0176:
            r6 = r6 + 1;
            r7 = 1;
            r4 = r6;
            r5 = r7;
        L_0x017b:
            r6 = 0;
            r6 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1));
            if (r6 != 0) goto L_0x01ef;
        L_0x0181:
            r2 = r4;
            r3 = r5;
        L_0x0183:
            r0 = r21;
            r0.lastIndex = r10;	 Catch:{ all -> 0x008a }
            r4 = r17[r10];	 Catch:{ all -> 0x008a }
            r4 = r4.id;	 Catch:{ all -> 0x008a }
            r0 = r21;
            r0.lastId = r4;	 Catch:{ all -> 0x008a }
        L_0x018f:
            if (r2 <= 0) goto L_0x0197;
        L_0x0191:
            r4 = (long) r2;	 Catch:{ all -> 0x008a }
            r0 = r21;
            r0.request(r4);	 Catch:{ all -> 0x008a }
        L_0x0197:
            if (r3 != 0) goto L_0x0008;
        L_0x0199:
            monitor-enter(r21);	 Catch:{ all -> 0x008a }
            r0 = r21;
            r2 = r0.missed;	 Catch:{ all -> 0x0207 }
            if (r2 != 0) goto L_0x01ff;
        L_0x01a0:
            r3 = 1;
            r2 = 0;
            r0 = r21;
            r0.emitting = r2;	 Catch:{ all -> 0x01a9 }
            monitor-exit(r21);	 Catch:{ all -> 0x01a9 }
            goto L_0x000e;
        L_0x01a9:
            r2 = move-exception;
        L_0x01aa:
            monitor-exit(r21);	 Catch:{ all -> 0x01a9 }
            throw r2;	 Catch:{ all -> 0x00c7 }
        L_0x01ac:
            r5 = r5 + 1;
            r0 = r18;
            if (r5 != r0) goto L_0x01b3;
        L_0x01b2:
            r5 = 0;
        L_0x01b3:
            r6 = r6 + 1;
            goto L_0x00fd;
        L_0x01b7:
            r2 = r3.poll();	 Catch:{ all -> 0x008a }
            if (r2 == 0) goto L_0x0215;
        L_0x01bd:
            r0 = r21;
            r3 = r0.nl;	 Catch:{ all -> 0x008a }
            r3 = r3.getValue(r2);	 Catch:{ all -> 0x008a }
            r0 = r16;
            r0.onNext(r3);	 Catch:{ Throwable -> 0x01d4 }
            r4 = 1;
            r4 = r12 - r4;
            r3 = r14 + 1;
            r12 = r4;
            r14 = r3;
            goto L_0x012a;
        L_0x01d4:
            r2 = move-exception;
            r3 = 1;
            rx.exceptions.Exceptions.throwIfFatal(r2);	 Catch:{ all -> 0x00c7 }
            r0 = r16;
            r0.onError(r2);	 Catch:{ all -> 0x01e3 }
            r21.unsubscribe();	 Catch:{ all -> 0x00c7 }
            goto L_0x000e;
        L_0x01e3:
            r2 = move-exception;
            r21.unsubscribe();	 Catch:{ all -> 0x00c7 }
            throw r2;	 Catch:{ all -> 0x00c7 }
        L_0x01e8:
            r2 = 9223372036854775807; // 0x7fffffffffffffff float:NaN double:NaN;
            goto L_0x0149;
        L_0x01ef:
            r6 = r10 + 1;
            r0 = r18;
            if (r6 != r0) goto L_0x01f6;
        L_0x01f5:
            r6 = 0;
        L_0x01f6:
            r7 = r11 + 1;
            r10 = r6;
            r11 = r7;
            r7 = r5;
            r6 = r4;
            r4 = r2;
            goto L_0x011a;
        L_0x01ff:
            r2 = 0;
            r0 = r21;
            r0.missed = r2;	 Catch:{ all -> 0x0207 }
            monitor-exit(r21);	 Catch:{ all -> 0x0207 }
            goto L_0x0008;
        L_0x0207:
            r2 = move-exception;
            r3 = r9;
            goto L_0x01aa;
        L_0x020a:
            r2 = move-exception;
            monitor-exit(r21);	 Catch:{ all -> 0x020a }
            throw r2;
        L_0x020d:
            r2 = r6;
            r3 = r7;
            goto L_0x0183;
        L_0x0211:
            r4 = r6;
            r5 = r7;
            goto L_0x017b;
        L_0x0215:
            r4 = r2;
            goto L_0x013d;
        L_0x0218:
            r20 = r4;
            r4 = r2;
            r2 = r20;
            goto L_0x0127;
        L_0x021f:
            r2 = r12;
            goto L_0x014f;
        L_0x0222:
            r2 = r4;
            r3 = r5;
            goto L_0x018f;
        L_0x0226:
            r2 = r6;
            goto L_0x004e;
        L_0x0229:
            r4 = r5;
            goto L_0x0056;
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.internal.operators.OperatorMerge.MergeSubscriber.emitLoop():void");
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        protected void emitScalar(T r7, long r8) {
            /*
            r6 = this;
            r2 = 1;
            r1 = 0;
            r0 = r6.child;	 Catch:{ Throwable -> 0x0025 }
            r0.onNext(r7);	 Catch:{ Throwable -> 0x0025 }
        L_0x0007:
            r4 = 9223372036854775807; // 0x7fffffffffffffff float:NaN double:NaN;
            r0 = (r8 > r4 ? 1 : (r8 == r4 ? 0 : -1));
            if (r0 == 0) goto L_0x0016;
        L_0x0010:
            r0 = r6.producer;	 Catch:{ all -> 0x0046 }
            r3 = 1;
            r0.produced(r3);	 Catch:{ all -> 0x0046 }
        L_0x0016:
            r4 = 1;
            r6.requestMore(r4);	 Catch:{ all -> 0x0046 }
            monitor-enter(r6);	 Catch:{ all -> 0x0046 }
            r0 = r6.missed;	 Catch:{ all -> 0x0050 }
            if (r0 != 0) goto L_0x0048;
        L_0x0020:
            r0 = 0;
            r6.emitting = r0;	 Catch:{ all -> 0x0050 }
            monitor-exit(r6);	 Catch:{ all -> 0x0050 }
        L_0x0024:
            return;
        L_0x0025:
            r0 = move-exception;
            r3 = r6.delayErrors;	 Catch:{ all -> 0x0046 }
            if (r3 != 0) goto L_0x003e;
        L_0x002a:
            rx.exceptions.Exceptions.throwIfFatal(r0);	 Catch:{ all -> 0x0046 }
            r6.unsubscribe();	 Catch:{ all -> 0x0034 }
            r6.onError(r0);	 Catch:{ all -> 0x0034 }
            goto L_0x0024;
        L_0x0034:
            r0 = move-exception;
            r1 = r2;
        L_0x0036:
            if (r1 != 0) goto L_0x003d;
        L_0x0038:
            monitor-enter(r6);
            r1 = 0;
            r6.emitting = r1;	 Catch:{ all -> 0x0053 }
            monitor-exit(r6);	 Catch:{ all -> 0x0053 }
        L_0x003d:
            throw r0;
        L_0x003e:
            r3 = r6.getOrCreateErrorQueue();	 Catch:{ all -> 0x0046 }
            r3.offer(r0);	 Catch:{ all -> 0x0046 }
            goto L_0x0007;
        L_0x0046:
            r0 = move-exception;
            goto L_0x0036;
        L_0x0048:
            r0 = 0;
            r6.missed = r0;	 Catch:{ all -> 0x0050 }
            monitor-exit(r6);	 Catch:{ all -> 0x0050 }
            r6.emitLoop();
            goto L_0x0024;
        L_0x0050:
            r0 = move-exception;
            monitor-exit(r6);	 Catch:{ all -> 0x0050 }
            throw r0;	 Catch:{ all -> 0x0034 }
        L_0x0053:
            r0 = move-exception;
            monitor-exit(r6);	 Catch:{ all -> 0x0053 }
            throw r0;
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.internal.operators.OperatorMerge.MergeSubscriber.emitScalar(java.lang.Object, long):void");
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        protected void emitScalar(rx.internal.operators.OperatorMerge.InnerSubscriber<T> r8, T r9, long r10) {
            /*
            r7 = this;
            r2 = 1;
            r1 = 0;
            r0 = r7.child;	 Catch:{ Throwable -> 0x0025 }
            r0.onNext(r9);	 Catch:{ Throwable -> 0x0025 }
        L_0x0007:
            r4 = 9223372036854775807; // 0x7fffffffffffffff float:NaN double:NaN;
            r0 = (r10 > r4 ? 1 : (r10 == r4 ? 0 : -1));
            if (r0 == 0) goto L_0x0016;
        L_0x0010:
            r0 = r7.producer;	 Catch:{ all -> 0x0046 }
            r3 = 1;
            r0.produced(r3);	 Catch:{ all -> 0x0046 }
        L_0x0016:
            r4 = 1;
            r8.requestMore(r4);	 Catch:{ all -> 0x0046 }
            monitor-enter(r7);	 Catch:{ all -> 0x0046 }
            r0 = r7.missed;	 Catch:{ all -> 0x0050 }
            if (r0 != 0) goto L_0x0048;
        L_0x0020:
            r0 = 0;
            r7.emitting = r0;	 Catch:{ all -> 0x0050 }
            monitor-exit(r7);	 Catch:{ all -> 0x0050 }
        L_0x0024:
            return;
        L_0x0025:
            r0 = move-exception;
            r3 = r7.delayErrors;	 Catch:{ all -> 0x0046 }
            if (r3 != 0) goto L_0x003e;
        L_0x002a:
            rx.exceptions.Exceptions.throwIfFatal(r0);	 Catch:{ all -> 0x0046 }
            r8.unsubscribe();	 Catch:{ all -> 0x0034 }
            r8.onError(r0);	 Catch:{ all -> 0x0034 }
            goto L_0x0024;
        L_0x0034:
            r0 = move-exception;
            r1 = r2;
        L_0x0036:
            if (r1 != 0) goto L_0x003d;
        L_0x0038:
            monitor-enter(r7);
            r1 = 0;
            r7.emitting = r1;	 Catch:{ all -> 0x0053 }
            monitor-exit(r7);	 Catch:{ all -> 0x0053 }
        L_0x003d:
            throw r0;
        L_0x003e:
            r3 = r7.getOrCreateErrorQueue();	 Catch:{ all -> 0x0046 }
            r3.offer(r0);	 Catch:{ all -> 0x0046 }
            goto L_0x0007;
        L_0x0046:
            r0 = move-exception;
            goto L_0x0036;
        L_0x0048:
            r0 = 0;
            r7.missed = r0;	 Catch:{ all -> 0x0050 }
            monitor-exit(r7);	 Catch:{ all -> 0x0050 }
            r7.emitLoop();
            goto L_0x0024;
        L_0x0050:
            r0 = move-exception;
            monitor-exit(r7);	 Catch:{ all -> 0x0050 }
            throw r0;	 Catch:{ all -> 0x0034 }
        L_0x0053:
            r0 = move-exception;
            monitor-exit(r7);	 Catch:{ all -> 0x0053 }
            throw r0;
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.internal.operators.OperatorMerge.MergeSubscriber.emitScalar(rx.internal.operators.OperatorMerge$InnerSubscriber, java.lang.Object, long):void");
        }

        CompositeSubscription getOrCreateComposite() {
            Throwable th;
            CompositeSubscription compositeSubscription = this.subscriptions;
            if (compositeSubscription == null) {
                Object obj = null;
                synchronized (this) {
                    compositeSubscription = this.subscriptions;
                    if (compositeSubscription == null) {
                        compositeSubscription = new CompositeSubscription();
                        try {
                            this.subscriptions = compositeSubscription;
                            obj = 1;
                        } catch (Throwable th2) {
                            th = th2;
                            throw th;
                        }
                    }
                    try {
                        if (obj != null) {
                            add(compositeSubscription);
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        throw th;
                    }
                }
            }
            return compositeSubscription;
        }

        Queue<Throwable> getOrCreateErrorQueue() {
            Queue<Throwable> queue = this.errors;
            if (queue == null) {
                synchronized (this) {
                    try {
                        queue = this.errors;
                        if (queue == null) {
                            queue = new ConcurrentLinkedQueue();
                            this.errors = queue;
                        }
                    } catch (Throwable th) {
                        th = th;
                        throw th;
                    }
                }
            }
            return queue;
        }

        public void onCompleted() {
            this.done = true;
            emit();
        }

        public void onError(Throwable th) {
            getOrCreateErrorQueue().offer(th);
            this.done = true;
            emit();
        }

        public void onNext(Observable<? extends T> observable) {
            if (observable != null) {
                if (observable instanceof ScalarSynchronousObservable) {
                    tryEmit(((ScalarSynchronousObservable) observable).get());
                    return;
                }
                long j = this.uniqueId;
                this.uniqueId = 1 + j;
                Subscriber innerSubscriber = new InnerSubscriber(this, j);
                addInner(innerSubscriber);
                observable.unsafeSubscribe(innerSubscriber);
                emit();
            }
        }

        protected void queueScalar(T t) {
            RxRingBuffer rxRingBuffer = this.queue;
            if (rxRingBuffer == null) {
                rxRingBuffer = RxRingBuffer.getSpscInstance();
                add(rxRingBuffer);
                this.queue = rxRingBuffer;
            }
            try {
                rxRingBuffer.onNext(this.nl.next(t));
                emit();
            } catch (Throwable e) {
                unsubscribe();
                onError(e);
            } catch (Throwable e2) {
                if (!isUnsubscribed()) {
                    unsubscribe();
                    onError(e2);
                }
            }
        }

        protected void queueScalar(InnerSubscriber<T> innerSubscriber, T t) {
            RxRingBuffer rxRingBuffer = innerSubscriber.queue;
            if (rxRingBuffer == null) {
                rxRingBuffer = RxRingBuffer.getSpscInstance();
                innerSubscriber.add(rxRingBuffer);
                innerSubscriber.queue = rxRingBuffer;
            }
            try {
                rxRingBuffer.onNext(this.nl.next(t));
                emit();
            } catch (Throwable e) {
                innerSubscriber.unsubscribe();
                innerSubscriber.onError(e);
            } catch (Throwable e2) {
                if (!innerSubscriber.isUnsubscribed()) {
                    innerSubscriber.unsubscribe();
                    innerSubscriber.onError(e2);
                }
            }
        }

        void removeInner(InnerSubscriber<T> innerSubscriber) {
            int i = 0;
            RxRingBuffer rxRingBuffer = innerSubscriber.queue;
            if (rxRingBuffer != null) {
                rxRingBuffer.release();
            }
            this.subscriptions.remove(innerSubscriber);
            synchronized (this.innerGuard) {
                Object obj = this.innerSubscribers;
                int length = obj.length;
                while (i < length) {
                    if (innerSubscriber.equals(obj[i])) {
                        break;
                    }
                    i++;
                }
                i = -1;
                if (i < 0) {
                } else if (length == 1) {
                    this.innerSubscribers = EMPTY;
                } else {
                    Object obj2 = new InnerSubscriber[(length - 1)];
                    System.arraycopy(obj, 0, obj2, 0, i);
                    System.arraycopy(obj, i + 1, obj2, i, (length - i) - 1);
                    this.innerSubscribers = obj2;
                }
            }
        }

        public void requestMore(long j) {
            request(j);
        }

        void tryEmit(T t) {
            Object obj = null;
            long j = this.producer.get();
            if (j != 0) {
                synchronized (this) {
                    if (!this.emitting) {
                        this.emitting = true;
                        obj = 1;
                    }
                }
            }
            if (obj != null) {
                emitScalar(t, j);
            } else {
                queueScalar(t);
            }
        }

        void tryEmit(InnerSubscriber<T> innerSubscriber, T t) {
            Object obj = null;
            long j = this.producer.get();
            if (j != 0) {
                synchronized (this) {
                    if (!this.emitting) {
                        this.emitting = true;
                        obj = 1;
                    }
                }
            }
            if (obj != null) {
                emitScalar(innerSubscriber, t, j);
            } else {
                queueScalar(innerSubscriber, t);
            }
        }
    }

    private OperatorMerge(boolean z, int i) {
        this.delayErrors = z;
        this.maxConcurrent = i;
    }

    public static <T> OperatorMerge<T> instance(boolean z) {
        return z ? HolderDelayErrors.INSTANCE : HolderNoDelay.INSTANCE;
    }

    public static <T> OperatorMerge<T> instance(boolean z, int i) {
        return i == Integer.MAX_VALUE ? instance(z) : new OperatorMerge(z, i);
    }

    public Subscriber<Observable<? extends T>> call(Subscriber<? super T> subscriber) {
        Object mergeSubscriber = new MergeSubscriber(subscriber, this.delayErrors, this.maxConcurrent);
        Producer mergeProducer = new MergeProducer(mergeSubscriber);
        mergeSubscriber.producer = mergeProducer;
        subscriber.add(mergeSubscriber);
        subscriber.setProducer(mergeProducer);
        return mergeSubscriber;
    }
}
