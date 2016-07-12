package rx.android.schedulers;

import android.os.Handler;
import android.os.Looper;
import rx.Scheduler;
import rx.android.plugins.RxAndroidPlugins;

public final class AndroidSchedulers {
    private static final Scheduler MAIN_THREAD_SCHEDULER;

    static {
        MAIN_THREAD_SCHEDULER = new HandlerScheduler(new Handler(Looper.getMainLooper()));
    }

    private AndroidSchedulers() {
        throw new AssertionError("No instances");
    }

    public static Scheduler mainThread() {
        Scheduler mainThreadScheduler = RxAndroidPlugins.getInstance().getSchedulersHook().getMainThreadScheduler();
        return mainThreadScheduler != null ? mainThreadScheduler : MAIN_THREAD_SCHEDULER;
    }
}
