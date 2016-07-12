.class Lrx/internal/operators/OperatorDoOnRequest$1;
.super Ljava/lang/Object;
.source "OperatorDoOnRequest.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorDoOnRequest;->call(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorDoOnRequest;

.field final synthetic val$parent:Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorDoOnRequest;Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;)V
    .locals 0

    .prologue
    .line 42
    .local p0, "this":Lrx/internal/operators/OperatorDoOnRequest$1;, "Lrx/internal/operators/OperatorDoOnRequest.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorDoOnRequest$1;->this$0:Lrx/internal/operators/OperatorDoOnRequest;

    iput-object p2, p0, Lrx/internal/operators/OperatorDoOnRequest$1;->val$parent:Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 3
    .param p1, "n"    # J

    .prologue
    .line 46
    .local p0, "this":Lrx/internal/operators/OperatorDoOnRequest$1;, "Lrx/internal/operators/OperatorDoOnRequest.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorDoOnRequest$1;->this$0:Lrx/internal/operators/OperatorDoOnRequest;

    # getter for: Lrx/internal/operators/OperatorDoOnRequest;->request:Lrx/functions/Action1;
    invoke-static {v0}, Lrx/internal/operators/OperatorDoOnRequest;->access$100(Lrx/internal/operators/OperatorDoOnRequest;)Lrx/functions/Action1;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 47
    iget-object v0, p0, Lrx/internal/operators/OperatorDoOnRequest$1;->val$parent:Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;

    # invokes: Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;->requestMore(J)V
    invoke-static {v0, p1, p2}, Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;->access$200(Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;J)V

    .line 48
    return-void
.end method
