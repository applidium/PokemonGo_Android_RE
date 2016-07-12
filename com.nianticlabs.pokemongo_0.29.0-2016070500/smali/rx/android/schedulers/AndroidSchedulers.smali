.class public final Lrx/android/schedulers/AndroidSchedulers;
.super Ljava/lang/Object;
.source "AndroidSchedulers.java"


# static fields
.field private static final MAIN_THREAD_SCHEDULER:Lrx/Scheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    new-instance v0, Lrx/android/schedulers/HandlerScheduler;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lrx/android/schedulers/HandlerScheduler;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lrx/android/schedulers/AndroidSchedulers;->MAIN_THREAD_SCHEDULER:Lrx/Scheduler;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static mainThread()Lrx/Scheduler;
    .locals 2

    .prologue
    .line 32
    invoke-static {}, Lrx/android/plugins/RxAndroidPlugins;->getInstance()Lrx/android/plugins/RxAndroidPlugins;

    move-result-object v1

    invoke-virtual {v1}, Lrx/android/plugins/RxAndroidPlugins;->getSchedulersHook()Lrx/android/plugins/RxAndroidSchedulersHook;

    move-result-object v1

    invoke-virtual {v1}, Lrx/android/plugins/RxAndroidSchedulersHook;->getMainThreadScheduler()Lrx/Scheduler;

    move-result-object v0

    .line 34
    .local v0, "scheduler":Lrx/Scheduler;
    if-eqz v0, :cond_0

    .end local v0    # "scheduler":Lrx/Scheduler;
    :goto_0
    return-object v0

    .restart local v0    # "scheduler":Lrx/Scheduler;
    :cond_0
    sget-object v0, Lrx/android/schedulers/AndroidSchedulers;->MAIN_THREAD_SCHEDULER:Lrx/Scheduler;

    goto :goto_0
.end method
