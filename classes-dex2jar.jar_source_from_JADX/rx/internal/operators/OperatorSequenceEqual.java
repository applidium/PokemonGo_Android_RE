package rx.internal.operators;

import rx.Observable;
import rx.functions.Func1;
import rx.functions.Func2;
import rx.internal.util.UtilityFunctions;

public final class OperatorSequenceEqual {
    private static final Object LOCAL_ONCOMPLETED;

    /* renamed from: rx.internal.operators.OperatorSequenceEqual.1 */
    static final class C12821 implements Func1<T, Object> {
        C12821() {
        }

        public Object call(T t) {
            return t;
        }
    }

    /* renamed from: rx.internal.operators.OperatorSequenceEqual.2 */
    static final class C12832 implements Func2<Object, Object, Boolean> {
        final /* synthetic */ Func2 val$equality;

        C12832(Func2 func2) {
            this.val$equality = func2;
        }

        public Boolean call(Object obj, Object obj2) {
            boolean z = obj == OperatorSequenceEqual.LOCAL_ONCOMPLETED;
            boolean z2 = obj2 == OperatorSequenceEqual.LOCAL_ONCOMPLETED;
            return (z && z2) ? Boolean.valueOf(true) : (z || z2) ? Boolean.valueOf(false) : (Boolean) this.val$equality.call(obj, obj2);
        }
    }

    static {
        LOCAL_ONCOMPLETED = new Object();
    }

    private OperatorSequenceEqual() {
        throw new IllegalStateException("No instances!");
    }

    static <T> Observable<Object> materializeLite(Observable<T> observable) {
        return Observable.concat(observable.map(new C12821()), Observable.just(LOCAL_ONCOMPLETED));
    }

    public static <T> Observable<Boolean> sequenceEqual(Observable<? extends T> observable, Observable<? extends T> observable2, Func2<? super T, ? super T, Boolean> func2) {
        return Observable.zip(materializeLite(observable), materializeLite(observable2), new C12832(func2)).all(UtilityFunctions.identity());
    }
}
