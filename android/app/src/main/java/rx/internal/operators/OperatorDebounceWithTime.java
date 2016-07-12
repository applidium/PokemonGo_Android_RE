package rx.internal.operators;

import java.util.concurrent.TimeUnit;
import rx.Observable.Operator;
import rx.Scheduler;
import rx.Scheduler.Worker;
import rx.Subscriber;
import rx.functions.Action0;
import rx.observers.SerializedSubscriber;
import rx.subscriptions.SerialSubscription;

public final class OperatorDebounceWithTime<T> implements Operator<T, T> {
    final Scheduler scheduler;
    final long timeout;
    final TimeUnit unit;

    /* renamed from: rx.internal.operators.OperatorDebounceWithTime.1 */
    class C12191 extends Subscriber<T> {
        final Subscriber<?> self;
        final DebounceState<T> state;
        final /* synthetic */ SerializedSubscriber val$s;
        final /* synthetic */ SerialSubscription val$ssub;
        final /* synthetic */ Worker val$worker;

        /* renamed from: rx.internal.operators.OperatorDebounceWithTime.1.1 */
        class C12181 implements Action0 {
            final /* synthetic */ int val$index;

            C12181(int i) {
                this.val$index = i;
            }

            public void call() {
                C12191.this.state.emit(this.val$index, C12191.this.val$s, C12191.this.self);
            }
        }

        C12191(Subscriber subscriber, SerialSubscription serialSubscription, Worker worker, SerializedSubscriber serializedSubscriber) {
            this.val$ssub = serialSubscription;
            this.val$worker = worker;
            this.val$s = serializedSubscriber;
            super(subscriber);
            this.state = new DebounceState();
            this.self = this;
        }

        public void onCompleted() {
            this.state.emitAndComplete(this.val$s, this);
        }

        public void onError(Throwable th) {
            this.val$s.onError(th);
            unsubscribe();
            this.state.clear();
        }

        public void onNext(T t) {
            this.val$ssub.set(this.val$worker.schedule(new C12181(this.state.next(t)), OperatorDebounceWithTime.this.timeout, OperatorDebounceWithTime.this.unit));
        }

        public void onStart() {
            request(Long.MAX_VALUE);
        }
    }

    static final class DebounceState<T> {
        boolean emitting;
        boolean hasValue;
        int index;
        boolean terminate;
        T value;

        DebounceState() {
        }

        public void clear() {
            synchronized (this) {
                this.index++;
                this.value = null;
                this.hasValue = false;
            }
        }

        public void emit(int i, Subscriber<T> subscriber, Subscriber<?> subscriber2) {
            synchronized (this) {
                if (!this.emitting && this.hasValue && i == this.index) {
                    Object obj = this.value;
                    this.value = null;
                    this.hasValue = false;
                    this.emitting = true;
                    try {
                        subscriber.onNext(obj);
                        synchronized (this) {
                            if (this.terminate) {
                                subscriber.onCompleted();
                                return;
                            }
                            this.emitting = false;
                            return;
                        }
                    } catch (Throwable th) {
                        subscriber2.onError(th);
                        return;
                    }
                }
            }
        }

        public void emitAndComplete(Subscriber<T> subscriber, Subscriber<?> subscriber2) {
            synchronized (this) {
                if (this.emitting) {
                    this.terminate = true;
                    return;
                }
                Object obj = this.value;
                boolean z = this.hasValue;
                this.value = null;
                this.hasValue = false;
                this.emitting = true;
                if (z) {
                    try {
                        subscriber.onNext(obj);
                    } catch (Throwable th) {
                        subscriber2.onError(th);
                        return;
                    }
                }
                subscriber.onCompleted();
            }
        }

        public int next(T t) {
            int i;
            synchronized (this) {
                this.value = t;
                this.hasValue = true;
                i = this.index + 1;
                this.index = i;
            }
            return i;
        }
    }

    public OperatorDebounceWithTime(long j, TimeUnit timeUnit, Scheduler scheduler) {
        this.timeout = j;
        this.unit = timeUnit;
        this.scheduler = scheduler;
    }

    public Subscriber<? super T> call(Subscriber<? super T> subscriber) {
        Object createWorker = this.scheduler.createWorker();
        SerializedSubscriber serializedSubscriber = new SerializedSubscriber(subscriber);
        Object serialSubscription = new SerialSubscription();
        serializedSubscriber.add(createWorker);
        serializedSubscriber.add(serialSubscription);
        return new C12191(subscriber, serialSubscription, createWorker, serializedSubscriber);
    }
}
