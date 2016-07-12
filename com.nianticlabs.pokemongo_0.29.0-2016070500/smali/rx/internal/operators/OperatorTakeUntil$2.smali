.class Lrx/internal/operators/OperatorTakeUntil$2;
.super Lrx/Subscriber;
.source "OperatorTakeUntil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorTakeUntil;->call(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorTakeUntil;

.field final synthetic val$main:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorTakeUntil;Lrx/Subscriber;)V
    .locals 0

    .prologue
    .line 64
    .local p0, "this":Lrx/internal/operators/OperatorTakeUntil$2;, "Lrx/internal/operators/OperatorTakeUntil.2;"
    iput-object p1, p0, Lrx/internal/operators/OperatorTakeUntil$2;->this$0:Lrx/internal/operators/OperatorTakeUntil;

    iput-object p2, p0, Lrx/internal/operators/OperatorTakeUntil$2;->val$main:Lrx/Subscriber;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 72
    .local p0, "this":Lrx/internal/operators/OperatorTakeUntil$2;, "Lrx/internal/operators/OperatorTakeUntil.2;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeUntil$2;->val$main:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 73
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 77
    .local p0, "this":Lrx/internal/operators/OperatorTakeUntil$2;, "Lrx/internal/operators/OperatorTakeUntil.2;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeUntil$2;->val$main:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 78
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lrx/internal/operators/OperatorTakeUntil$2;, "Lrx/internal/operators/OperatorTakeUntil.2;"
    .local p1, "t":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorTakeUntil$2;->onCompleted()V

    .line 83
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 67
    .local p0, "this":Lrx/internal/operators/OperatorTakeUntil$2;, "Lrx/internal/operators/OperatorTakeUntil.2;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorTakeUntil$2;->request(J)V

    .line 68
    return-void
.end method
