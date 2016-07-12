package rx.schedulers;

import java.util.concurrent.Executor;
import rx.Scheduler;
import rx.internal.schedulers.EventLoopsScheduler;
import rx.plugins.RxJavaPlugins;

public final class Schedulers {
    private static final Schedulers INSTANCE;
    private final Scheduler computationScheduler;
    private final Scheduler ioScheduler;
    private final Scheduler newThreadScheduler;

    static {
        INSTANCE = new Schedulers();
    }

    private Schedulers() {
        Scheduler computationScheduler = RxJavaPlugins.getInstance().getSchedulersHook().getComputationScheduler();
        if (computationScheduler != null) {
            this.computationScheduler = computationScheduler;
        } else {
            this.computationScheduler = new EventLoopsScheduler();
        }
        computationScheduler = RxJavaPlugins.getInstance().getSchedulersHook().getIOScheduler();
        if (computationScheduler != null) {
            this.ioScheduler = computationScheduler;
        } else {
            this.ioScheduler = new CachedThreadScheduler();
        }
        computationScheduler = RxJavaPlugins.getInstance().getSchedulersHook().getNewThreadScheduler();
        if (computationScheduler != null) {
            this.newThreadScheduler = computationScheduler;
        } else {
            this.newThreadScheduler = NewThreadScheduler.instance();
        }
    }

    public static Scheduler computation() {
        return INSTANCE.computationScheduler;
    }

    public static Scheduler from(Executor executor) {
        return new ExecutorScheduler(executor);
    }

    public static Scheduler immediate() {
        return ImmediateScheduler.instance();
    }

    public static Scheduler io() {
        return INSTANCE.ioScheduler;
    }

    public static Scheduler newThread() {
        return INSTANCE.newThreadScheduler;
    }

    public static TestScheduler test() {
        return new TestScheduler();
    }

    public static Scheduler trampoline() {
        return TrampolineScheduler.instance();
    }
}
