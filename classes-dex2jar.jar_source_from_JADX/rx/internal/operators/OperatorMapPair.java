package rx.internal.operators;

import rx.Observable;
import rx.Observable.Operator;
import rx.Subscriber;
import rx.exceptions.OnErrorThrowable;
import rx.functions.Func1;
import rx.functions.Func2;

public final class OperatorMapPair<T, U, R> implements Operator<Observable<? extends R>, T> {
    final Func1<? super T, ? extends Observable<? extends U>> collectionSelector;
    final Func2<? super T, ? super U, ? extends R> resultSelector;

    /* renamed from: rx.internal.operators.OperatorMapPair.1 */
    static final class C12441 implements Func1<T, Observable<U>> {
        final /* synthetic */ Func1 val$selector;

        C12441(Func1 func1) {
            this.val$selector = func1;
        }

        public Observable<U> call(T t) {
            return Observable.from((Iterable) this.val$selector.call(t));
        }
    }

    /* renamed from: rx.internal.operators.OperatorMapPair.2 */
    class C12462 extends Subscriber<T> {
        final /* synthetic */ Subscriber val$o;

        /* renamed from: rx.internal.operators.OperatorMapPair.2.1 */
        class C12451 implements Func1<U, R> {
            final /* synthetic */ Object val$outer;

            C12451(Object obj) {
                this.val$outer = obj;
            }

            public R call(U u) {
                return OperatorMapPair.this.resultSelector.call(this.val$outer, u);
            }
        }

        C12462(Subscriber subscriber, Subscriber subscriber2) {
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
                this.val$o.onNext(((Observable) OperatorMapPair.this.collectionSelector.call(t)).map(new C12451(t)));
            } catch (Throwable th) {
                this.val$o.onError(OnErrorThrowable.addValueAsLastCause(th, t));
            }
        }
    }

    public OperatorMapPair(Func1<? super T, ? extends Observable<? extends U>> func1, Func2<? super T, ? super U, ? extends R> func2) {
        this.collectionSelector = func1;
        this.resultSelector = func2;
    }

    public static <T, U> Func1<T, Observable<U>> convertSelector(Func1<? super T, ? extends Iterable<? extends U>> func1) {
        return new C12441(func1);
    }

    public Subscriber<? super T> call(Subscriber<? super Observable<? extends R>> subscriber) {
        return new C12462(subscriber, subscriber);
    }
}
