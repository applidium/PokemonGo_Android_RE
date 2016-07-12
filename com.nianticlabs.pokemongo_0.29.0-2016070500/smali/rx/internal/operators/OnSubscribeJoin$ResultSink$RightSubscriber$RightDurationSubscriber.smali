.class final Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber$RightDurationSubscriber;
.super Lrx/Subscriber;
.source "OnSubscribeJoin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "RightDurationSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TTRightDuration;>;"
    }
.end annotation


# instance fields
.field final id:I

.field once:Z

.field final synthetic this$2:Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;


# direct methods
.method public constructor <init>(Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;I)V
    .locals 1
    .param p2, "id"    # I

    .prologue
    .line 301
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber$RightDurationSubscriber;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.RightSubscriber.RightDurationSubscriber;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber$RightDurationSubscriber;->this$2:Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 299
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber$RightDurationSubscriber;->once:Z

    .line 302
    iput p2, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber$RightDurationSubscriber;->id:I

    .line 303
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 317
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber$RightDurationSubscriber;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.RightSubscriber.RightDurationSubscriber;"
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber$RightDurationSubscriber;->once:Z

    if-eqz v0, :cond_0

    .line 318
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber$RightDurationSubscriber;->once:Z

    .line 319
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber$RightDurationSubscriber;->this$2:Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;

    iget v1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber$RightDurationSubscriber;->id:I

    invoke-virtual {v0, v1, p0}, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;->expire(ILrx/Subscription;)V

    .line 321
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 312
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber$RightDurationSubscriber;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.RightSubscriber.RightDurationSubscriber;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber$RightDurationSubscriber;->this$2:Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 313
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTRightDuration;)V"
        }
    .end annotation

    .prologue
    .line 307
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber$RightDurationSubscriber;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.RightSubscriber.RightDurationSubscriber;"
    .local p1, "args":Ljava/lang/Object;, "TTRightDuration;"
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber$RightDurationSubscriber;->onCompleted()V

    .line 308
    return-void
.end method
