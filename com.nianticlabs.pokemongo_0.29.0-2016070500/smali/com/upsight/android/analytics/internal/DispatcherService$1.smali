.class Lcom/upsight/android/analytics/internal/DispatcherService$1;
.super Ljava/lang/Object;
.source "DispatcherService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/internal/DispatcherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/analytics/internal/DispatcherService;


# direct methods
.method constructor <init>(Lcom/upsight/android/analytics/internal/DispatcherService;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/DispatcherService$1;->this$0:Lcom/upsight/android/analytics/internal/DispatcherService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x61a8

    .line 48
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DispatcherService$1;->this$0:Lcom/upsight/android/analytics/internal/DispatcherService;

    iget-object v0, v0, Lcom/upsight/android/analytics/internal/DispatcherService;->mDispatcher:Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->hasPendingRecords()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DispatcherService$1;->this$0:Lcom/upsight/android/analytics/internal/DispatcherService;

    const/4 v1, 0x0

    # setter for: Lcom/upsight/android/analytics/internal/DispatcherService;->mDeadIntervalsInARow:I
    invoke-static {v0, v1}, Lcom/upsight/android/analytics/internal/DispatcherService;->access$002(Lcom/upsight/android/analytics/internal/DispatcherService;I)I

    .line 50
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DispatcherService$1;->this$0:Lcom/upsight/android/analytics/internal/DispatcherService;

    # getter for: Lcom/upsight/android/analytics/internal/DispatcherService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/upsight/android/analytics/internal/DispatcherService;->access$200(Lcom/upsight/android/analytics/internal/DispatcherService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DispatcherService$1;->this$0:Lcom/upsight/android/analytics/internal/DispatcherService;

    # getter for: Lcom/upsight/android/analytics/internal/DispatcherService;->mSelfStopTask:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/upsight/android/analytics/internal/DispatcherService;->access$100(Lcom/upsight/android/analytics/internal/DispatcherService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 59
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DispatcherService$1;->this$0:Lcom/upsight/android/analytics/internal/DispatcherService;

    # getter for: Lcom/upsight/android/analytics/internal/DispatcherService;->mDeadIntervalsInARow:I
    invoke-static {v0}, Lcom/upsight/android/analytics/internal/DispatcherService;->access$000(Lcom/upsight/android/analytics/internal/DispatcherService;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 53
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DispatcherService$1;->this$0:Lcom/upsight/android/analytics/internal/DispatcherService;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/internal/DispatcherService;->stopSelf()V

    goto :goto_0

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DispatcherService$1;->this$0:Lcom/upsight/android/analytics/internal/DispatcherService;

    # operator++ for: Lcom/upsight/android/analytics/internal/DispatcherService;->mDeadIntervalsInARow:I
    invoke-static {v0}, Lcom/upsight/android/analytics/internal/DispatcherService;->access$008(Lcom/upsight/android/analytics/internal/DispatcherService;)I

    .line 56
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DispatcherService$1;->this$0:Lcom/upsight/android/analytics/internal/DispatcherService;

    # getter for: Lcom/upsight/android/analytics/internal/DispatcherService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/upsight/android/analytics/internal/DispatcherService;->access$200(Lcom/upsight/android/analytics/internal/DispatcherService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DispatcherService$1;->this$0:Lcom/upsight/android/analytics/internal/DispatcherService;

    # getter for: Lcom/upsight/android/analytics/internal/DispatcherService;->mSelfStopTask:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/upsight/android/analytics/internal/DispatcherService;->access$100(Lcom/upsight/android/analytics/internal/DispatcherService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
