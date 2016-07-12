package rx.plugins;

class RxJavaObservableExecutionHookDefault extends RxJavaObservableExecutionHook {
    private static RxJavaObservableExecutionHookDefault INSTANCE;

    static {
        INSTANCE = new RxJavaObservableExecutionHookDefault();
    }

    RxJavaObservableExecutionHookDefault() {
    }

    public static RxJavaObservableExecutionHook getInstance() {
        return INSTANCE;
    }
}
