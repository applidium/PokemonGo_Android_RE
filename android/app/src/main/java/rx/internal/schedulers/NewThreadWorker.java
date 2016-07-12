package rx.internal.schedulers;

import com.google.android.gms.location.LocationStatusCodes;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import rx.Scheduler.Worker;
import rx.Subscription;
import rx.exceptions.Exceptions;
import rx.functions.Action0;
import rx.internal.util.RxThreadFactory;
import rx.internal.util.SubscriptionList;
import rx.plugins.RxJavaPlugins;
import rx.plugins.RxJavaSchedulersHook;
import rx.subscriptions.CompositeSubscription;
import rx.subscriptions.Subscriptions;

public class NewThreadWorker extends Worker implements Subscription {
    private static final ConcurrentHashMap<ScheduledThreadPoolExecutor, ScheduledThreadPoolExecutor> EXECUTORS;
    private static final String FREQUENCY_KEY = "rx.scheduler.jdk6.purge-frequency-millis";
    private static final AtomicReference<ScheduledExecutorService> PURGE;
    private static final boolean PURGE_FORCE;
    private static final String PURGE_FORCE_KEY = "rx.scheduler.jdk6.purge-force";
    public static final int PURGE_FREQUENCY;
    private static final String PURGE_THREAD_PREFIX = "RxSchedulerPurge-";
    private final ScheduledExecutorService executor;
    volatile boolean isUnsubscribed;
    private final RxJavaSchedulersHook schedulersHook;

    /* renamed from: rx.internal.schedulers.NewThreadWorker.1 */
    static final class C13471 implements Runnable {
        C13471() {
        }

        public void run() {
            NewThreadWorker.purgeExecutors();
        }
    }

    static {
        EXECUTORS = new ConcurrentHashMap();
        PURGE = new AtomicReference();
        PURGE_FORCE = Boolean.getBoolean(PURGE_FORCE_KEY);
        PURGE_FREQUENCY = Integer.getInteger(FREQUENCY_KEY, LocationStatusCodes.GEOFENCE_NOT_AVAILABLE).intValue();
    }

    public NewThreadWorker(ThreadFactory threadFactory) {
        ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(1, threadFactory);
        if (!tryEnableCancelPolicy(newScheduledThreadPool) && (newScheduledThreadPool instanceof ScheduledThreadPoolExecutor)) {
            registerExecutor((ScheduledThreadPoolExecutor) newScheduledThreadPool);
        }
        this.schedulersHook = RxJavaPlugins.getInstance().getSchedulersHook();
        this.executor = newScheduledThreadPool;
    }

    public static void deregisterExecutor(ScheduledExecutorService scheduledExecutorService) {
        EXECUTORS.remove(scheduledExecutorService);
    }

    static void purgeExecutors() {
        try {
            Iterator it = EXECUTORS.keySet().iterator();
            while (it.hasNext()) {
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = (ScheduledThreadPoolExecutor) it.next();
                if (scheduledThreadPoolExecutor.isShutdown()) {
                    it.remove();
                } else {
                    scheduledThreadPoolExecutor.purge();
                }
            }
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            RxJavaPlugins.getInstance().getErrorHandler().handleError(th);
        }
    }

    public static void registerExecutor(ScheduledThreadPoolExecutor scheduledThreadPoolExecutor) {
        while (((ScheduledExecutorService) PURGE.get()) == null) {
            ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(1, new RxThreadFactory(PURGE_THREAD_PREFIX));
            if (PURGE.compareAndSet(null, newScheduledThreadPool)) {
                newScheduledThreadPool.scheduleAtFixedRate(new C13471(), (long) PURGE_FREQUENCY, (long) PURGE_FREQUENCY, TimeUnit.MILLISECONDS);
                break;
            }
        }
        EXECUTORS.putIfAbsent(scheduledThreadPoolExecutor, scheduledThreadPoolExecutor);
    }

    public static boolean tryEnableCancelPolicy(ScheduledExecutorService scheduledExecutorService) {
        if (!PURGE_FORCE) {
            Method[] methods = scheduledExecutorService.getClass().getMethods();
            int length = methods.length;
            for (int i = PURGE_FREQUENCY; i < length; i++) {
                Method method = methods[i];
                if (method.getName().equals("setRemoveOnCancelPolicy") && method.getParameterTypes().length == 1 && method.getParameterTypes()[PURGE_FREQUENCY] == Boolean.TYPE) {
                    try {
                        method.invoke(scheduledExecutorService, new Object[]{Boolean.valueOf(true)});
                        return true;
                    } catch (Throwable e) {
                        RxJavaPlugins.getInstance().getErrorHandler().handleError(e);
                    }
                }
            }
        }
        return PURGE_FORCE;
    }

    public boolean isUnsubscribed() {
        return this.isUnsubscribed;
    }

    public Subscription schedule(Action0 action0) {
        return schedule(action0, 0, null);
    }

    public Subscription schedule(Action0 action0, long j, TimeUnit timeUnit) {
        return this.isUnsubscribed ? Subscriptions.unsubscribed() : scheduleActual(action0, j, timeUnit);
    }

    public ScheduledAction scheduleActual(Action0 action0, long j, TimeUnit timeUnit) {
        Runnable scheduledAction = new ScheduledAction(this.schedulersHook.onSchedule(action0));
        scheduledAction.add(j <= 0 ? this.executor.submit(scheduledAction) : this.executor.schedule(scheduledAction, j, timeUnit));
        return scheduledAction;
    }

    public ScheduledAction scheduleActual(Action0 action0, long j, TimeUnit timeUnit, SubscriptionList subscriptionList) {
        Runnable scheduledAction = new ScheduledAction(this.schedulersHook.onSchedule(action0), subscriptionList);
        subscriptionList.add(scheduledAction);
        scheduledAction.add(j <= 0 ? this.executor.submit(scheduledAction) : this.executor.schedule(scheduledAction, j, timeUnit));
        return scheduledAction;
    }

    public ScheduledAction scheduleActual(Action0 action0, long j, TimeUnit timeUnit, CompositeSubscription compositeSubscription) {
        Runnable scheduledAction = new ScheduledAction(this.schedulersHook.onSchedule(action0), compositeSubscription);
        compositeSubscription.add(scheduledAction);
        scheduledAction.add(j <= 0 ? this.executor.submit(scheduledAction) : this.executor.schedule(scheduledAction, j, timeUnit));
        return scheduledAction;
    }

    public void unsubscribe() {
        this.isUnsubscribed = true;
        this.executor.shutdownNow();
        deregisterExecutor(this.executor);
    }
}
