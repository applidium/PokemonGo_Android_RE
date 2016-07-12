package rx.internal.operators;

import rx.Observable.Operator;
import rx.Subscriber;
import rx.functions.Action0;

public final class OperatorFinally<T> implements Operator<T, T> {
    final Action0 action;

    /* renamed from: rx.internal.operators.OperatorFinally.1 */
    class C12341 extends Subscriber<T> {
        final /* synthetic */ Subscriber val$child;

        C12341(Subscriber subscriber, Subscriber subscriber2) {
            this.val$child = subscriber2;
            super(subscriber);
        }

        public void onCompleted() {
            try {
                this.val$child.onCompleted();
            } finally {
                OperatorFinally.this.action.call();
            }
        }

        public void onError(Throwable th) {
            try {
                this.val$child.onError(th);
            } finally {
                OperatorFinally.this.action.call();
            }
        }

        public void onNext(T t) {
            this.val$child.onNext(t);
        }
    }

    public OperatorFinally(Action0 action0) {
        this.action = action0;
    }

    public Subscriber<? super T> call(Subscriber<? super T> subscriber) {
        return new C12341(subscriber, subscriber);
    }
}
