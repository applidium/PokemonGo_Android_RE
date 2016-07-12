.class Lrx/internal/operators/OnSubscribeDelaySubscription$1;
.super Ljava/lang/Object;
.source "OnSubscribeDelaySubscription.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OnSubscribeDelaySubscription;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OnSubscribeDelaySubscription;

.field final synthetic val$s:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OnSubscribeDelaySubscription;Lrx/Subscriber;)V
    .locals 0

    .prologue
    .line 49
    .local p0, "this":Lrx/internal/operators/OnSubscribeDelaySubscription$1;, "Lrx/internal/operators/OnSubscribeDelaySubscription.1;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeDelaySubscription$1;->this$0:Lrx/internal/operators/OnSubscribeDelaySubscription;

    iput-object p2, p0, Lrx/internal/operators/OnSubscribeDelaySubscription$1;->val$s:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 52
    .local p0, "this":Lrx/internal/operators/OnSubscribeDelaySubscription$1;, "Lrx/internal/operators/OnSubscribeDelaySubscription.1;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeDelaySubscription$1;->val$s:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeDelaySubscription$1;->this$0:Lrx/internal/operators/OnSubscribeDelaySubscription;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeDelaySubscription;->source:Lrx/Observable;

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeDelaySubscription$1;->val$s:Lrx/Subscriber;

    invoke-static {v1}, Lrx/observers/Subscribers;->wrap(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 55
    :cond_0
    return-void
.end method
