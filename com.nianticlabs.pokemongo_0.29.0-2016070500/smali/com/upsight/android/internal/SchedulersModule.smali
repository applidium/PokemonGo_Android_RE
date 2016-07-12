.class public final Lcom/upsight/android/internal/SchedulersModule;
.super Ljava/lang/Object;
.source "SchedulersModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# static fields
.field private static final HANDLER_THREAD_NAME:Ljava/lang/String; = "UpsightCoreEventLoopThread"

.field public static final SCHEDULER_CALLBACK:Ljava/lang/String; = "callback"

.field public static final SCHEDULER_EXECUTION:Ljava/lang/String; = "execution"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method provideObserveOnScheduler()Lrx/Scheduler;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "callback"
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 41
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v0

    return-object v0
.end method

.method provideSubscribeOnScheduler()Lrx/Scheduler;
    .locals 3
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "execution"
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 32
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UpsightCoreEventLoopThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 33
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 34
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {v1}, Lrx/android/schedulers/HandlerScheduler;->from(Landroid/os/Handler;)Lrx/android/schedulers/HandlerScheduler;

    move-result-object v1

    return-object v1
.end method
