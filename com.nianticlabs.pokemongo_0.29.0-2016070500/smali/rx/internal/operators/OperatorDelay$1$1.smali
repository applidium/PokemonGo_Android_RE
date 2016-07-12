.class Lrx/internal/operators/OperatorDelay$1$1;
.super Ljava/lang/Object;
.source "OperatorDelay.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorDelay$1;->onCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/OperatorDelay$1;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorDelay$1;)V
    .locals 0

    .prologue
    .line 57
    .local p0, "this":Lrx/internal/operators/OperatorDelay$1$1;, "Lrx/internal/operators/OperatorDelay$1.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorDelay$1$1;->this$1:Lrx/internal/operators/OperatorDelay$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 61
    .local p0, "this":Lrx/internal/operators/OperatorDelay$1$1;, "Lrx/internal/operators/OperatorDelay$1.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorDelay$1$1;->this$1:Lrx/internal/operators/OperatorDelay$1;

    iget-boolean v0, v0, Lrx/internal/operators/OperatorDelay$1;->done:Z

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lrx/internal/operators/OperatorDelay$1$1;->this$1:Lrx/internal/operators/OperatorDelay$1;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lrx/internal/operators/OperatorDelay$1;->done:Z

    .line 63
    iget-object v0, p0, Lrx/internal/operators/OperatorDelay$1$1;->this$1:Lrx/internal/operators/OperatorDelay$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorDelay$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 65
    :cond_0
    return-void
.end method
