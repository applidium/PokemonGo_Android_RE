.class Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;
.super Lcom/upsight/android/marketing/UpsightMarketingContentStore;
.source "MarketingContentStoreImpl.java"

# interfaces
.implements Lcom/upsight/android/marketing/internal/content/MarketingContentStore;


# static fields
.field public static final DEFAULT_TIME_TO_LIVE_MS:J = 0x927c0L


# instance fields
.field private mBus:Lcom/squareup/otto/Bus;

.field private mClock:Lcom/upsight/android/analytics/internal/session/Clock;

.field private final mContentMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/upsight/android/marketing/internal/content/MarketingContent;",
            ">;"
        }
    .end annotation
.end field

.field private final mParentEligibilityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mScopeEligibilityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTimestamps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/squareup/otto/Bus;Lcom/upsight/android/analytics/internal/session/Clock;)V
    .locals 1
    .param p1, "bus"    # Lcom/squareup/otto/Bus;
    .param p2, "clock"    # Lcom/upsight/android/analytics/internal/session/Clock;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/upsight/android/marketing/UpsightMarketingContentStore;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->mTimestamps:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->mContentMap:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->mScopeEligibilityMap:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->mParentEligibilityMap:Ljava/util/Map;

    .line 70
    iput-object p1, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->mBus:Lcom/squareup/otto/Bus;

    .line 71
    iput-object p2, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->mClock:Lcom/upsight/android/analytics/internal/session/Clock;

    .line 72
    return-void
.end method


# virtual methods
.method public bridge synthetic get(Ljava/lang/String;)Lcom/upsight/android/analytics/internal/action/Actionable;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->get(Ljava/lang/String;)Lcom/upsight/android/marketing/internal/content/MarketingContent;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lcom/upsight/android/marketing/internal/content/MarketingContent;
    .locals 8
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->mTimestamps:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 88
    .local v0, "timestamp":Ljava/lang/Long;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->mClock:Lcom/upsight/android/analytics/internal/session/Clock;

    invoke-interface {v1}, Lcom/upsight/android/analytics/internal/session/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0x927c0

    add-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->mContentMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/marketing/internal/content/MarketingContent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :goto_0
    monitor-exit p0

    return-object v1

    .line 91
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->remove(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    const/4 v1, 0x0

    goto :goto_0

    .line 87
    .end local v0    # "timestamp":Ljava/lang/Long;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getIdsForScope(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .param p1, "scope"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->mScopeEligibilityMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 129
    .local v0, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 130
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    .restart local v0    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    monitor-exit p0

    return-object v0

    .line 128
    .end local v0    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isContentReady(Ljava/lang/String;)Z
    .locals 1
    .param p1, "scope"    # Ljava/lang/String;

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->getIdsForScope(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized presentScopedContent(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "scopes"    # [Ljava/lang/String;

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->mContentMap:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/marketing/internal/content/MarketingContent;

    .line 138
    .local v1, "content":Lcom/upsight/android/marketing/internal/content/MarketingContent;
    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    array-length v7, p2

    if-lez v7, :cond_2

    .line 139
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v6, v0, v3

    .line 140
    .local v6, "scope":Ljava/lang/String;
    iget-object v7, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->mScopeEligibilityMap:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 141
    .local v4, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v4, :cond_0

    .line 142
    invoke-interface {v4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 139
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 144
    :cond_0
    new-instance v4, Ljava/util/HashSet;

    .end local v4    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 145
    .restart local v4    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v7, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->mScopeEligibilityMap:Ljava/util/Map;

    invoke-interface {v7, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 137
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "content":Lcom/upsight/android/marketing/internal/content/MarketingContent;
    .end local v3    # "i$":I
    .end local v4    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "len$":I
    .end local v6    # "scope":Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 150
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "content":Lcom/upsight/android/marketing/internal/content/MarketingContent;
    .restart local v3    # "i$":I
    .restart local v5    # "len$":I
    :cond_1
    :try_start_1
    new-instance v2, Lcom/upsight/android/marketing/internal/content/MarketingContent$ScopedAvailabilityEvent;

    invoke-direct {v2, p1, p2}, Lcom/upsight/android/marketing/internal/content/MarketingContent$ScopedAvailabilityEvent;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 151
    .local v2, "event":Lcom/upsight/android/marketing/internal/content/MarketingContent$AvailabilityEvent;
    iget-object v7, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v1, v2, v7}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->markPresentable(Lcom/upsight/android/marketing/internal/content/MarketingContent$AvailabilityEvent;Lcom/squareup/otto/Bus;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    const/4 v7, 0x1

    .line 155
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "event":Lcom/upsight/android/marketing/internal/content/MarketingContent$AvailabilityEvent;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    :goto_2
    monitor-exit p0

    return v7

    :cond_2
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public declared-synchronized presentScopelessContent(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "parentId"    # Ljava/lang/String;

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->mContentMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/marketing/internal/content/MarketingContent;

    .line 161
    .local v0, "content":Lcom/upsight/android/marketing/internal/content/MarketingContent;
    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 162
    iget-object v2, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->mParentEligibilityMap:Ljava/util/Map;

    invoke-interface {v2, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    new-instance v1, Lcom/upsight/android/marketing/internal/content/MarketingContent$ScopelessAvailabilityEvent;

    invoke-direct {v1, p1, p2}, Lcom/upsight/android/marketing/internal/content/MarketingContent$ScopelessAvailabilityEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .local v1, "event":Lcom/upsight/android/marketing/internal/content/MarketingContent$AvailabilityEvent;
    iget-object v2, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, v1, v2}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->markPresentable(Lcom/upsight/android/marketing/internal/content/MarketingContent$AvailabilityEvent;Lcom/squareup/otto/Bus;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    const/4 v2, 0x1

    .line 169
    .end local v1    # "event":Lcom/upsight/android/marketing/internal/content/MarketingContent$AvailabilityEvent;
    :goto_0
    monitor-exit p0

    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 160
    .end local v0    # "content":Lcom/upsight/android/marketing/internal/content/MarketingContent;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public bridge synthetic put(Ljava/lang/String;Lcom/upsight/android/analytics/internal/action/Actionable;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/upsight/android/analytics/internal/action/Actionable;

    .prologue
    .line 24
    check-cast p2, Lcom/upsight/android/marketing/internal/content/MarketingContent;

    .end local p2    # "x1":Lcom/upsight/android/analytics/internal/action/Actionable;
    invoke-virtual {p0, p1, p2}, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->put(Ljava/lang/String;Lcom/upsight/android/marketing/internal/content/MarketingContent;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized put(Ljava/lang/String;Lcom/upsight/android/marketing/internal/content/MarketingContent;)Z
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "content"    # Lcom/upsight/android/marketing/internal/content/MarketingContent;

    .prologue
    .line 76
    monitor-enter p0

    const/4 v0, 0x0

    .line 77
    .local v0, "isAdded":Z
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    .line 78
    iget-object v1, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->mContentMap:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v1, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->mTimestamps:Ljava/util/Map;

    iget-object v2, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->mClock:Lcom/upsight/android/analytics/internal/session/Clock;

    invoke-interface {v2}, Lcom/upsight/android/analytics/internal/session/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    const/4 v0, 0x1

    .line 82
    :cond_0
    monitor-exit p0

    return v0

    .line 76
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Z
    .locals 8
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 98
    monitor-enter p0

    const/4 v4, 0x0

    .line 99
    .local v4, "isRemoved":Z
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 100
    iget-object v7, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->mContentMap:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1

    const/4 v4, 0x1

    .line 101
    :goto_0
    if-eqz v4, :cond_6

    .line 102
    iget-object v7, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->mScopeEligibilityMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 103
    .local v2, "eligibleIdsItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 104
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 105
    .local v6, "scope":Ljava/lang/String;
    iget-object v7, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->mScopeEligibilityMap:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 106
    .local v3, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 107
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 98
    .end local v2    # "eligibleIdsItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "scope":Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 100
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 111
    .restart local v2    # "eligibleIdsItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    iget-object v7, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->mParentEligibilityMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 112
    .local v1, "childIdMapItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 113
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 114
    .local v5, "parentId":Ljava/lang/String;
    iget-object v7, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->mParentEligibilityMap:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 115
    .local v0, "childId":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 116
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 120
    .end local v0    # "childId":Ljava/lang/String;
    .end local v5    # "parentId":Ljava/lang/String;
    :cond_5
    iget-object v7, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;->mTimestamps:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    .end local v1    # "childIdMapItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "eligibleIdsItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_6
    monitor-exit p0

    return v4
.end method
