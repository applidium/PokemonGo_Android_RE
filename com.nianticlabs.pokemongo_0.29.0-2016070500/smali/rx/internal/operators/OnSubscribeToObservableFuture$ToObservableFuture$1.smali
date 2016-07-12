.class Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture$1;
.super Ljava/lang/Object;
.source "OnSubscribeToObservableFuture.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;


# direct methods
.method constructor <init>(Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;)V
    .locals 0

    .prologue
    .line 61
    .local p0, "this":Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture$1;, "Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture.1;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture$1;->this$0:Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 65
    .local p0, "this":Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture$1;, "Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture.1;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture$1;->this$0:Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;

    # getter for: Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;->that:Ljava/util/concurrent/Future;
    invoke-static {v0}, Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;->access$000(Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;)Ljava/util/concurrent/Future;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 66
    return-void
.end method
