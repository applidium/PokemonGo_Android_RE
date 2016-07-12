package rx.internal.operators;

import rx.Observable.Operator;
import rx.Subscriber;
import rx.exceptions.OnErrorThrowable;

public class OperatorCast<T, R> implements Operator<R, T> {
    private final Class<R> castClass;

    /* renamed from: rx.internal.operators.OperatorCast.1 */
    class C12131 extends Subscriber<T> {
        final /* synthetic */ Subscriber val$o;

        C12131(Subscriber subscriber, Subscriber subscriber2) {
            this.val$o = subscriber2;
            super(subscriber);
        }

        public void onCompleted() {
            this.val$o.onCompleted();
        }

        public void onError(Throwable th) {
            this.val$o.onError(th);
        }

        public void onNext(T t) {
            try {
                this.val$o.onNext(OperatorCast.this.castClass.cast(t));
            } catch (Throwable th) {
                onError(OnErrorThrowable.addValueAsLastCause(th, t));
            }
        }
    }

    public OperatorCast(Class<R> cls) {
        this.castClass = cls;
    }

    public Subscriber<? super T> call(Subscriber<? super R> subscriber) {
        return new C12131(subscriber, subscriber);
    }
}
