package rx.internal.operators;

import rx.Observable;
import rx.Observable.Operator;
import rx.Subscriber;
import rx.exceptions.OnErrorThrowable;
import rx.functions.Func1;
import rx.plugins.RxJavaPlugins;

public final class OperatorOnErrorFlatMap<T> implements Operator<T, T> {
    private final Func1<OnErrorThrowable, ? extends Observable<? extends T>> resumeFunction;

    /* renamed from: rx.internal.operators.OperatorOnErrorFlatMap.1 */
    class C12601 extends Subscriber<T> {
        final /* synthetic */ Subscriber val$child;

        /* renamed from: rx.internal.operators.OperatorOnErrorFlatMap.1.1 */
        class C12591 extends Subscriber<T> {
            C12591() {
            }

            public void onCompleted() {
            }

            public void onError(Throwable th) {
                C12601.this.val$child.onError(th);
            }

            public void onNext(T t) {
                C12601.this.val$child.onNext(t);
            }
        }

        C12601(Subscriber subscriber, Subscriber subscriber2) {
            this.val$child = subscriber2;
            super(subscriber);
        }

        public void onCompleted() {
            this.val$child.onCompleted();
        }

        public void onError(Throwable th) {
            try {
                RxJavaPlugins.getInstance().getErrorHandler().handleError(th);
                ((Observable) OperatorOnErrorFlatMap.this.resumeFunction.call(OnErrorThrowable.from(th))).unsafeSubscribe(new C12591());
            } catch (Throwable th2) {
                this.val$child.onError(th2);
            }
        }

        public void onNext(T t) {
            this.val$child.onNext(t);
        }
    }

    public OperatorOnErrorFlatMap(Func1<OnErrorThrowable, ? extends Observable<? extends T>> func1) {
        this.resumeFunction = func1;
    }

    public Subscriber<? super T> call(Subscriber<? super T> subscriber) {
        return new C12601(subscriber, subscriber);
    }
}
