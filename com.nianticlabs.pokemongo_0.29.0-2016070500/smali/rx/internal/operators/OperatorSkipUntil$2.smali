.class Lrx/internal/operators/OperatorSkipUntil$2;
.super Lrx/Subscriber;
.source "OperatorSkipUntil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorSkipUntil;->call(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorSkipUntil;

.field final synthetic val$gate:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$s:Lrx/observers/SerializedSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorSkipUntil;Lrx/Subscriber;Ljava/util/concurrent/atomic/AtomicBoolean;Lrx/observers/SerializedSubscriber;)V
    .locals 0

    .prologue
    .line 69
    .local p0, "this":Lrx/internal/operators/OperatorSkipUntil$2;, "Lrx/internal/operators/OperatorSkipUntil.2;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorSkipUntil$2;->this$0:Lrx/internal/operators/OperatorSkipUntil;

    iput-object p3, p0, Lrx/internal/operators/OperatorSkipUntil$2;->val$gate:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lrx/internal/operators/OperatorSkipUntil$2;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 87
    .local p0, "this":Lrx/internal/operators/OperatorSkipUntil$2;, "Lrx/internal/operators/OperatorSkipUntil.2;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSkipUntil$2;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v0}, Lrx/observers/SerializedSubscriber;->onCompleted()V

    .line 88
    invoke-virtual {p0}, Lrx/internal/operators/OperatorSkipUntil$2;->unsubscribe()V

    .line 89
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 81
    .local p0, "this":Lrx/internal/operators/OperatorSkipUntil$2;, "Lrx/internal/operators/OperatorSkipUntil.2;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSkipUntil$2;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v0, p1}, Lrx/observers/SerializedSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 82
    invoke-virtual {p0}, Lrx/internal/operators/OperatorSkipUntil$2;->unsubscribe()V

    .line 83
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lrx/internal/operators/OperatorSkipUntil$2;, "Lrx/internal/operators/OperatorSkipUntil.2;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSkipUntil$2;->val$gate:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lrx/internal/operators/OperatorSkipUntil$2;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v0, p1}, Lrx/observers/SerializedSubscriber;->onNext(Ljava/lang/Object;)V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorSkipUntil$2;->request(J)V

    goto :goto_0
.end method
