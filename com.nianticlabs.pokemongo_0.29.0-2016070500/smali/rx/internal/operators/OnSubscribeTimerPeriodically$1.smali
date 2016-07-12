.class Lrx/internal/operators/OnSubscribeTimerPeriodically$1;
.super Ljava/lang/Object;
.source "OnSubscribeTimerPeriodically.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OnSubscribeTimerPeriodically;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field counter:J

.field final synthetic this$0:Lrx/internal/operators/OnSubscribeTimerPeriodically;

.field final synthetic val$child:Lrx/Subscriber;

.field final synthetic val$worker:Lrx/Scheduler$Worker;


# direct methods
.method constructor <init>(Lrx/internal/operators/OnSubscribeTimerPeriodically;Lrx/Subscriber;Lrx/Scheduler$Worker;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeTimerPeriodically$1;->this$0:Lrx/internal/operators/OnSubscribeTimerPeriodically;

    iput-object p2, p0, Lrx/internal/operators/OnSubscribeTimerPeriodically$1;->val$child:Lrx/Subscriber;

    iput-object p3, p0, Lrx/internal/operators/OnSubscribeTimerPeriodically$1;->val$worker:Lrx/Scheduler$Worker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 6

    .prologue
    .line 51
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeTimerPeriodically$1;->val$child:Lrx/Subscriber;

    iget-wide v2, p0, Lrx/internal/operators/OnSubscribeTimerPeriodically$1;->counter:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lrx/internal/operators/OnSubscribeTimerPeriodically$1;->counter:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeTimerPeriodically$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeTimerPeriodically$1;->val$worker:Lrx/Scheduler$Worker;

    invoke-virtual {v1}, Lrx/Scheduler$Worker;->unsubscribe()V

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lrx/internal/operators/OnSubscribeTimerPeriodically$1;->val$worker:Lrx/Scheduler$Worker;

    invoke-virtual {v2}, Lrx/Scheduler$Worker;->unsubscribe()V

    throw v1
.end method
