.class public final Lrx/subscriptions/CompositeSubscription;
.super Ljava/lang/Object;
.source "CompositeSubscription.java"

# interfaces
.implements Lrx/Subscription;


# instance fields
.field private subscriptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lrx/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field private volatile unsubscribed:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public varargs constructor <init>([Lrx/Subscription;)V
    .locals 2
    .param p1, "subscriptions"    # [Lrx/Subscription;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lrx/subscriptions/CompositeSubscription;->subscriptions:Ljava/util/Set;

    .line 41
    return-void
.end method

.method private static unsubscribeFromAll(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lrx/Subscription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "subscriptions":Ljava/util/Collection;, "Ljava/util/Collection<Lrx/Subscription;>;"
    if-nez p0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 140
    :cond_0
    const/4 v1, 0x0

    .line 141
    .local v1, "es":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrx/Subscription;

    .line 143
    .local v3, "s":Lrx/Subscription;
    :try_start_0
    invoke-interface {v3}, Lrx/Subscription;->unsubscribe()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Throwable;
    if-nez v1, :cond_1

    .line 146
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "es":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .restart local v1    # "es":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 151
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v3    # "s":Lrx/Subscription;
    :cond_2
    invoke-static {v1}, Lrx/exceptions/Exceptions;->throwIfAny(Ljava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method public add(Lrx/Subscription;)V
    .locals 2
    .param p1, "s"    # Lrx/Subscription;

    .prologue
    .line 58
    invoke-interface {p1}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-boolean v0, p0, Lrx/subscriptions/CompositeSubscription;->unsubscribed:Z

    if-nez v0, :cond_3

    .line 62
    monitor-enter p0

    .line 63
    :try_start_0
    iget-boolean v0, p0, Lrx/subscriptions/CompositeSubscription;->unsubscribed:Z

    if-nez v0, :cond_2

    .line 64
    iget-object v0, p0, Lrx/subscriptions/CompositeSubscription;->subscriptions:Ljava/util/Set;

    if-nez v0, :cond_1

    .line 65
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lrx/subscriptions/CompositeSubscription;->subscriptions:Ljava/util/Set;

    .line 67
    :cond_1
    iget-object v0, p0, Lrx/subscriptions/CompositeSubscription;->subscriptions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    monitor-exit p0

    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    :cond_3
    invoke-interface {p1}, Lrx/Subscription;->unsubscribe()V

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 105
    iget-boolean v1, p0, Lrx/subscriptions/CompositeSubscription;->unsubscribed:Z

    if-nez v1, :cond_1

    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "unsubscribe":Ljava/util/Collection;, "Ljava/util/Collection<Lrx/Subscription;>;"
    monitor-enter p0

    .line 108
    :try_start_0
    iget-boolean v1, p0, Lrx/subscriptions/CompositeSubscription;->unsubscribed:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lrx/subscriptions/CompositeSubscription;->subscriptions:Ljava/util/Set;

    if-nez v1, :cond_2

    .line 109
    :cond_0
    monitor-exit p0

    .line 117
    .end local v0    # "unsubscribe":Ljava/util/Collection;, "Ljava/util/Collection<Lrx/Subscription;>;"
    :cond_1
    :goto_0
    return-void

    .line 111
    .restart local v0    # "unsubscribe":Ljava/util/Collection;, "Ljava/util/Collection<Lrx/Subscription;>;"
    :cond_2
    iget-object v0, p0, Lrx/subscriptions/CompositeSubscription;->subscriptions:Ljava/util/Set;

    .line 112
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/subscriptions/CompositeSubscription;->subscriptions:Ljava/util/Set;

    .line 114
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    invoke-static {v0}, Lrx/subscriptions/CompositeSubscription;->unsubscribeFromAll(Ljava/util/Collection;)V

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public hasSubscriptions()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 161
    iget-boolean v1, p0, Lrx/subscriptions/CompositeSubscription;->unsubscribed:Z

    if-nez v1, :cond_1

    .line 162
    monitor-enter p0

    .line 163
    :try_start_0
    iget-boolean v1, p0, Lrx/subscriptions/CompositeSubscription;->unsubscribed:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lrx/subscriptions/CompositeSubscription;->subscriptions:Ljava/util/Set;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lrx/subscriptions/CompositeSubscription;->subscriptions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    monitor-exit p0

    .line 166
    :cond_1
    return v0

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lrx/subscriptions/CompositeSubscription;->unsubscribed:Z

    return v0
.end method

.method public remove(Lrx/Subscription;)V
    .locals 2
    .param p1, "s"    # Lrx/Subscription;

    .prologue
    .line 84
    iget-boolean v1, p0, Lrx/subscriptions/CompositeSubscription;->unsubscribed:Z

    if-nez v1, :cond_1

    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "unsubscribe":Z
    monitor-enter p0

    .line 87
    :try_start_0
    iget-boolean v1, p0, Lrx/subscriptions/CompositeSubscription;->unsubscribed:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lrx/subscriptions/CompositeSubscription;->subscriptions:Ljava/util/Set;

    if-nez v1, :cond_2

    .line 88
    :cond_0
    monitor-exit p0

    .line 97
    .end local v0    # "unsubscribe":Z
    :cond_1
    :goto_0
    return-void

    .line 90
    .restart local v0    # "unsubscribe":Z
    :cond_2
    iget-object v1, p0, Lrx/subscriptions/CompositeSubscription;->subscriptions:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 91
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    if-eqz v0, :cond_1

    .line 94
    invoke-interface {p1}, Lrx/Subscription;->unsubscribe()V

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public unsubscribe()V
    .locals 2

    .prologue
    .line 121
    iget-boolean v1, p0, Lrx/subscriptions/CompositeSubscription;->unsubscribed:Z

    if-nez v1, :cond_0

    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, "unsubscribe":Ljava/util/Collection;, "Ljava/util/Collection<Lrx/Subscription;>;"
    monitor-enter p0

    .line 124
    :try_start_0
    iget-boolean v1, p0, Lrx/subscriptions/CompositeSubscription;->unsubscribed:Z

    if-eqz v1, :cond_1

    .line 125
    monitor-exit p0

    .line 134
    .end local v0    # "unsubscribe":Ljava/util/Collection;, "Ljava/util/Collection<Lrx/Subscription;>;"
    :cond_0
    :goto_0
    return-void

    .line 127
    .restart local v0    # "unsubscribe":Ljava/util/Collection;, "Ljava/util/Collection<Lrx/Subscription;>;"
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/subscriptions/CompositeSubscription;->unsubscribed:Z

    .line 128
    iget-object v0, p0, Lrx/subscriptions/CompositeSubscription;->subscriptions:Ljava/util/Set;

    .line 129
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/subscriptions/CompositeSubscription;->subscriptions:Ljava/util/Set;

    .line 130
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    invoke-static {v0}, Lrx/subscriptions/CompositeSubscription;->unsubscribeFromAll(Ljava/util/Collection;)V

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
