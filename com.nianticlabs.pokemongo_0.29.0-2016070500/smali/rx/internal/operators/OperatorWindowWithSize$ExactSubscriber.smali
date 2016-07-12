.class final Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;
.super Lrx/Subscriber;
.source "OperatorWindowWithSize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorWindowWithSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ExactSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-",
            "Lrx/Observable",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field count:I

.field volatile noWindow:Z

.field final synthetic this$0:Lrx/internal/operators/OperatorWindowWithSize;

.field window:Lrx/internal/operators/BufferUntilSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/BufferUntilSubscriber",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/internal/operators/OperatorWindowWithSize;Lrx/Subscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Lrx/Observable",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;, "Lrx/internal/operators/OperatorWindowWithSize<TT;>.ExactSubscriber;"
    .local p2, "child":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/Observable<TT;>;>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;->this$0:Lrx/internal/operators/OperatorWindowWithSize;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;->noWindow:Z

    .line 71
    iput-object p2, p0, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;->child:Lrx/Subscriber;

    .line 75
    return-void
.end method


# virtual methods
.method init()V
    .locals 2

    .prologue
    .line 77
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;, "Lrx/internal/operators/OperatorWindowWithSize<TT;>.ExactSubscriber;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;->child:Lrx/Subscriber;

    new-instance v1, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber$1;

    invoke-direct {v1, p0}, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber$1;-><init>(Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;)V

    invoke-static {v1}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 88
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;->child:Lrx/Subscriber;

    new-instance v1, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber$2;

    invoke-direct {v1, p0}, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber$2;-><init>(Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;)V

    invoke-virtual {v0, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 100
    return-void
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 135
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;, "Lrx/internal/operators/OperatorWindowWithSize<TT;>.ExactSubscriber;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;->window:Lrx/internal/operators/BufferUntilSubscriber;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;->window:Lrx/internal/operators/BufferUntilSubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/BufferUntilSubscriber;->onCompleted()V

    .line 138
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 139
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 127
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;, "Lrx/internal/operators/OperatorWindowWithSize<TT;>.ExactSubscriber;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;->window:Lrx/internal/operators/BufferUntilSubscriber;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;->window:Lrx/internal/operators/BufferUntilSubscriber;

    invoke-virtual {v0, p1}, Lrx/internal/operators/BufferUntilSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 130
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 131
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
    .line 108
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;, "Lrx/internal/operators/OperatorWindowWithSize<TT;>.ExactSubscriber;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;->window:Lrx/internal/operators/BufferUntilSubscriber;

    if-nez v0, :cond_0

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;->noWindow:Z

    .line 110
    invoke-static {}, Lrx/internal/operators/BufferUntilSubscriber;->create()Lrx/internal/operators/BufferUntilSubscriber;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;->window:Lrx/internal/operators/BufferUntilSubscriber;

    .line 111
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;->child:Lrx/Subscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;->window:Lrx/internal/operators/BufferUntilSubscriber;

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 113
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;->window:Lrx/internal/operators/BufferUntilSubscriber;

    invoke-virtual {v0, p1}, Lrx/internal/operators/BufferUntilSubscriber;->onNext(Ljava/lang/Object;)V

    .line 114
    iget v0, p0, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;->count:I

    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;->this$0:Lrx/internal/operators/OperatorWindowWithSize;

    iget v1, v1, Lrx/internal/operators/OperatorWindowWithSize;->size:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 115
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;->window:Lrx/internal/operators/BufferUntilSubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/BufferUntilSubscriber;->onCompleted()V

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;->window:Lrx/internal/operators/BufferUntilSubscriber;

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;->noWindow:Z

    .line 118
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;->unsubscribe()V

    .line 123
    :cond_1
    return-void
.end method

.method requestMore(J)V
    .locals 1
    .param p1, "n"    # J

    .prologue
    .line 103
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;, "Lrx/internal/operators/OperatorWindowWithSize<TT;>.ExactSubscriber;"
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorWindowWithSize$ExactSubscriber;->request(J)V

    .line 104
    return-void
.end method
