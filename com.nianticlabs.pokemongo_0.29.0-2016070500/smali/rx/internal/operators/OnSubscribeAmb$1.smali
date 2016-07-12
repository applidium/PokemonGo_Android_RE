.class Lrx/internal/operators/OnSubscribeAmb$1;
.super Ljava/lang/Object;
.source "OnSubscribeAmb.java"

# interfaces
.implements Lrx/functions/Action0;


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
    .line 367
    .local p0, "this":Lrx/internal/operators/OnSubscribeAmb$1;, "Lrx/internal/operators/OnSubscribeAmb.1;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeAmb$1;->this$0:Lrx/internal/operators/OnSubscribeAmb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 372
    .local p0, "this":Lrx/internal/operators/OnSubscribeAmb$1;, "Lrx/internal/operators/OnSubscribeAmb.1;"
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeAmb$1;->this$0:Lrx/internal/operators/OnSubscribeAmb;

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeAmb;->choice:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;

    .local v0, "c":Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;, "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber<TT;>;"
    if-eqz v0, :cond_0

    .line 374
    invoke-virtual {v0}, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;->unsubscribe()V

    .line 380
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeAmb$1;->this$0:Lrx/internal/operators/OnSubscribeAmb;

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeAmb;->selection:Lrx/internal/operators/OnSubscribeAmb$Selection;

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeAmb$Selection;->ambSubscribers:Ljava/util/Collection;

    # invokes: Lrx/internal/operators/OnSubscribeAmb;->unsubscribeAmbSubscribers(Ljava/util/Collection;)V
    invoke-static {v1}, Lrx/internal/operators/OnSubscribeAmb;->access$100(Ljava/util/Collection;)V

    .line 381
    return-void
.end method
