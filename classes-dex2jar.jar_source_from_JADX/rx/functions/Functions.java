package rx.functions;

public final class Functions {

    /* renamed from: rx.functions.Functions.10 */
    static final class AnonymousClass10 implements FuncN<R> {
        final /* synthetic */ Func9 val$f;

        AnonymousClass10(Func9 func9) {
            this.val$f = func9;
        }

        public R call(Object... objArr) {
            if (objArr.length == 9) {
                return this.val$f.call(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5], objArr[6], objArr[7], objArr[8]);
            }
            throw new RuntimeException("Func9 expecting 9 arguments.");
        }
    }

    /* renamed from: rx.functions.Functions.11 */
    static final class AnonymousClass11 implements FuncN<Void> {
        final /* synthetic */ Action0 val$f;

        AnonymousClass11(Action0 action0) {
            this.val$f = action0;
        }

        public Void call(Object... objArr) {
            if (objArr.length != 0) {
                throw new RuntimeException("Action0 expecting 0 arguments.");
            }
            this.val$f.call();
            return null;
        }
    }

    /* renamed from: rx.functions.Functions.12 */
    static final class AnonymousClass12 implements FuncN<Void> {
        final /* synthetic */ Action1 val$f;

        AnonymousClass12(Action1 action1) {
            this.val$f = action1;
        }

        public Void call(Object... objArr) {
            if (objArr.length != 1) {
                throw new RuntimeException("Action1 expecting 1 argument.");
            }
            this.val$f.call(objArr[0]);
            return null;
        }
    }

    /* renamed from: rx.functions.Functions.13 */
    static final class AnonymousClass13 implements FuncN<Void> {
        final /* synthetic */ Action2 val$f;

        AnonymousClass13(Action2 action2) {
            this.val$f = action2;
        }

        public Void call(Object... objArr) {
            if (objArr.length != 2) {
                throw new RuntimeException("Action3 expecting 2 arguments.");
            }
            this.val$f.call(objArr[0], objArr[1]);
            return null;
        }
    }

    /* renamed from: rx.functions.Functions.14 */
    static final class AnonymousClass14 implements FuncN<Void> {
        final /* synthetic */ Action3 val$f;

        AnonymousClass14(Action3 action3) {
            this.val$f = action3;
        }

        public Void call(Object... objArr) {
            if (objArr.length != 3) {
                throw new RuntimeException("Action3 expecting 3 arguments.");
            }
            this.val$f.call(objArr[0], objArr[1], objArr[2]);
            return null;
        }
    }

    /* renamed from: rx.functions.Functions.1 */
    static final class C11521 implements FuncN<R> {
        final /* synthetic */ Func0 val$f;

        C11521(Func0 func0) {
            this.val$f = func0;
        }

        public R call(Object... objArr) {
            if (objArr.length == 0) {
                return this.val$f.call();
            }
            throw new RuntimeException("Func0 expecting 0 arguments.");
        }
    }

    /* renamed from: rx.functions.Functions.2 */
    static final class C11532 implements FuncN<R> {
        final /* synthetic */ Func1 val$f;

        C11532(Func1 func1) {
            this.val$f = func1;
        }

        public R call(Object... objArr) {
            if (objArr.length == 1) {
                return this.val$f.call(objArr[0]);
            }
            throw new RuntimeException("Func1 expecting 1 argument.");
        }
    }

    /* renamed from: rx.functions.Functions.3 */
    static final class C11543 implements FuncN<R> {
        final /* synthetic */ Func2 val$f;

        C11543(Func2 func2) {
            this.val$f = func2;
        }

        public R call(Object... objArr) {
            if (objArr.length == 2) {
                return this.val$f.call(objArr[0], objArr[1]);
            }
            throw new RuntimeException("Func2 expecting 2 arguments.");
        }
    }

    /* renamed from: rx.functions.Functions.4 */
    static final class C11554 implements FuncN<R> {
        final /* synthetic */ Func3 val$f;

        C11554(Func3 func3) {
            this.val$f = func3;
        }

        public R call(Object... objArr) {
            if (objArr.length == 3) {
                return this.val$f.call(objArr[0], objArr[1], objArr[2]);
            }
            throw new RuntimeException("Func3 expecting 3 arguments.");
        }
    }

    /* renamed from: rx.functions.Functions.5 */
    static final class C11565 implements FuncN<R> {
        final /* synthetic */ Func4 val$f;

        C11565(Func4 func4) {
            this.val$f = func4;
        }

        public R call(Object... objArr) {
            if (objArr.length == 4) {
                return this.val$f.call(objArr[0], objArr[1], objArr[2], objArr[3]);
            }
            throw new RuntimeException("Func4 expecting 4 arguments.");
        }
    }

    /* renamed from: rx.functions.Functions.6 */
    static final class C11576 implements FuncN<R> {
        final /* synthetic */ Func5 val$f;

        C11576(Func5 func5) {
            this.val$f = func5;
        }

        public R call(Object... objArr) {
            if (objArr.length == 5) {
                return this.val$f.call(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4]);
            }
            throw new RuntimeException("Func5 expecting 5 arguments.");
        }
    }

    /* renamed from: rx.functions.Functions.7 */
    static final class C11587 implements FuncN<R> {
        final /* synthetic */ Func6 val$f;

        C11587(Func6 func6) {
            this.val$f = func6;
        }

        public R call(Object... objArr) {
            if (objArr.length == 6) {
                return this.val$f.call(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5]);
            }
            throw new RuntimeException("Func6 expecting 6 arguments.");
        }
    }

    /* renamed from: rx.functions.Functions.8 */
    static final class C11598 implements FuncN<R> {
        final /* synthetic */ Func7 val$f;

        C11598(Func7 func7) {
            this.val$f = func7;
        }

        public R call(Object... objArr) {
            if (objArr.length == 7) {
                return this.val$f.call(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5], objArr[6]);
            }
            throw new RuntimeException("Func7 expecting 7 arguments.");
        }
    }

    /* renamed from: rx.functions.Functions.9 */
    static final class C11609 implements FuncN<R> {
        final /* synthetic */ Func8 val$f;

        C11609(Func8 func8) {
            this.val$f = func8;
        }

        public R call(Object... objArr) {
            if (objArr.length == 8) {
                return this.val$f.call(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5], objArr[6], objArr[7]);
            }
            throw new RuntimeException("Func8 expecting 8 arguments.");
        }
    }

    private Functions() {
        throw new IllegalStateException("No instances!");
    }

    public static FuncN<Void> fromAction(Action0 action0) {
        return new AnonymousClass11(action0);
    }

    public static <T0> FuncN<Void> fromAction(Action1<? super T0> action1) {
        return new AnonymousClass12(action1);
    }

    public static <T0, T1> FuncN<Void> fromAction(Action2<? super T0, ? super T1> action2) {
        return new AnonymousClass13(action2);
    }

    public static <T0, T1, T2> FuncN<Void> fromAction(Action3<? super T0, ? super T1, ? super T2> action3) {
        return new AnonymousClass14(action3);
    }

    public static <R> FuncN<R> fromFunc(Func0<? extends R> func0) {
        return new C11521(func0);
    }

    public static <T0, R> FuncN<R> fromFunc(Func1<? super T0, ? extends R> func1) {
        return new C11532(func1);
    }

    public static <T0, T1, R> FuncN<R> fromFunc(Func2<? super T0, ? super T1, ? extends R> func2) {
        return new C11543(func2);
    }

    public static <T0, T1, T2, R> FuncN<R> fromFunc(Func3<? super T0, ? super T1, ? super T2, ? extends R> func3) {
        return new C11554(func3);
    }

    public static <T0, T1, T2, T3, R> FuncN<R> fromFunc(Func4<? super T0, ? super T1, ? super T2, ? super T3, ? extends R> func4) {
        return new C11565(func4);
    }

    public static <T0, T1, T2, T3, T4, R> FuncN<R> fromFunc(Func5<? super T0, ? super T1, ? super T2, ? super T3, ? super T4, ? extends R> func5) {
        return new C11576(func5);
    }

    public static <T0, T1, T2, T3, T4, T5, R> FuncN<R> fromFunc(Func6<? super T0, ? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> func6) {
        return new C11587(func6);
    }

    public static <T0, T1, T2, T3, T4, T5, T6, R> FuncN<R> fromFunc(Func7<? super T0, ? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> func7) {
        return new C11598(func7);
    }

    public static <T0, T1, T2, T3, T4, T5, T6, T7, R> FuncN<R> fromFunc(Func8<? super T0, ? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> func8) {
        return new C11609(func8);
    }

    public static <T0, T1, T2, T3, T4, T5, T6, T7, T8, R> FuncN<R> fromFunc(Func9<? super T0, ? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? extends R> func9) {
        return new AnonymousClass10(func9);
    }
}
