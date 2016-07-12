package rx.internal.operators;

import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import rx.Observable.OnSubscribe;
import rx.Observer;
import rx.functions.Action0;
import rx.subjects.Subject;

public final class BufferUntilSubscriber<T> extends Subject<T, T> {
    private static final Observer EMPTY_OBSERVER;
    private boolean forward;
    final State<T> state;

    /* renamed from: rx.internal.operators.BufferUntilSubscriber.1 */
    static final class C11691 implements Observer {
        C11691() {
        }

        public void onCompleted() {
        }

        public void onError(Throwable th) {
        }

        public void onNext(Object obj) {
        }
    }

    static final class OnSubscribeAction<T> implements OnSubscribe<T> {
        final State<T> state;

        /* renamed from: rx.internal.operators.BufferUntilSubscriber.OnSubscribeAction.1 */
        class C11701 implements Action0 {
            C11701() {
            }

            public void call() {
                OnSubscribeAction.this.state.observerRef = BufferUntilSubscriber.EMPTY_OBSERVER;
            }
        }

        public OnSubscribeAction(State<T> state) {
            this.state = state;
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void call(rx.Subscriber<? super T> r5) {
            /*
            r4 = this;
            r0 = 1;
            r1 = 0;
            r2 = r4.state;
            r3 = 0;
            r2 = r2.casObserverRef(r3, r5);
            if (r2 == 0) goto L_0x005e;
        L_0x000b:
            r2 = new rx.internal.operators.BufferUntilSubscriber$OnSubscribeAction$1;
            r2.<init>();
            r2 = rx.subscriptions.Subscriptions.create(r2);
            r5.add(r2);
            r2 = r4.state;
            r2 = r2.guard;
            monitor-enter(r2);
            r3 = r4.state;	 Catch:{ all -> 0x0040 }
            r3 = r3.emitting;	 Catch:{ all -> 0x0040 }
            if (r3 != 0) goto L_0x0069;
        L_0x0022:
            r1 = r4.state;	 Catch:{ all -> 0x0040 }
            r3 = 1;
            r1.emitting = r3;	 Catch:{ all -> 0x0040 }
        L_0x0027:
            monitor-exit(r2);	 Catch:{ all -> 0x0040 }
            if (r0 == 0) goto L_0x0058;
        L_0x002a:
            r0 = rx.internal.operators.NotificationLite.instance();
        L_0x002e:
            r1 = r4.state;
            r1 = r1.buffer;
            r1 = r1.poll();
            if (r1 == 0) goto L_0x0043;
        L_0x0038:
            r2 = r4.state;
            r2 = r2.observerRef;
            r0.accept(r2, r1);
            goto L_0x002e;
        L_0x0040:
            r0 = move-exception;
            monitor-exit(r2);	 Catch:{ all -> 0x0040 }
            throw r0;
        L_0x0043:
            r1 = r4.state;
            r1 = r1.guard;
            monitor-enter(r1);
            r2 = r4.state;	 Catch:{ all -> 0x005b }
            r2 = r2.buffer;	 Catch:{ all -> 0x005b }
            r2 = r2.isEmpty();	 Catch:{ all -> 0x005b }
            if (r2 == 0) goto L_0x0059;
        L_0x0052:
            r0 = r4.state;	 Catch:{ all -> 0x005b }
            r2 = 0;
            r0.emitting = r2;	 Catch:{ all -> 0x005b }
            monitor-exit(r1);	 Catch:{ all -> 0x005b }
        L_0x0058:
            return;
        L_0x0059:
            monitor-exit(r1);	 Catch:{ all -> 0x005b }
            goto L_0x002e;
        L_0x005b:
            r0 = move-exception;
            monitor-exit(r1);	 Catch:{ all -> 0x005b }
            throw r0;
        L_0x005e:
            r0 = new java.lang.IllegalStateException;
            r1 = "Only one subscriber allowed!";
            r0.<init>(r1);
            r5.onError(r0);
            goto L_0x0058;
        L_0x0069:
            r0 = r1;
            goto L_0x0027;
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.internal.operators.BufferUntilSubscriber.OnSubscribeAction.call(rx.Subscriber):void");
        }
    }

    static final class State<T> {
        static final AtomicReferenceFieldUpdater<State, Observer> OBSERVER_UPDATER;
        final ConcurrentLinkedQueue<Object> buffer;
        boolean emitting;
        Object guard;
        final NotificationLite<T> nl;
        volatile Observer<? super T> observerRef;

        static {
            OBSERVER_UPDATER = AtomicReferenceFieldUpdater.newUpdater(State.class, Observer.class, "observerRef");
        }

        State() {
            this.observerRef = null;
            this.guard = new Object();
            this.emitting = false;
            this.buffer = new ConcurrentLinkedQueue();
            this.nl = NotificationLite.instance();
        }

        boolean casObserverRef(Observer<? super T> observer, Observer<? super T> observer2) {
            return OBSERVER_UPDATER.compareAndSet(this, observer, observer2);
        }
    }

    static {
        EMPTY_OBSERVER = new C11691();
    }

    private BufferUntilSubscriber(State<T> state) {
        super(new OnSubscribeAction(state));
        this.forward = false;
        this.state = state;
    }

    public static <T> BufferUntilSubscriber<T> create() {
        return new BufferUntilSubscriber(new State());
    }

    private void emit(Object obj) {
        synchronized (this.state.guard) {
            this.state.buffer.add(obj);
            if (!(this.state.observerRef == null || this.state.emitting)) {
                this.forward = true;
                this.state.emitting = true;
            }
        }
        if (this.forward) {
            while (true) {
                Object poll = this.state.buffer.poll();
                if (poll != null) {
                    this.state.nl.accept(this.state.observerRef, poll);
                } else {
                    return;
                }
            }
        }
    }

    public boolean hasObservers() {
        boolean z;
        synchronized (this.state.guard) {
            z = this.state.observerRef != null;
        }
        return z;
    }

    public void onCompleted() {
        if (this.forward) {
            this.state.observerRef.onCompleted();
        } else {
            emit(this.state.nl.completed());
        }
    }

    public void onError(Throwable th) {
        if (this.forward) {
            this.state.observerRef.onError(th);
        } else {
            emit(this.state.nl.error(th));
        }
    }

    public void onNext(T t) {
        if (this.forward) {
            this.state.observerRef.onNext(t);
        } else {
            emit(this.state.nl.next(t));
        }
    }
}
