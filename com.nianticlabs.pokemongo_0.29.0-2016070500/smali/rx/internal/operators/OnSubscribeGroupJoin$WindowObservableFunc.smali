.class final Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc;
.super Ljava/lang/Object;
.source "OnSubscribeGroupJoin.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeGroupJoin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WindowObservableFunc"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc$WindowSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final refCount:Lrx/subscriptions/RefCountSubscription;

.field final underlying:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observable;Lrx/subscriptions/RefCountSubscription;)V
    .locals 0
    .param p2, "refCount"    # Lrx/subscriptions/RefCountSubscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<TT;>;",
            "Lrx/subscriptions/RefCountSubscription;",
            ")V"
        }
    .end annotation

    .prologue
    .line 345
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc;, "Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc<TT;>;"
    .local p1, "underlying":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc;->refCount:Lrx/subscriptions/RefCountSubscription;

    .line 347
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc;->underlying:Lrx/Observable;

    .line 348
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 341
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc;, "Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 352
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc;, "Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc<TT;>;"
    .local p1, "t1":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc;->refCount:Lrx/subscriptions/RefCountSubscription;

    invoke-virtual {v2}, Lrx/subscriptions/RefCountSubscription;->get()Lrx/Subscription;

    move-result-object v0

    .line 353
    .local v0, "ref":Lrx/Subscription;
    new-instance v1, Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc$WindowSubscriber;

    invoke-direct {v1, p0, p1, v0}, Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc$WindowSubscriber;-><init>(Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc;Lrx/Subscriber;Lrx/Subscription;)V

    .line 354
    .local v1, "wo":Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc$WindowSubscriber;, "Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc<TT;>.WindowSubscriber;"
    invoke-virtual {v1, v0}, Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc$WindowSubscriber;->add(Lrx/Subscription;)V

    .line 356
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc;->underlying:Lrx/Observable;

    invoke-virtual {v2, v1}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 357
    return-void
.end method
