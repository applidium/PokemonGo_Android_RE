package rx.internal.operators;

import java.util.concurrent.atomic.AtomicBoolean;
import rx.Observable.Operator;
import rx.Producer;
import rx.Subscriber;
import rx.exceptions.Exceptions;
import rx.exceptions.OnErrorThrowable;
import rx.functions.Func0;
import rx.functions.Func2;

public final class OperatorScan<R, T> implements Operator<R, T> {
    private static final Object NO_INITIAL_VALUE;
    private final Func2<R, ? super T, R> accumulator;
    private final Func0<R> initialValueFactory;

    /* renamed from: rx.internal.operators.OperatorScan.1 */
    class C12791 implements Func0<R> {
        final /* synthetic */ Object val$initialValue;

        C12791(Object obj) {
            this.val$initialValue = obj;
        }

        public R call() {
            return this.val$initialValue;
        }
    }

    /* renamed from: rx.internal.operators.OperatorScan.2 */
    class C12812 extends Subscriber<T> {
        private final R initialValue;
        boolean initialized;
        final /* synthetic */ Subscriber val$child;
        private R value;

        /* renamed from: rx.internal.operators.OperatorScan.2.1 */
        class C12801 implements Producer {
            final AtomicBoolean excessive;
            final AtomicBoolean once;
            final /* synthetic */ Producer val$producer;

            C12801(Producer producer) {
                this.val$producer = producer;
                this.once = new AtomicBoolean();
                this.excessive = new AtomicBoolean();
            }

            public void request(long j) {
                if (this.once.compareAndSet(false, true)) {
                    if (C12812.this.initialValue == OperatorScan.NO_INITIAL_VALUE || j == Long.MAX_VALUE) {
                        this.val$producer.request(j);
                    } else if (j == 1) {
                        this.excessive.set(true);
                        this.val$producer.request(1);
                    } else {
                        this.val$producer.request(j - 1);
                    }
                } else if (j <= 1 || !this.excessive.compareAndSet(true, false) || j == Long.MAX_VALUE) {
                    this.val$producer.request(j);
                } else {
                    this.val$producer.request(j - 1);
                }
            }
        }

        C12812(Subscriber subscriber, Subscriber subscriber2) {
            this.val$child = subscriber2;
            super(subscriber);
            this.initialValue = OperatorScan.this.initialValueFactory.call();
            this.value = this.initialValue;
            this.initialized = false;
        }

        private void emitInitialValueIfNeeded(Subscriber<? super R> subscriber) {
            if (!this.initialized) {
                this.initialized = true;
                if (this.initialValue != OperatorScan.NO_INITIAL_VALUE) {
                    subscriber.onNext(this.initialValue);
                }
            }
        }

        public void onCompleted() {
            emitInitialValueIfNeeded(this.val$child);
            this.val$child.onCompleted();
        }

        public void onError(Throwable th) {
            this.val$child.onError(th);
        }

        public void onNext(T t) {
            emitInitialValueIfNeeded(this.val$child);
            if (this.value == OperatorScan.NO_INITIAL_VALUE) {
                this.value = t;
            } else {
                try {
                    this.value = OperatorScan.this.accumulator.call(this.value, t);
                } catch (Throwable th) {
                    Exceptions.throwIfFatal(th);
                    this.val$child.onError(OnErrorThrowable.addValueAsLastCause(th, t));
                    return;
                }
            }
            this.val$child.onNext(this.value);
        }

        public void setProducer(Producer producer) {
            this.val$child.setProducer(new C12801(producer));
        }
    }

    static {
        NO_INITIAL_VALUE = new Object();
    }

    public OperatorScan(R r, Func2<R, ? super T, R> func2) {
        this(new C12791(r), (Func2) func2);
    }

    public OperatorScan(Func0<R> func0, Func2<R, ? super T, R> func2) {
        this.initialValueFactory = func0;
        this.accumulator = func2;
    }

    public OperatorScan(Func2<R, ? super T, R> func2) {
        this(NO_INITIAL_VALUE, (Func2) func2);
    }

    public Subscriber<? super T> call(Subscriber<? super R> subscriber) {
        return new C12812(subscriber, subscriber);
    }
}
