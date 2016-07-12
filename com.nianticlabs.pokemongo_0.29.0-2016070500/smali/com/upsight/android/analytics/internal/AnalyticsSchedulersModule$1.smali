.class Lcom/upsight/android/analytics/internal/AnalyticsSchedulersModule$1;
.super Ljava/lang/Object;
.source "AnalyticsSchedulersModule.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/analytics/internal/AnalyticsSchedulersModule;->provideSendingExecutor()Lrx/Scheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mSerial:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic this$0:Lcom/upsight/android/analytics/internal/AnalyticsSchedulersModule;


# direct methods
.method constructor <init>(Lcom/upsight/android/analytics/internal/AnalyticsSchedulersModule;)V
    .locals 1

    .prologue
    .line 47
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/AnalyticsSchedulersModule$1;->this$0:Lcom/upsight/android/analytics/internal/AnalyticsSchedulersModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/AnalyticsSchedulersModule$1;->mSerial:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 52
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DispatcherSenderThread-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/AnalyticsSchedulersModule$1;->mSerial:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method
