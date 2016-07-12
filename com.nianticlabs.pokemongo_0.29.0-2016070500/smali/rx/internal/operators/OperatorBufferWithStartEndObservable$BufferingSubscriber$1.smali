.class Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber$1;
.super Lrx/Subscriber;
.source "OperatorBufferWithStartEndObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;->startBuffer(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TTClosing;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;

.field final synthetic val$chunk:Ljava/util/List;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 169
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber$1;, "Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber$1;->this$1:Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;

    iput-object p2, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber$1;->val$chunk:Ljava/util/List;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 184
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber$1;, "Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber$1;->this$1:Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;

    iget-object v0, v0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;->closingSubscriptions:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0, p0}, Lrx/subscriptions/CompositeSubscription;->remove(Lrx/Subscription;)V

    .line 185
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber$1;->this$1:Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber$1;->val$chunk:Ljava/util/List;

    invoke-virtual {v0, v1}, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;->endBuffer(Ljava/util/List;)V

    .line 186
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 179
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber$1;, "Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber$1;->this$1:Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 180
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTClosing;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber$1;, "Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber.1;"
    .local p1, "t":Ljava/lang/Object;, "TTClosing;"
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber$1;->this$1:Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;

    iget-object v0, v0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;->closingSubscriptions:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0, p0}, Lrx/subscriptions/CompositeSubscription;->remove(Lrx/Subscription;)V

    .line 174
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber$1;->this$1:Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber$1;->val$chunk:Ljava/util/List;

    invoke-virtual {v0, v1}, Lrx/internal/operators/OperatorBufferWithStartEndObservable$BufferingSubscriber;->endBuffer(Ljava/util/List;)V

    .line 175
    return-void
.end method
