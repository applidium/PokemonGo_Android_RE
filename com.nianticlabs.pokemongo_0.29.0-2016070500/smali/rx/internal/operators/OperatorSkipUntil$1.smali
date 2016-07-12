.class Lrx/internal/operators/OperatorSkipUntil$1;
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
        "<TU;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorSkipUntil;

.field final synthetic val$gate:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$s:Lrx/observers/SerializedSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorSkipUntil;Ljava/util/concurrent/atomic/AtomicBoolean;Lrx/observers/SerializedSubscriber;)V
    .locals 0

    .prologue
    .line 47
    .local p0, "this":Lrx/internal/operators/OperatorSkipUntil$1;, "Lrx/internal/operators/OperatorSkipUntil.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorSkipUntil$1;->this$0:Lrx/internal/operators/OperatorSkipUntil;

    iput-object p2, p0, Lrx/internal/operators/OperatorSkipUntil$1;->val$gate:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lrx/internal/operators/OperatorSkipUntil$1;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 0

    .prologue
    .line 63
    .local p0, "this":Lrx/internal/operators/OperatorSkipUntil$1;, "Lrx/internal/operators/OperatorSkipUntil.1;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorSkipUntil$1;->unsubscribe()V

    .line 64
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 57
    .local p0, "this":Lrx/internal/operators/OperatorSkipUntil$1;, "Lrx/internal/operators/OperatorSkipUntil.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSkipUntil$1;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v0, p1}, Lrx/observers/SerializedSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 58
    iget-object v0, p0, Lrx/internal/operators/OperatorSkipUntil$1;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v0}, Lrx/observers/SerializedSubscriber;->unsubscribe()V

    .line 59
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lrx/internal/operators/OperatorSkipUntil$1;, "Lrx/internal/operators/OperatorSkipUntil.1;"
    .local p1, "t":Ljava/lang/Object;, "TU;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSkipUntil$1;->val$gate:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 52
    invoke-virtual {p0}, Lrx/internal/operators/OperatorSkipUntil$1;->unsubscribe()V

    .line 53
    return-void
.end method
