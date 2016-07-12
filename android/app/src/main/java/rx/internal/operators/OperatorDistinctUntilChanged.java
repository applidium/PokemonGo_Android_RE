package rx.internal.operators;

import rx.Observable.Operator;
import rx.Subscriber;
import rx.functions.Func1;
import rx.internal.util.UtilityFunctions;

public final class OperatorDistinctUntilChanged<T, U> implements Operator<T, T> {
    final Func1<? super T, ? extends U> keySelector;

    /* renamed from: rx.internal.operators.OperatorDistinctUntilChanged.1 */
    class C12291 extends Subscriber<T> {
        boolean hasPrevious;
        U previousKey;
        final /* synthetic */ Subscriber val$child;

        C12291(Subscriber subscriber, Subscriber subscriber2) {
            this.val$child = subscriber2;
            super(subscriber);
        }

        public void onCompleted() {
            this.val$child.onCompleted();
        }

        public void onError(Throwable th) {
            this.val$child.onError(th);
        }

        public void onNext(T t) {
            Object obj = this.previousKey;
            Object call = OperatorDistinctUntilChanged.this.keySelector.call(t);
            this.previousKey = call;
            if (!this.hasPrevious) {
                this.hasPrevious = true;
                this.val$child.onNext(t);
            } else if (obj == call || (call != null && call.equals(obj))) {
                request(1);
            } else {
                this.val$child.onNext(t);
            }
        }
    }

    private static class Holder {
        static final OperatorDistinctUntilChanged<?, ?> INSTANCE;

        static {
            INSTANCE = new OperatorDistinctUntilChanged(UtilityFunctions.identity());
        }

        private Holder() {
        }
    }

    public OperatorDistinctUntilChanged(Func1<? super T, ? extends U> func1) {
        this.keySelector = func1;
    }

    public static <T> OperatorDistinctUntilChanged<T, T> instance() {
        return Holder.INSTANCE;
    }

    public Subscriber<? super T> call(Subscriber<? super T> subscriber) {
        return new C12291(subscriber, subscriber);
    }
}
