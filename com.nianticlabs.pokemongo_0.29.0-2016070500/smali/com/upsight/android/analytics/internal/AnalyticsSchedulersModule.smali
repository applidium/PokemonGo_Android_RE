.class public final Lcom/upsight/android/analytics/internal/AnalyticsSchedulersModule;
.super Ljava/lang/Object;
.source "AnalyticsSchedulersModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# static fields
.field private static final MAX_SENDING_THREADS_NUM:I = 0x5

.field public static final SCHEDULING_EXECUTOR:Ljava/lang/String; = "dispatcher-batching"

.field private static final SENDER_THREAD_NAME:Ljava/lang/String; = "DispatcherSenderThread-"

.field public static final SENDING_EXECUTOR:Ljava/lang/String; = "dispatcher-threadpool"

.field private static final SENDING_THREAD_IDLE_TIME:I = 0xf

.field private static final STD_SENDING_THREADS_NUM:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provideSchedulingExecutor()Lrx/Scheduler;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "dispatcher-batching"
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 61
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-static {v0}, Lrx/schedulers/Schedulers;->from(Ljava/util/concurrent/Executor;)Lrx/Scheduler;

    move-result-object v0

    return-object v0
.end method

.method public provideSendingExecutor()Lrx/Scheduler;
    .locals 9
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "dispatcher-threadpool"
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 41
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    const/4 v3, 0x5

    const-wide/16 v4, 0xf

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lcom/upsight/android/analytics/internal/AnalyticsSchedulersModule$1;

    invoke-direct {v8, p0}, Lcom/upsight/android/analytics/internal/AnalyticsSchedulersModule$1;-><init>(Lcom/upsight/android/analytics/internal/AnalyticsSchedulersModule;)V

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-static {v1}, Lrx/schedulers/Schedulers;->from(Ljava/util/concurrent/Executor;)Lrx/Scheduler;

    move-result-object v0

    return-object v0
.end method
