.class Lrx/internal/operators/OperatorMulticast$3;
.super Lrx/Subscriber;
.source "OperatorMulticast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorMulticast;->connect(Lrx/functions/Action1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorMulticast;

.field final synthetic val$s:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorMulticast;Lrx/Subscriber;Lrx/Subscriber;)V
    .locals 0

    .prologue
    .line 118
    .local p0, "this":Lrx/internal/operators/OperatorMulticast$3;, "Lrx/internal/operators/OperatorMulticast.3;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorMulticast$3;->this$0:Lrx/internal/operators/OperatorMulticast;

    iput-object p3, p0, Lrx/internal/operators/OperatorMulticast$3;->val$s:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 129
    .local p0, "this":Lrx/internal/operators/OperatorMulticast$3;, "Lrx/internal/operators/OperatorMulticast.3;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMulticast$3;->val$s:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 130
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 125
    .local p0, "this":Lrx/internal/operators/OperatorMulticast$3;, "Lrx/internal/operators/OperatorMulticast.3;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMulticast$3;->val$s:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 126
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Lrx/internal/operators/OperatorMulticast$3;, "Lrx/internal/operators/OperatorMulticast.3;"
    .local p1, "t":Ljava/lang/Object;, "TR;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMulticast$3;->val$s:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 122
    return-void
.end method
