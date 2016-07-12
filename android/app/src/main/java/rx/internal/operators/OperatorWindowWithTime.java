package rx.internal.operators;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import rx.Observable;
import rx.Observable.Operator;
import rx.Observer;
import rx.Scheduler;
import rx.Scheduler.Worker;
import rx.Subscriber;
import rx.Subscription;
import rx.functions.Action0;
import rx.observers.SerializedObserver;
import rx.observers.SerializedSubscriber;
import rx.subscriptions.Subscriptions;

public final class OperatorWindowWithTime<T> implements Operator<Observable<T>, T> {
    static final Object NEXT_SUBJECT;
    static final NotificationLite<Object> nl;
    final Scheduler scheduler;
    final int size;
    final long timeshift;
    final long timespan;
    final TimeUnit unit;

    static final class CountedSerializedSubject<T> {
        final Observer<T> consumer;
        int count;
        final Observable<T> producer;

        public CountedSerializedSubject(Observer<T> observer, Observable<T> observable) {
            this.consumer = new SerializedObserver(observer);
            this.producer = observable;
        }
    }

    final class ExactSubscriber extends Subscriber<T> {
        final Subscriber<? super Observable<T>> child;
        boolean emitting;
        final Object guard;
        List<Object> queue;
        volatile State<T> state;
        final Worker worker;

        /* renamed from: rx.internal.operators.OperatorWindowWithTime.ExactSubscriber.1 */
        class C13381 implements Action0 {
            final /* synthetic */ OperatorWindowWithTime val$this$0;

            C13381(OperatorWindowWithTime operatorWindowWithTime) {
                this.val$this$0 = operatorWindowWithTime;
            }

            public void call() {
                if (ExactSubscriber.this.state.consumer == null) {
                    ExactSubscriber.this.unsubscribe();
                }
            }
        }

        /* renamed from: rx.internal.operators.OperatorWindowWithTime.ExactSubscriber.2 */
        class C13392 implements Action0 {
            C13392() {
            }

            public void call() {
                ExactSubscriber.this.nextWindow();
            }
        }

        public ExactSubscriber(Subscriber<? super Observable<T>> subscriber, Worker worker) {
            this.child = new SerializedSubscriber(subscriber);
            this.worker = worker;
            this.guard = new Object();
            this.state = State.empty();
            subscriber.add(Subscriptions.create(new C13381(OperatorWindowWithTime.this)));
        }

        void complete() {
            Observer observer = this.state.consumer;
            this.state = this.state.clear();
            if (observer != null) {
                observer.onCompleted();
            }
            this.child.onCompleted();
            unsubscribe();
        }

        boolean drain(List<Object> list) {
            if (list == null) {
                return true;
            }
            for (Object next : list) {
                if (next == OperatorWindowWithTime.NEXT_SUBJECT) {
                    if (!replaceSubject()) {
                        return false;
                    }
                } else if (OperatorWindowWithTime.nl.isError(next)) {
                    error(OperatorWindowWithTime.nl.getError(next));
                    return true;
                } else if (OperatorWindowWithTime.nl.isCompleted(next)) {
                    complete();
                    return true;
                } else if (!emitValue(next)) {
                    return false;
                }
            }
            return true;
        }

        boolean emitValue(T t) {
            State state = this.state;
            if (state.consumer == null) {
                if (!replaceSubject()) {
                    return false;
                }
                state = this.state;
            }
            state.consumer.onNext(t);
            if (state.count == OperatorWindowWithTime.this.size - 1) {
                state.consumer.onCompleted();
                state = state.clear();
            } else {
                state = state.next();
            }
            this.state = state;
            return true;
        }

        void error(Throwable th) {
            Observer observer = this.state.consumer;
            this.state = this.state.clear();
            if (observer != null) {
                observer.onError(th);
            }
            this.child.onError(th);
            unsubscribe();
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        void nextWindow() {
            /*
            r5 = this;
            r1 = 1;
            r2 = 0;
            r3 = r5.guard;
            monitor-enter(r3);
            r0 = r5.emitting;	 Catch:{ all -> 0x0032 }
            if (r0 == 0) goto L_0x001d;
        L_0x0009:
            r0 = r5.queue;	 Catch:{ all -> 0x0032 }
            if (r0 != 0) goto L_0x0014;
        L_0x000d:
            r0 = new java.util.ArrayList;	 Catch:{ all -> 0x0032 }
            r0.<init>();	 Catch:{ all -> 0x0032 }
            r5.queue = r0;	 Catch:{ all -> 0x0032 }
        L_0x0014:
            r0 = r5.queue;	 Catch:{ all -> 0x0032 }
            r1 = rx.internal.operators.OperatorWindowWithTime.NEXT_SUBJECT;	 Catch:{ all -> 0x0032 }
            r0.add(r1);	 Catch:{ all -> 0x0032 }
            monitor-exit(r3);	 Catch:{ all -> 0x0032 }
        L_0x001c:
            return;
        L_0x001d:
            r0 = 1;
            r5.emitting = r0;	 Catch:{ all -> 0x0032 }
            monitor-exit(r3);	 Catch:{ all -> 0x0032 }
            r0 = r5.replaceSubject();	 Catch:{ all -> 0x0068 }
            if (r0 != 0) goto L_0x0035;
        L_0x0027:
            r1 = r5.guard;
            monitor-enter(r1);
            r0 = 0;
            r5.emitting = r0;	 Catch:{ all -> 0x002f }
            monitor-exit(r1);	 Catch:{ all -> 0x002f }
            goto L_0x001c;
        L_0x002f:
            r0 = move-exception;
            monitor-exit(r1);	 Catch:{ all -> 0x002f }
            throw r0;
        L_0x0032:
            r0 = move-exception;
            monitor-exit(r3);	 Catch:{ all -> 0x0032 }
            throw r0;
        L_0x0035:
            r3 = r5.guard;	 Catch:{ all -> 0x0068 }
            monitor-enter(r3);	 Catch:{ all -> 0x0068 }
            r0 = r5.queue;	 Catch:{ all -> 0x006a }
            if (r0 != 0) goto L_0x0050;
        L_0x003c:
            r0 = 0;
            r5.emitting = r0;	 Catch:{ all -> 0x006a }
            monitor-exit(r3);	 Catch:{ all -> 0x0041 }
            goto L_0x001c;
        L_0x0041:
            r0 = move-exception;
        L_0x0042:
            monitor-exit(r3);	 Catch:{ all -> 0x0041 }
            throw r0;	 Catch:{ all -> 0x0044 }
        L_0x0044:
            r0 = move-exception;
            r2 = r1;
        L_0x0046:
            if (r2 != 0) goto L_0x004f;
        L_0x0048:
            r1 = r5.guard;
            monitor-enter(r1);
            r2 = 0;
            r5.emitting = r2;	 Catch:{ all -> 0x0065 }
            monitor-exit(r1);	 Catch:{ all -> 0x0065 }
        L_0x004f:
            throw r0;
        L_0x0050:
            r4 = 0;
            r5.queue = r4;	 Catch:{ all -> 0x006a }
            monitor-exit(r3);	 Catch:{ all -> 0x006a }
            r0 = r5.drain(r0);	 Catch:{ all -> 0x0068 }
            if (r0 != 0) goto L_0x0035;
        L_0x005a:
            r1 = r5.guard;
            monitor-enter(r1);
            r0 = 0;
            r5.emitting = r0;	 Catch:{ all -> 0x0062 }
            monitor-exit(r1);	 Catch:{ all -> 0x0062 }
            goto L_0x001c;
        L_0x0062:
            r0 = move-exception;
            monitor-exit(r1);	 Catch:{ all -> 0x0062 }
            throw r0;
        L_0x0065:
            r0 = move-exception;
            monitor-exit(r1);	 Catch:{ all -> 0x0065 }
            throw r0;
        L_0x0068:
            r0 = move-exception;
            goto L_0x0046;
        L_0x006a:
            r0 = move-exception;
            r1 = r2;
            goto L_0x0042;
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.internal.operators.OperatorWindowWithTime.ExactSubscriber.nextWindow():void");
        }

        public void onCompleted() {
            synchronized (this.guard) {
                if (this.emitting) {
                    if (this.queue == null) {
                        this.queue = new ArrayList();
                    }
                    this.queue.add(OperatorWindowWithTime.nl.completed());
                    return;
                }
                List list = this.queue;
                this.queue = null;
                this.emitting = true;
                try {
                    drain(list);
                    complete();
                } catch (Throwable th) {
                    error(th);
                }
            }
        }

        public void onError(Throwable th) {
            synchronized (this.guard) {
                if (this.emitting) {
                    this.queue = Collections.singletonList(OperatorWindowWithTime.nl.error(th));
                    return;
                }
                this.queue = null;
                this.emitting = true;
                error(th);
            }
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void onNext(T r6) {
            /*
            r5 = this;
            r1 = 1;
            r2 = 0;
            r3 = r5.guard;
            monitor-enter(r3);
            r0 = r5.emitting;	 Catch:{ all -> 0x0030 }
            if (r0 == 0) goto L_0x001b;
        L_0x0009:
            r0 = r5.queue;	 Catch:{ all -> 0x0030 }
            if (r0 != 0) goto L_0x0014;
        L_0x000d:
            r0 = new java.util.ArrayList;	 Catch:{ all -> 0x0030 }
            r0.<init>();	 Catch:{ all -> 0x0030 }
            r5.queue = r0;	 Catch:{ all -> 0x0030 }
        L_0x0014:
            r0 = r5.queue;	 Catch:{ all -> 0x0030 }
            r0.add(r6);	 Catch:{ all -> 0x0030 }
            monitor-exit(r3);	 Catch:{ all -> 0x0030 }
        L_0x001a:
            return;
        L_0x001b:
            r0 = 1;
            r5.emitting = r0;	 Catch:{ all -> 0x0030 }
            monitor-exit(r3);	 Catch:{ all -> 0x0030 }
            r0 = r5.emitValue(r6);	 Catch:{ all -> 0x0066 }
            if (r0 != 0) goto L_0x0033;
        L_0x0025:
            r1 = r5.guard;
            monitor-enter(r1);
            r0 = 0;
            r5.emitting = r0;	 Catch:{ all -> 0x002d }
            monitor-exit(r1);	 Catch:{ all -> 0x002d }
            goto L_0x001a;
        L_0x002d:
            r0 = move-exception;
            monitor-exit(r1);	 Catch:{ all -> 0x002d }
            throw r0;
        L_0x0030:
            r0 = move-exception;
            monitor-exit(r3);	 Catch:{ all -> 0x0030 }
            throw r0;
        L_0x0033:
            r3 = r5.guard;	 Catch:{ all -> 0x0066 }
            monitor-enter(r3);	 Catch:{ all -> 0x0066 }
            r0 = r5.queue;	 Catch:{ all -> 0x0068 }
            if (r0 != 0) goto L_0x004e;
        L_0x003a:
            r0 = 0;
            r5.emitting = r0;	 Catch:{ all -> 0x0068 }
            monitor-exit(r3);	 Catch:{ all -> 0x003f }
            goto L_0x001a;
        L_0x003f:
            r0 = move-exception;
        L_0x0040:
            monitor-exit(r3);	 Catch:{ all -> 0x003f }
            throw r0;	 Catch:{ all -> 0x0042 }
        L_0x0042:
            r0 = move-exception;
            r2 = r1;
        L_0x0044:
            if (r2 != 0) goto L_0x004d;
        L_0x0046:
            r1 = r5.guard;
            monitor-enter(r1);
            r2 = 0;
            r5.emitting = r2;	 Catch:{ all -> 0x0063 }
            monitor-exit(r1);	 Catch:{ all -> 0x0063 }
        L_0x004d:
            throw r0;
        L_0x004e:
            r4 = 0;
            r5.queue = r4;	 Catch:{ all -> 0x0068 }
            monitor-exit(r3);	 Catch:{ all -> 0x0068 }
            r0 = r5.drain(r0);	 Catch:{ all -> 0x0066 }
            if (r0 != 0) goto L_0x0033;
        L_0x0058:
            r1 = r5.guard;
            monitor-enter(r1);
            r0 = 0;
            r5.emitting = r0;	 Catch:{ all -> 0x0060 }
            monitor-exit(r1);	 Catch:{ all -> 0x0060 }
            goto L_0x001a;
        L_0x0060:
            r0 = move-exception;
            monitor-exit(r1);	 Catch:{ all -> 0x0060 }
            throw r0;
        L_0x0063:
            r0 = move-exception;
            monitor-exit(r1);	 Catch:{ all -> 0x0063 }
            throw r0;
        L_0x0066:
            r0 = move-exception;
            goto L_0x0044;
        L_0x0068:
            r0 = move-exception;
            r1 = r2;
            goto L_0x0040;
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.internal.operators.OperatorWindowWithTime.ExactSubscriber.onNext(java.lang.Object):void");
        }

        public void onStart() {
            request(Long.MAX_VALUE);
        }

        boolean replaceSubject() {
            Observer observer = this.state.consumer;
            if (observer != null) {
                observer.onCompleted();
            }
            if (this.child.isUnsubscribed()) {
                this.state = this.state.clear();
                unsubscribe();
                return false;
            }
            Object create = BufferUntilSubscriber.create();
            this.state = this.state.create(create, create);
            this.child.onNext(create);
            return true;
        }

        void scheduleExact() {
            this.worker.schedulePeriodically(new C13392(), 0, OperatorWindowWithTime.this.timespan, OperatorWindowWithTime.this.unit);
        }
    }

    final class InexactSubscriber extends Subscriber<T> {
        final Subscriber<? super Observable<T>> child;
        final List<CountedSerializedSubject<T>> chunks;
        boolean done;
        final Object guard;
        final Worker worker;

        /* renamed from: rx.internal.operators.OperatorWindowWithTime.InexactSubscriber.1 */
        class C13401 implements Action0 {
            C13401() {
            }

            public void call() {
                InexactSubscriber.this.startNewChunk();
            }
        }

        /* renamed from: rx.internal.operators.OperatorWindowWithTime.InexactSubscriber.2 */
        class C13412 implements Action0 {
            final /* synthetic */ CountedSerializedSubject val$chunk;

            C13412(CountedSerializedSubject countedSerializedSubject) {
                this.val$chunk = countedSerializedSubject;
            }

            public void call() {
                InexactSubscriber.this.terminateChunk(this.val$chunk);
            }
        }

        public InexactSubscriber(Subscriber<? super Observable<T>> subscriber, Worker worker) {
            super(subscriber);
            this.child = subscriber;
            this.worker = worker;
            this.guard = new Object();
            this.chunks = new LinkedList();
        }

        CountedSerializedSubject<T> createCountedSerializedSubject() {
            Object create = BufferUntilSubscriber.create();
            return new CountedSerializedSubject(create, create);
        }

        public void onCompleted() {
            synchronized (this.guard) {
                if (this.done) {
                    return;
                }
                this.done = true;
                List<CountedSerializedSubject> arrayList = new ArrayList(this.chunks);
                this.chunks.clear();
                for (CountedSerializedSubject countedSerializedSubject : arrayList) {
                    countedSerializedSubject.consumer.onCompleted();
                }
                this.child.onCompleted();
            }
        }

        public void onError(Throwable th) {
            synchronized (this.guard) {
                if (this.done) {
                    return;
                }
                this.done = true;
                List<CountedSerializedSubject> arrayList = new ArrayList(this.chunks);
                this.chunks.clear();
                for (CountedSerializedSubject countedSerializedSubject : arrayList) {
                    countedSerializedSubject.consumer.onError(th);
                }
                this.child.onError(th);
            }
        }

        public void onNext(T t) {
            synchronized (this.guard) {
                if (this.done) {
                    return;
                }
                List<CountedSerializedSubject> arrayList = new ArrayList(this.chunks);
                Iterator it = this.chunks.iterator();
                while (it.hasNext()) {
                    CountedSerializedSubject countedSerializedSubject = (CountedSerializedSubject) it.next();
                    int i = countedSerializedSubject.count + 1;
                    countedSerializedSubject.count = i;
                    if (i == OperatorWindowWithTime.this.size) {
                        it.remove();
                    }
                }
                for (CountedSerializedSubject countedSerializedSubject2 : arrayList) {
                    countedSerializedSubject2.consumer.onNext(t);
                    if (countedSerializedSubject2.count == OperatorWindowWithTime.this.size) {
                        countedSerializedSubject2.consumer.onCompleted();
                    }
                }
            }
        }

        public void onStart() {
            request(Long.MAX_VALUE);
        }

        void scheduleChunk() {
            this.worker.schedulePeriodically(new C13401(), OperatorWindowWithTime.this.timeshift, OperatorWindowWithTime.this.timeshift, OperatorWindowWithTime.this.unit);
        }

        void startNewChunk() {
            CountedSerializedSubject createCountedSerializedSubject = createCountedSerializedSubject();
            synchronized (this.guard) {
                if (this.done) {
                    return;
                }
                this.chunks.add(createCountedSerializedSubject);
                try {
                    this.child.onNext(createCountedSerializedSubject.producer);
                    this.worker.schedule(new C13412(createCountedSerializedSubject), OperatorWindowWithTime.this.timespan, OperatorWindowWithTime.this.unit);
                } catch (Throwable th) {
                    onError(th);
                }
            }
        }

        void terminateChunk(CountedSerializedSubject<T> countedSerializedSubject) {
            synchronized (this.guard) {
                if (this.done) {
                    return;
                }
                Object obj;
                Iterator it = this.chunks.iterator();
                while (it.hasNext()) {
                    if (((CountedSerializedSubject) it.next()) == countedSerializedSubject) {
                        obj = 1;
                        it.remove();
                        break;
                    }
                }
                obj = null;
                if (obj != null) {
                    countedSerializedSubject.consumer.onCompleted();
                }
            }
        }
    }

    static final class State<T> {
        static final State<Object> EMPTY;
        final Observer<T> consumer;
        final int count;
        final Observable<T> producer;

        static {
            EMPTY = new State(null, null, 0);
        }

        public State(Observer<T> observer, Observable<T> observable, int i) {
            this.consumer = observer;
            this.producer = observable;
            this.count = i;
        }

        public static <T> State<T> empty() {
            return EMPTY;
        }

        public State<T> clear() {
            return empty();
        }

        public State<T> create(Observer<T> observer, Observable<T> observable) {
            return new State(observer, observable, 0);
        }

        public State<T> next() {
            return new State(this.consumer, this.producer, this.count + 1);
        }
    }

    static {
        NEXT_SUBJECT = new Object();
        nl = NotificationLite.instance();
    }

    public OperatorWindowWithTime(long j, long j2, TimeUnit timeUnit, int i, Scheduler scheduler) {
        this.timespan = j;
        this.timeshift = j2;
        this.unit = timeUnit;
        this.size = i;
        this.scheduler = scheduler;
    }

    public Subscriber<? super T> call(Subscriber<? super Observable<T>> subscriber) {
        Subscription createWorker = this.scheduler.createWorker();
        if (this.timespan == this.timeshift) {
            Subscriber exactSubscriber = new ExactSubscriber(subscriber, createWorker);
            exactSubscriber.add(createWorker);
            exactSubscriber.scheduleExact();
            return exactSubscriber;
        }
        exactSubscriber = new InexactSubscriber(subscriber, createWorker);
        exactSubscriber.add(createWorker);
        exactSubscriber.startNewChunk();
        exactSubscriber.scheduleChunk();
        return exactSubscriber;
    }
}
