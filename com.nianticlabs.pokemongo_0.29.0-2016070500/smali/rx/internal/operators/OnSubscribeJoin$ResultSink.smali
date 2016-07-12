.class final Lrx/internal/operators/OnSubscribeJoin$ResultSink;
.super Ljava/lang/Object;
.source "OnSubscribeJoin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeJoin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ResultSink"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;,
        Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;
    }
.end annotation


# instance fields
.field final group:Lrx/subscriptions/CompositeSubscription;

.field final guard:Ljava/lang/Object;

.field leftDone:Z

.field leftId:I

.field final leftMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "TT",
            "Left;",
            ">;"
        }
    .end annotation
.end field

.field rightDone:Z

.field rightId:I

.field final rightMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "TTRight;>;"
        }
    .end annotation
.end field

.field final subscriber:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TR;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lrx/internal/operators/OnSubscribeJoin;


# direct methods
.method public constructor <init>(Lrx/internal/operators/OnSubscribeJoin;Lrx/Subscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin$ResultSink;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink;"
    .local p2, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->this$0:Lrx/internal/operators/OnSubscribeJoin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->guard:Ljava/lang/Object;

    .line 87
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->subscriber:Lrx/Subscriber;

    .line 88
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->group:Lrx/subscriptions/CompositeSubscription;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->leftMap:Ljava/util/Map;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->rightMap:Ljava/util/Map;

    .line 91
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 94
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin$ResultSink;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink;"
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->subscriber:Lrx/Subscriber;

    iget-object v3, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->group:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v2, v3}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 96
    new-instance v0, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;

    invoke-direct {v0, p0}, Lrx/internal/operators/OnSubscribeJoin$ResultSink$LeftSubscriber;-><init>(Lrx/internal/operators/OnSubscribeJoin$ResultSink;)V

    .line 97
    .local v0, "s1":Lrx/Subscriber;, "Lrx/Subscriber<TTLeft;>;"
    new-instance v1, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;

    invoke-direct {v1, p0}, Lrx/internal/operators/OnSubscribeJoin$ResultSink$RightSubscriber;-><init>(Lrx/internal/operators/OnSubscribeJoin$ResultSink;)V

    .line 99
    .local v1, "s2":Lrx/Subscriber;, "Lrx/Subscriber<TTRight;>;"
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->group:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v2, v0}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 100
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->group:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v2, v1}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 102
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->this$0:Lrx/internal/operators/OnSubscribeJoin;

    iget-object v2, v2, Lrx/internal/operators/OnSubscribeJoin;->left:Lrx/Observable;

    invoke-virtual {v2, v0}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 103
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->this$0:Lrx/internal/operators/OnSubscribeJoin;

    iget-object v2, v2, Lrx/internal/operators/OnSubscribeJoin;->right:Lrx/Observable;

    invoke-virtual {v2, v1}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 104
    return-void
.end method
