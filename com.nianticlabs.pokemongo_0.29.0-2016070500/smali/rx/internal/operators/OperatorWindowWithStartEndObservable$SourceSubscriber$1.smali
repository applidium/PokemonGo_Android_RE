.class Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber$1;
.super Lrx/Subscriber;
.source "OperatorWindowWithStartEndObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->beginWindow(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TV;>;"
    }
.end annotation


# instance fields
.field once:Z

.field final synthetic this$1:Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;

.field final synthetic val$s:Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;)V
    .locals 1

    .prologue
    .line 189
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber$1;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber$1;->this$1:Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;

    iput-object p2, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber$1;->val$s:Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber$1;->once:Z

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 203
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber$1;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber.1;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber$1;->once:Z

    if-eqz v0, :cond_0

    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber$1;->once:Z

    .line 205
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber$1;->this$1:Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber$1;->val$s:Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;

    invoke-virtual {v0, v1}, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->endWindow(Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject;)V

    .line 206
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber$1;->this$1:Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;

    iget-object v0, v0, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber;->csub:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0, p0}, Lrx/subscriptions/CompositeSubscription;->remove(Lrx/Subscription;)V

    .line 208
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 199
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber$1;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber.1;"
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber$1;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber.1;"
    .local p1, "t":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber$1;->onCompleted()V

    .line 194
    return-void
.end method
