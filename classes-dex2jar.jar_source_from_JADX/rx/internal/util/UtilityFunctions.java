package rx.internal.util;

import rx.functions.Func0;
import rx.functions.Func1;
import rx.functions.Func2;
import rx.functions.Func3;
import rx.functions.Func4;
import rx.functions.Func5;
import rx.functions.Func6;
import rx.functions.Func7;
import rx.functions.Func8;
import rx.functions.Func9;
import rx.functions.FuncN;

public final class UtilityFunctions {
    private static final NullFunction NULL_FUNCTION;

    /* renamed from: rx.internal.util.UtilityFunctions.1 */
    static final class C13581 implements Func1<T, T> {
        C13581() {
        }

        public T call(T t) {
            return t;
        }
    }

    private enum AlwaysFalse implements Func1<Object, Boolean> {
        INSTANCE;

        public Boolean call(Object obj) {
            return Boolean.valueOf(false);
        }
    }

    private enum AlwaysTrue implements Func1<Object, Boolean> {
        INSTANCE;

        public Boolean call(Object obj) {
            return Boolean.valueOf(true);
        }
    }

    private static final class NullFunction<T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, R> implements Func0<R>, Func1<T0, R>, Func2<T0, T1, R>, Func3<T0, T1, T2, R>, Func4<T0, T1, T2, T3, R>, Func5<T0, T1, T2, T3, T4, R>, Func6<T0, T1, T2, T3, T4, T5, R>, Func7<T0, T1, T2, T3, T4, T5, T6, R>, Func8<T0, T1, T2, T3, T4, T5, T6, T7, R>, Func9<T0, T1, T2, T3, T4, T5, T6, T7, T8, R>, FuncN<R> {
        private NullFunction() {
        }

        public R call() {
            return null;
        }

        public R call(T0 t0) {
            return null;
        }

        public R call(T0 t0, T1 t1) {
            return null;
        }

        public R call(T0 t0, T1 t1, T2 t2) {
            return null;
        }

        public R call(T0 t0, T1 t1, T2 t2, T3 t3) {
            return null;
        }

        public R call(T0 t0, T1 t1, T2 t2, T3 t3, T4 t4) {
            return null;
        }

        public R call(T0 t0, T1 t1, T2 t2, T3 t3, T4 t4, T5 t5) {
            return null;
        }

        public R call(T0 t0, T1 t1, T2 t2, T3 t3, T4 t4, T5 t5, T6 t6) {
            return null;
        }

        public R call(T0 t0, T1 t1, T2 t2, T3 t3, T4 t4, T5 t5, T6 t6, T7 t7) {
            return null;
        }

        public R call(T0 t0, T1 t1, T2 t2, T3 t3, T4 t4, T5 t5, T6 t6, T7 t7, T8 t8) {
            return null;
        }

        public R call(Object... objArr) {
            return null;
        }
    }

    static {
        NULL_FUNCTION = new NullFunction();
    }

    public static <T> Func1<? super T, Boolean> alwaysFalse() {
        return AlwaysFalse.INSTANCE;
    }

    public static <T> Func1<? super T, Boolean> alwaysTrue() {
        return AlwaysTrue.INSTANCE;
    }

    public static <T> Func1<T, T> identity() {
        return new C13581();
    }

    public static <T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, R> NullFunction<T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, R> returnNull() {
        return NULL_FUNCTION;
    }
}
