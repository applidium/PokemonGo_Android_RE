.class Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1;
.super Ljava/lang/Object;
.source "OperatorRetryWithPredicate.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;->onNext(Lrx/Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;

.field final synthetic val$o:Lrx/Observable;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;Lrx/Observable;)V
    .locals 0

    .prologue
    .line 77
    .local p0, "this":Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1;, "Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1;->this$0:Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;

    iput-object p2, p0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1;->val$o:Lrx/Observable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 4

    .prologue
    .line 81
    .local p0, "this":Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1;, "Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber.1;"
    move-object v0, p0

    .line 82
    .local v0, "_self":Lrx/functions/Action0;
    sget-object v2, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;->ATTEMPTS_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    iget-object v3, p0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1;->this$0:Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    .line 86
    new-instance v1, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1$1;

    invoke-direct {v1, p0, v0}, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1$1;-><init>(Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1;Lrx/functions/Action0;)V

    .line 119
    .local v1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    iget-object v2, p0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1;->this$0:Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;

    iget-object v2, v2, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;->serialSubscription:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v2, v1}, Lrx/subscriptions/SerialSubscription;->set(Lrx/Subscription;)V

    .line 120
    iget-object v2, p0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1;->val$o:Lrx/Observable;

    invoke-virtual {v2, v1}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 121
    return-void
.end method
