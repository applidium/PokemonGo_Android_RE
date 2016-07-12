package rx.internal.operators;

import rx.Observable.Operator;
import rx.Subscriber;
import rx.functions.Func1;
import rx.functions.Func2;

public final class OperatorSkipWhile<T> implements Operator<T, T> {
    private final Func2<? super T, Integer, Boolean> predicate;

    /* renamed from: rx.internal.operators.OperatorSkipWhile.1 */
    class C12931 extends Subscriber<T> {
        int index;
        boolean skipping;
        final /* synthetic */ Subscriber val$child;

        C12931(Subscriber subscriber, Subscriber subscriber2) {
            this.val$child = subscriber2;
            super(subscriber);
            this.skipping = true;
        }

        public void onCompleted() {
            this.val$child.onCompleted();
        }

        public void onError(Throwable th) {
            this.val$child.onError(th);
        }

        public void onNext(T t) {
            if (this.skipping) {
                Func2 access$000 = OperatorSkipWhile.this.predicate;
                int i = this.index;
                this.index = i + 1;
                if (((Boolean) access$000.call(t, Integer.valueOf(i))).booleanValue()) {
                    request(1);
                    return;
                }
                this.skipping = false;
                this.val$child.onNext(t);
                return;
            }
            this.val$child.onNext(t);
        }
    }

    /* renamed from: rx.internal.operators.OperatorSkipWhile.2 */
    static final class C12942 implements Func2<T, Integer, Boolean> {
        final /* synthetic */ Func1 val$predicate;

        C12942(Func1 func1) {
            this.val$predicate = func1;
        }

        public Boolean call(T t, Integer num) {
            return (Boolean) this.val$predicate.call(t);
        }
    }

    public OperatorSkipWhile(Func2<? super T, Integer, Boolean> func2) {
        this.predicate = func2;
    }

    public static <T> Func2<T, Integer, Boolean> toPredicate2(Func1<? super T, Boolean> func1) {
        return new C12942(func1);
    }

    public Subscriber<? super T> call(Subscriber<? super T> subscriber) {
        return new C12931(subscriber, subscriber);
    }
}
