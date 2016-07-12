.class public final Lrx/internal/util/SubscriptionRandomList;
.super Ljava/lang/Object;
.source "SubscriptionRandomList.java"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lrx/Subscription;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Subscription;"
    }
.end annotation


# instance fields
.field private subscriptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation
.end field

.field private unsubscribed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    .local p0, "this":Lrx/internal/util/SubscriptionRandomList;, "Lrx/internal/util/SubscriptionRandomList<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/util/SubscriptionRandomList;->unsubscribed:Z

    .line 39
    return-void
.end method

.method private static unsubscribeFromAll(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lrx/Subscription;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "subscriptions":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    if-nez p0, :cond_0

    .line 154
    :goto_0
    return-void

    .line 142
    :cond_0
    const/4 v1, 0x0

    .line 143
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

    .line 145
    .local v3, "s":Lrx/Subscription;, "TT;"
    :try_start_0
    invoke-interface {v3}, Lrx/Subscription;->unsubscribe()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Throwable;
    if-nez v1, :cond_1

    .line 148
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "es":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .restart local v1    # "es":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 153
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v3    # "s":Lrx/Subscription;, "TT;"
    :cond_2
    invoke-static {v1}, Lrx/exceptions/Exceptions;->throwIfAny(Ljava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method public add(Lrx/Subscription;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lrx/internal/util/SubscriptionRandomList;, "Lrx/internal/util/SubscriptionRandomList<TT;>;"
    .local p1, "s":Lrx/Subscription;, "TT;"
    const/4 v0, 0x0

    .line 56
    .local v0, "unsubscribe":Lrx/Subscription;
    monitor-enter p0

    .line 57
    :try_start_0
    iget-boolean v1, p0, Lrx/internal/util/SubscriptionRandomList;->unsubscribed:Z

    if-eqz v1, :cond_1

    .line 58
    move-object v0, p1

    .line 65
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    if-eqz v0, :cond_0

    .line 68
    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 70
    :cond_0
    return-void

    .line 60
    :cond_1
    :try_start_1
    iget-object v1, p0, Lrx/internal/util/SubscriptionRandomList;->subscriptions:Ljava/util/Set;

    if-nez v1, :cond_2

    .line 61
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Lrx/internal/util/SubscriptionRandomList;->subscriptions:Ljava/util/Set;

    .line 63
    :cond_2
    iget-object v1, p0, Lrx/internal/util/SubscriptionRandomList;->subscriptions:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 98
    .local p0, "this":Lrx/internal/util/SubscriptionRandomList;, "Lrx/internal/util/SubscriptionRandomList<TT;>;"
    const/4 v0, 0x0

    .line 99
    .local v0, "unsubscribe":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    monitor-enter p0

    .line 100
    :try_start_0
    iget-boolean v1, p0, Lrx/internal/util/SubscriptionRandomList;->unsubscribed:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lrx/internal/util/SubscriptionRandomList;->subscriptions:Ljava/util/Set;

    if-nez v1, :cond_1

    .line 101
    :cond_0
    monitor-exit p0

    .line 108
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-object v0, p0, Lrx/internal/util/SubscriptionRandomList;->subscriptions:Ljava/util/Set;

    .line 104
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/internal/util/SubscriptionRandomList;->subscriptions:Ljava/util/Set;

    .line 106
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    invoke-static {v0}, Lrx/internal/util/SubscriptionRandomList;->unsubscribeFromAll(Ljava/util/Collection;)V

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public forEach(Lrx/functions/Action1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lrx/internal/util/SubscriptionRandomList;, "Lrx/internal/util/SubscriptionRandomList<TT;>;"
    .local p1, "action":Lrx/functions/Action1;, "Lrx/functions/Action1<TT;>;"
    const/4 v4, 0x0

    .line 112
    .local v4, "ss":[Lrx/Subscription;, "[TT;"
    monitor-enter p0

    .line 113
    :try_start_0
    iget-boolean v6, p0, Lrx/internal/util/SubscriptionRandomList;->unsubscribed:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Lrx/internal/util/SubscriptionRandomList;->subscriptions:Ljava/util/Set;

    if-nez v6, :cond_2

    .line 114
    :cond_0
    monitor-exit p0

    .line 121
    :cond_1
    return-void

    .line 116
    :cond_2
    iget-object v6, p0, Lrx/internal/util/SubscriptionRandomList;->subscriptions:Ljava/util/Set;

    invoke-interface {v6, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, [Lrx/Subscription;

    move-object v4, v0

    .line 117
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    move-object v1, v4

    .local v1, "arr$":[Lrx/Subscription;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v1, v2

    .line 119
    .local v5, "t":Lrx/Subscription;, "TT;"
    invoke-interface {p1, v5}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 118
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 117
    .end local v1    # "arr$":[Lrx/Subscription;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "t":Lrx/Subscription;, "TT;"
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method public declared-synchronized isUnsubscribed()Z
    .locals 1

    .prologue
    .line 43
    .local p0, "this":Lrx/internal/util/SubscriptionRandomList;, "Lrx/internal/util/SubscriptionRandomList<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lrx/internal/util/SubscriptionRandomList;->unsubscribed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public remove(Lrx/Subscription;)V
    .locals 2
    .param p1, "s"    # Lrx/Subscription;

    .prologue
    .line 79
    .local p0, "this":Lrx/internal/util/SubscriptionRandomList;, "Lrx/internal/util/SubscriptionRandomList<TT;>;"
    const/4 v0, 0x0

    .line 80
    .local v0, "unsubscribe":Z
    monitor-enter p0

    .line 81
    :try_start_0
    iget-boolean v1, p0, Lrx/internal/util/SubscriptionRandomList;->unsubscribed:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lrx/internal/util/SubscriptionRandomList;->subscriptions:Ljava/util/Set;

    if-nez v1, :cond_2

    .line 82
    :cond_0
    monitor-exit p0

    .line 90
    :cond_1
    :goto_0
    return-void

    .line 84
    :cond_2
    iget-object v1, p0, Lrx/internal/util/SubscriptionRandomList;->subscriptions:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 85
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    if-eqz v0, :cond_1

    .line 88
    invoke-interface {p1}, Lrx/Subscription;->unsubscribe()V

    goto :goto_0

    .line 85
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
    .line 125
    .local p0, "this":Lrx/internal/util/SubscriptionRandomList;, "Lrx/internal/util/SubscriptionRandomList<TT;>;"
    const/4 v0, 0x0

    .line 126
    .local v0, "unsubscribe":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    monitor-enter p0

    .line 127
    :try_start_0
    iget-boolean v1, p0, Lrx/internal/util/SubscriptionRandomList;->unsubscribed:Z

    if-eqz v1, :cond_0

    .line 128
    monitor-exit p0

    .line 136
    :goto_0
    return-void

    .line 130
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/internal/util/SubscriptionRandomList;->unsubscribed:Z

    .line 131
    iget-object v0, p0, Lrx/internal/util/SubscriptionRandomList;->subscriptions:Ljava/util/Set;

    .line 132
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/internal/util/SubscriptionRandomList;->subscriptions:Ljava/util/Set;

    .line 133
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    invoke-static {v0}, Lrx/internal/util/SubscriptionRandomList;->unsubscribeFromAll(Ljava/util/Collection;)V

    goto :goto_0

    .line 133
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
