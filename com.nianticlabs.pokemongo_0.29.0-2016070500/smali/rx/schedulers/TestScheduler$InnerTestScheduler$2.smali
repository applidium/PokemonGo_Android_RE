.class Lrx/schedulers/TestScheduler$InnerTestScheduler$2;
.super Ljava/lang/Object;
.source "TestScheduler.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/schedulers/TestScheduler$InnerTestScheduler;->schedule(Lrx/functions/Action0;)Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/schedulers/TestScheduler$InnerTestScheduler;

.field final synthetic val$timedAction:Lrx/schedulers/TestScheduler$TimedAction;


# direct methods
.method constructor <init>(Lrx/schedulers/TestScheduler$InnerTestScheduler;Lrx/schedulers/TestScheduler$TimedAction;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lrx/schedulers/TestScheduler$InnerTestScheduler$2;->this$1:Lrx/schedulers/TestScheduler$InnerTestScheduler;

    iput-object p2, p0, Lrx/schedulers/TestScheduler$InnerTestScheduler$2;->val$timedAction:Lrx/schedulers/TestScheduler$TimedAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lrx/schedulers/TestScheduler$InnerTestScheduler$2;->this$1:Lrx/schedulers/TestScheduler$InnerTestScheduler;

    iget-object v0, v0, Lrx/schedulers/TestScheduler$InnerTestScheduler;->this$0:Lrx/schedulers/TestScheduler;

    # getter for: Lrx/schedulers/TestScheduler;->queue:Ljava/util/Queue;
    invoke-static {v0}, Lrx/schedulers/TestScheduler;->access$900(Lrx/schedulers/TestScheduler;)Ljava/util/Queue;

    move-result-object v0

    iget-object v1, p0, Lrx/schedulers/TestScheduler$InnerTestScheduler$2;->val$timedAction:Lrx/schedulers/TestScheduler$TimedAction;

    invoke-interface {v0, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 168
    return-void
.end method
