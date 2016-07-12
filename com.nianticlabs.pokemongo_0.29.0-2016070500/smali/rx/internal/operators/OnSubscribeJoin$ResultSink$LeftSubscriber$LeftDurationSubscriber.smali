.class final Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber$LeftDurationSubscriber;
.super Lrx/Subscriber;
.source "OnSubscribeJoin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LeftDurationSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TT",
        "LeftDuration;",
        ">;"
    }
.end annotation


# instance fields
.field final id:I

.field once:Z

.field final synthetic this$2:Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;


# direct methods
.method public constructor <init>(Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;I)V
    .locals 1
    .param p2, "id"    # I

    .prologue
    .line 189
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber$LeftDurationSubscriber;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.LeftSubscriber.LeftDurationSubscriber;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber$LeftDurationSubscriber;->this$2:Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber$LeftDurationSubscriber;->once:Z

    .line 190
    iput p2, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber$LeftDurationSubscriber;->id:I

    .line 191
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 205
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber$LeftDurationSubscriber;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.LeftSubscriber.LeftDurationSubscriber;"
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber$LeftDurationSubscriber;->once:Z

    if-eqz v0, :cond_0

    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber$LeftDurationSubscriber;->once:Z

    .line 207
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber$LeftDurationSubscriber;->this$2:Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;

    iget v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber$LeftDurationSubscriber;->id:I

    invoke-virtual {v0, v1, p0}, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;->expire(ILrx/Subscription;)V

    .line 209
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 200
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber$LeftDurationSubscriber;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.LeftSubscriber.LeftDurationSubscriber;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber$LeftDurationSubscriber;->this$2:Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 201
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "LeftDuration;",
            ")V"
        }
    .end annotation

    .prologue
    .line 195
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber$LeftDurationSubscriber;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.LeftSubscriber.LeftDurationSubscriber;"
    .local p1, "args":Ljava/lang/Object;, "TTLeftDuration;"
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber$LeftDurationSubscriber;->onCompleted()V

    .line 196
    return-void
.end method
