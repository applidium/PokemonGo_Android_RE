.class Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler$1;
.super Ljava/lang/Object;
.source "TrampolineScheduler.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;->enqueue(Lrx/functions/Action0;J)Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;

.field final synthetic val$timedAction:Lrx/schedulers/TrampolineScheduler$TimedAction;


# direct methods
.method constructor <init>(Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;Lrx/schedulers/TrampolineScheduler$TimedAction;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler$1;->this$0:Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;

    iput-object p2, p0, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler$1;->val$timedAction:Lrx/schedulers/TrampolineScheduler$TimedAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler$1;->this$0:Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;

    # getter for: Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;->queue:Ljava/util/concurrent/PriorityBlockingQueue;
    invoke-static {v0}, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;->access$200(Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;)Ljava/util/concurrent/PriorityBlockingQueue;

    move-result-object v0

    iget-object v1, p0, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler$1;->val$timedAction:Lrx/schedulers/TrampolineScheduler$TimedAction;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 91
    return-void
.end method
