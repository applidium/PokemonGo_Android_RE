.class Lrx/internal/operators/OnSubscribeAmb$2;
.super Ljava/lang/Object;
.source "OnSubscribeAmb.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OnSubscribeAmb;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OnSubscribeAmb;


# direct methods
.method constructor <init>(Lrx/internal/operators/OnSubscribeAmb;)V
    .locals 0

    .prologue
    .line 408
    .local p0, "this":Lrx/internal/operators/OnSubscribeAmb$2;, "Lrx/internal/operators/OnSubscribeAmb.2;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeAmb$2;->this$0:Lrx/internal/operators/OnSubscribeAmb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 5
    .param p1, "n"    # J

    .prologue
    .line 413
    .local p0, "this":Lrx/internal/operators/OnSubscribeAmb$2;, "Lrx/internal/operators/OnSubscribeAmb.2;"
    iget-object v3, p0, Lrx/internal/operators/OnSubscribeAmb$2;->this$0:Lrx/internal/operators/OnSubscribeAmb;

    iget-object v3, v3, Lrx/internal/operators/OnSubscribeAmb;->choice:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;

    .local v1, "c":Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;, "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber<TT;>;"
    if-eqz v1, :cond_1

    .line 415
    # invokes: Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;->requestMore(J)V
    invoke-static {v1, p1, p2}, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;->access$300(Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;J)V

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    iget-object v3, p0, Lrx/internal/operators/OnSubscribeAmb$2;->this$0:Lrx/internal/operators/OnSubscribeAmb;

    iget-object v3, v3, Lrx/internal/operators/OnSubscribeAmb;->selection:Lrx/internal/operators/OnSubscribeAmb$Selection;

    iget-object v3, v3, Lrx/internal/operators/OnSubscribeAmb$Selection;->ambSubscribers:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;

    .line 419
    .local v0, "ambSubscriber":Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;, "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber<TT;>;"
    invoke-virtual {v0}, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;->isUnsubscribed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 422
    iget-object v3, p0, Lrx/internal/operators/OnSubscribeAmb$2;->this$0:Lrx/internal/operators/OnSubscribeAmb;

    iget-object v3, v3, Lrx/internal/operators/OnSubscribeAmb;->choice:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_3

    .line 423
    # invokes: Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;->requestMore(J)V
    invoke-static {v0, p1, p2}, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;->access$300(Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;J)V

    goto :goto_0

    .line 428
    :cond_3
    # invokes: Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;->requestMore(J)V
    invoke-static {v0, p1, p2}, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;->access$300(Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;J)V

    goto :goto_1
.end method
