.class final Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;
.super Ljava/lang/Object;
.source "OnSubscribeGroupJoin.java"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeGroupJoin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ResultManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightDurationObserver;,
        Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftDurationObserver;,
        Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightObserver;,
        Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftObserver;
    }
.end annotation


# instance fields
.field final cancel:Lrx/subscriptions/RefCountSubscription;

.field final group:Lrx/subscriptions/CompositeSubscription;

.field final guard:Ljava/lang/Object;

.field leftDone:Z

.field leftIds:I

.field final leftMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lrx/Observer",
            "<TT2;>;>;"
        }
    .end annotation
.end field

.field rightDone:Z

.field rightIds:I

.field final rightMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "TT2;>;"
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

.field final synthetic this$0:Lrx/internal/operators/OnSubscribeGroupJoin;


# direct methods
.method public constructor <init>(Lrx/internal/operators/OnSubscribeGroupJoin;Lrx/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager;"
    .local p2, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->this$0:Lrx/internal/operators/OnSubscribeGroupJoin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->guard:Ljava/lang/Object;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->leftMap:Ljava/util/Map;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->rightMap:Ljava/util/Map;

    .line 94
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->subscriber:Lrx/Subscriber;

    .line 95
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->group:Lrx/subscriptions/CompositeSubscription;

    .line 96
    new-instance v0, Lrx/subscriptions/RefCountSubscription;

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->group:Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0, v1}, Lrx/subscriptions/RefCountSubscription;-><init>(Lrx/Subscription;)V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->cancel:Lrx/subscriptions/RefCountSubscription;

    .line 97
    return-void
.end method


# virtual methods
.method complete(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lrx/Observer",
            "<TT2;>;>;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    if-eqz p1, :cond_1

    .line 151
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Observer;

    .line 152
    .local v1, "o":Lrx/Observer;, "Lrx/Observer<TT2;>;"
    invoke-interface {v1}, Lrx/Observer;->onCompleted()V

    goto :goto_0

    .line 154
    .end local v1    # "o":Lrx/Observer;, "Lrx/Observer<TT2;>;"
    :cond_0
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->subscriber:Lrx/Subscriber;

    invoke-virtual {v2}, Lrx/Subscriber;->onCompleted()V

    .line 155
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->cancel:Lrx/subscriptions/RefCountSubscription;

    invoke-virtual {v2}, Lrx/subscriptions/RefCountSubscription;->unsubscribe()V

    .line 157
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method errorAll(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 126
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager;"
    iget-object v4, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->guard:Ljava/lang/Object;

    monitor-enter v4

    .line 127
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->leftMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 128
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    iget-object v3, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->leftMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 129
    iget-object v3, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->rightMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 130
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/Observer;

    .line 132
    .local v2, "o":Lrx/Observer;, "Lrx/Observer<TT2;>;"
    invoke-interface {v2, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 130
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    .end local v2    # "o":Lrx/Observer;, "Lrx/Observer<TT2;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 134
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    :cond_0
    iget-object v3, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->subscriber:Lrx/Subscriber;

    invoke-virtual {v3, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 135
    iget-object v3, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->cancel:Lrx/subscriptions/RefCountSubscription;

    invoke-virtual {v3}, Lrx/subscriptions/RefCountSubscription;->unsubscribe()V

    .line 136
    return-void
.end method

.method errorMain(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 142
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager;"
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->guard:Ljava/lang/Object;

    monitor-enter v1

    .line 143
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->leftMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 144
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->rightMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 145
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 147
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->cancel:Lrx/subscriptions/RefCountSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/RefCountSubscription;->unsubscribe()V

    .line 148
    return-void

    .line 145
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 101
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager;"
    new-instance v0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftObserver;

    invoke-direct {v0, p0}, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$LeftObserver;-><init>(Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;)V

    .line 102
    .local v0, "s1":Lrx/Subscriber;, "Lrx/Subscriber<TT1;>;"
    new-instance v1, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightObserver;

    invoke-direct {v1, p0}, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager$RightObserver;-><init>(Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;)V

    .line 104
    .local v1, "s2":Lrx/Subscriber;, "Lrx/Subscriber<TT2;>;"
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->group:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v2, v0}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 105
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->group:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v2, v1}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 107
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->this$0:Lrx/internal/operators/OnSubscribeGroupJoin;

    iget-object v2, v2, Lrx/internal/operators/OnSubscribeGroupJoin;->left:Lrx/Observable;

    invoke-virtual {v2, v0}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 108
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->this$0:Lrx/internal/operators/OnSubscribeGroupJoin;

    iget-object v2, v2, Lrx/internal/operators/OnSubscribeGroupJoin;->right:Lrx/Observable;

    invoke-virtual {v2, v1}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 109
    return-void
.end method

.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 118
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->cancel:Lrx/subscriptions/RefCountSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/RefCountSubscription;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public unsubscribe()V
    .locals 1

    .prologue
    .line 113
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->cancel:Lrx/subscriptions/RefCountSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/RefCountSubscription;->unsubscribe()V

    .line 114
    return-void
.end method
