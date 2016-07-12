package rx.internal.operators;

import rx.Observable.Operator;
import rx.Subscriber;
import rx.exceptions.OnErrorThrowable;
import rx.functions.Func1;

public final class OperatorFilter<T> implements Operator<T, T> {
    private final Func1<? super T, Boolean> predicate;

    /* renamed from: rx.internal.operators.OperatorFilter.1 */
    class C12331 extends Subscriber<T> {
        final /* synthetic */ Subscriber val$child;

        C12331(Subscriber subscriber, Subscriber subscriber2) {
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
            try {
                if (((Boolean) OperatorFilter.this.predicate.call(t)).booleanValue()) {
                    this.val$child.onNext(t);
                } else {
                    request(1);
                }
            } catch (Throwable th) {
                this.val$child.onError(OnErrorThrowable.addValueAsLastCause(th, t));
            }
        }
    }

    public OperatorFilter(Func1<? super T, Boolean> func1) {
        this.predicate = func1;
    }

    public Subscriber<? super T> call(Subscriber<? super T> subscriber) {
        return new C12331(subscriber, subscriber);
    }
}
