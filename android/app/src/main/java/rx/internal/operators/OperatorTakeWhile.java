package rx.internal.operators;

import rx.Observable.Operator;
import rx.Subscriber;
import rx.exceptions.Exceptions;
import rx.exceptions.OnErrorThrowable;
import rx.functions.Func1;
import rx.functions.Func2;

public final class OperatorTakeWhile<T> implements Operator<T, T> {
    private final Func2<? super T, ? super Integer, Boolean> predicate;

    /* renamed from: rx.internal.operators.OperatorTakeWhile.1 */
    class C13101 implements Func2<T, Integer, Boolean> {
        final /* synthetic */ Func1 val$underlying;

        C13101(Func1 func1) {
            this.val$underlying = func1;
        }

        public Boolean call(T t, Integer num) {
            return (Boolean) this.val$underlying.call(t);
        }
    }

    /* renamed from: rx.internal.operators.OperatorTakeWhile.2 */
    class C13112 extends Subscriber<T> {
        private int counter;
        private boolean done;
        final /* synthetic */ Subscriber val$subscriber;

        C13112(Subscriber subscriber, boolean z, Subscriber subscriber2) {
            this.val$subscriber = subscriber2;
            super(subscriber, z);
            this.counter = 0;
            this.done = false;
        }

        public void onCompleted() {
            if (!this.done) {
                this.val$subscriber.onCompleted();
            }
        }

        public void onError(Throwable th) {
            if (!this.done) {
                this.val$subscriber.onError(th);
            }
        }

        public void onNext(T t) {
            try {
                Func2 access$000 = OperatorTakeWhile.this.predicate;
                int i = this.counter;
                this.counter = i + 1;
                if (((Boolean) access$000.call(t, Integer.valueOf(i))).booleanValue()) {
                    this.val$subscriber.onNext(t);
                    return;
                }
                this.done = true;
                this.val$subscriber.onCompleted();
                unsubscribe();
            } catch (Throwable th) {
                this.done = true;
                Exceptions.throwIfFatal(th);
                this.val$subscriber.onError(OnErrorThrowable.addValueAsLastCause(th, t));
                unsubscribe();
            }
        }
    }

    public OperatorTakeWhile(Func1<? super T, Boolean> func1) {
        this(new C13101(func1));
    }

    public OperatorTakeWhile(Func2<? super T, ? super Integer, Boolean> func2) {
        this.predicate = func2;
    }

    public Subscriber<? super T> call(Subscriber<? super T> subscriber) {
        Object c13112 = new C13112(subscriber, false, subscriber);
        subscriber.add(c13112);
        return c13112;
    }
}
