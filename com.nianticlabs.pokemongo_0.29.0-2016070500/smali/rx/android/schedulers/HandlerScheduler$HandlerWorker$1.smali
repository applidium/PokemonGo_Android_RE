.class Lrx/android/schedulers/HandlerScheduler$HandlerWorker$1;
.super Ljava/lang/Object;
.source "HandlerScheduler.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/android/schedulers/HandlerScheduler$HandlerWorker;->schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/android/schedulers/HandlerScheduler$HandlerWorker;

.field final synthetic val$scheduledAction:Lrx/internal/schedulers/ScheduledAction;


# direct methods
.method constructor <init>(Lrx/android/schedulers/HandlerScheduler$HandlerWorker;Lrx/internal/schedulers/ScheduledAction;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lrx/android/schedulers/HandlerScheduler$HandlerWorker$1;->this$0:Lrx/android/schedulers/HandlerScheduler$HandlerWorker;

    iput-object p2, p0, Lrx/android/schedulers/HandlerScheduler$HandlerWorker$1;->val$scheduledAction:Lrx/internal/schedulers/ScheduledAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lrx/android/schedulers/HandlerScheduler$HandlerWorker$1;->this$0:Lrx/android/schedulers/HandlerScheduler$HandlerWorker;

    # getter for: Lrx/android/schedulers/HandlerScheduler$HandlerWorker;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lrx/android/schedulers/HandlerScheduler$HandlerWorker;->access$000(Lrx/android/schedulers/HandlerScheduler$HandlerWorker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lrx/android/schedulers/HandlerScheduler$HandlerWorker$1;->val$scheduledAction:Lrx/internal/schedulers/ScheduledAction;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 84
    return-void
.end method
