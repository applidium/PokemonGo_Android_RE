package rx.internal.operators;

import rx.Observable.Operator;
import rx.Subscriber;

public final class OperatorAsObservable<T> implements Operator<T, T> {

    private static final class Holder {
        static final OperatorAsObservable<Object> INSTANCE;

        static {
            INSTANCE = new OperatorAsObservable();
        }

        private Holder() {
        }
    }

    private OperatorAsObservable() {
    }

    public static <T> OperatorAsObservable<T> instance() {
        return Holder.INSTANCE;
    }

    public Subscriber<? super T> call(Subscriber<? super T> subscriber) {
        return subscriber;
    }
}
