.class Lrx/internal/operators/OperatorSkipLast$1;
.super Lrx/Subscriber;
.source "OperatorSkipLast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorSkipLast;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field private final deque:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final on:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lrx/internal/operators/OperatorSkipLast;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorSkipLast;Lrx/Subscriber;Lrx/Subscriber;)V
    .locals 1

    .prologue
    .line 40
    .local p0, "this":Lrx/internal/operators/OperatorSkipLast$1;, "Lrx/internal/operators/OperatorSkipLast.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorSkipLast$1;->this$0:Lrx/internal/operators/OperatorSkipLast;

    iput-object p3, p0, Lrx/internal/operators/OperatorSkipLast$1;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 42
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorSkipLast$1;->on:Lrx/internal/operators/NotificationLite;

    .line 47
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorSkipLast$1;->deque:Ljava/util/Deque;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 51
    .local p0, "this":Lrx/internal/operators/OperatorSkipLast$1;, "Lrx/internal/operators/OperatorSkipLast.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSkipLast$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 52
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 56
    .local p0, "this":Lrx/internal/operators/OperatorSkipLast$1;, "Lrx/internal/operators/OperatorSkipLast.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSkipLast$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 57
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lrx/internal/operators/OperatorSkipLast$1;, "Lrx/internal/operators/OperatorSkipLast.1;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSkipLast$1;->this$0:Lrx/internal/operators/OperatorSkipLast;

    # getter for: Lrx/internal/operators/OperatorSkipLast;->count:I
    invoke-static {v0}, Lrx/internal/operators/OperatorSkipLast;->access$000(Lrx/internal/operators/OperatorSkipLast;)I

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lrx/internal/operators/OperatorSkipLast$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 74
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OperatorSkipLast$1;->deque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget-object v1, p0, Lrx/internal/operators/OperatorSkipLast$1;->this$0:Lrx/internal/operators/OperatorSkipLast;

    # getter for: Lrx/internal/operators/OperatorSkipLast;->count:I
    invoke-static {v1}, Lrx/internal/operators/OperatorSkipLast;->access$000(Lrx/internal/operators/OperatorSkipLast;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 69
    iget-object v0, p0, Lrx/internal/operators/OperatorSkipLast$1;->val$subscriber:Lrx/Subscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorSkipLast$1;->on:Lrx/internal/operators/NotificationLite;

    iget-object v2, p0, Lrx/internal/operators/OperatorSkipLast$1;->deque:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 73
    :goto_1
    iget-object v0, p0, Lrx/internal/operators/OperatorSkipLast$1;->deque:Ljava/util/Deque;

    iget-object v1, p0, Lrx/internal/operators/OperatorSkipLast$1;->on:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Deque;->offerLast(Ljava/lang/Object;)Z

    goto :goto_0

    .line 71
    :cond_1
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorSkipLast$1;->request(J)V

    goto :goto_1
.end method
