.class Lcom/upsight/android/internal/persistence/DataStore;
.super Ljava/lang/Object;
.source "DataStore.java"

# interfaces
.implements Lcom/upsight/android/persistence/UpsightDataStore;


# instance fields
.field private final mBus:Lcom/squareup/otto/Bus;

.field private final mContext:Landroid/content/Context;

.field private final mIdFactory:Lcom/upsight/android/internal/persistence/storable/StorableIdFactory;

.field private final mInfoCache:Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;

.field private final mObserveOnScheduler:Lrx/Scheduler;

.field private final mSubscribeOnScheduler:Lrx/Scheduler;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;Lcom/upsight/android/internal/persistence/storable/StorableIdFactory;Lrx/Scheduler;Lrx/Scheduler;Lcom/squareup/otto/Bus;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "infoCache"    # Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;
    .param p3, "idFactory"    # Lcom/upsight/android/internal/persistence/storable/StorableIdFactory;
    .param p4, "subscribeOnScheduler"    # Lrx/Scheduler;
    .param p5, "observeOnScheduler"    # Lrx/Scheduler;
    .param p6, "bus"    # Lcom/squareup/otto/Bus;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/upsight/android/internal/persistence/DataStore;->mContext:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/upsight/android/internal/persistence/DataStore;->mInfoCache:Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;

    .line 62
    iput-object p3, p0, Lcom/upsight/android/internal/persistence/DataStore;->mIdFactory:Lcom/upsight/android/internal/persistence/storable/StorableIdFactory;

    .line 63
    iput-object p4, p0, Lcom/upsight/android/internal/persistence/DataStore;->mSubscribeOnScheduler:Lrx/Scheduler;

    .line 64
    iput-object p5, p0, Lcom/upsight/android/internal/persistence/DataStore;->mObserveOnScheduler:Lrx/Scheduler;

    .line 65
    iput-object p6, p0, Lcom/upsight/android/internal/persistence/DataStore;->mBus:Lcom/squareup/otto/Bus;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/upsight/android/internal/persistence/DataStore;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/internal/persistence/DataStore;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/upsight/android/internal/persistence/DataStore;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public fetch(Ljava/lang/Class;Lcom/upsight/android/persistence/UpsightDataStoreListener;)Lcom/upsight/android/persistence/UpsightSubscription;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/upsight/android/persistence/UpsightDataStoreListener",
            "<",
            "Ljava/util/Set",
            "<TT;>;>;)",
            "Lcom/upsight/android/persistence/UpsightSubscription;"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "listener":Lcom/upsight/android/persistence/UpsightDataStoreListener;, "Lcom/upsight/android/persistence/UpsightDataStoreListener<Ljava/util/Set<TT;>;>;"
    if-nez p1, :cond_0

    .line 72
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "A non null class must be specified for fetch(..)"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    :cond_0
    if-nez p2, :cond_1

    .line 76
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "A non null listener must be specified for fetch(..)"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 80
    :cond_1
    invoke-virtual {p0, p1}, Lcom/upsight/android/internal/persistence/DataStore;->fetchObservable(Ljava/lang/Class;)Lrx/Observable;

    move-result-object v1

    invoke-virtual {v1}, Lrx/Observable;->toList()Lrx/Observable;

    move-result-object v1

    iget-object v2, p0, Lcom/upsight/android/internal/persistence/DataStore;->mSubscribeOnScheduler:Lrx/Scheduler;

    invoke-virtual {v1, v2}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    iget-object v2, p0, Lcom/upsight/android/internal/persistence/DataStore;->mObserveOnScheduler:Lrx/Scheduler;

    invoke-virtual {v1, v2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lcom/upsight/android/internal/persistence/DataStore$1;

    invoke-direct {v2, p0, p2}, Lcom/upsight/android/internal/persistence/DataStore$1;-><init>(Lcom/upsight/android/internal/persistence/DataStore;Lcom/upsight/android/persistence/UpsightDataStoreListener;)V

    new-instance v3, Lcom/upsight/android/internal/persistence/DataStore$2;

    invoke-direct {v3, p0, p2}, Lcom/upsight/android/internal/persistence/DataStore$2;-><init>(Lcom/upsight/android/internal/persistence/DataStore;Lcom/upsight/android/persistence/UpsightDataStoreListener;)V

    invoke-virtual {v1, v2, v3}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object v0

    .line 95
    .local v0, "subscription":Lrx/Subscription;
    invoke-static {v0}, Lcom/upsight/android/internal/persistence/subscription/Subscriptions;->from(Lrx/Subscription;)Lcom/upsight/android/persistence/UpsightSubscription;

    move-result-object v1

    return-object v1
.end method

.method public fetch(Ljava/lang/Class;Ljava/util/Set;Lcom/upsight/android/persistence/UpsightDataStoreListener;)Lcom/upsight/android/persistence/UpsightSubscription;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/upsight/android/persistence/UpsightDataStoreListener",
            "<",
            "Ljava/util/Set",
            "<TT;>;>;)",
            "Lcom/upsight/android/persistence/UpsightSubscription;"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p3, "listener":Lcom/upsight/android/persistence/UpsightDataStoreListener;, "Lcom/upsight/android/persistence/UpsightDataStoreListener<Ljava/util/Set<TT;>;>;"
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {p2, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 103
    .local v0, "array":[Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/upsight/android/internal/persistence/DataStore;->fetchObservable(Ljava/lang/Class;[Ljava/lang/String;)Lrx/Observable;

    move-result-object v2

    invoke-virtual {v2}, Lrx/Observable;->toList()Lrx/Observable;

    move-result-object v2

    iget-object v3, p0, Lcom/upsight/android/internal/persistence/DataStore;->mSubscribeOnScheduler:Lrx/Scheduler;

    invoke-virtual {v2, v3}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v2

    iget-object v3, p0, Lcom/upsight/android/internal/persistence/DataStore;->mObserveOnScheduler:Lrx/Scheduler;

    invoke-virtual {v2, v3}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v2

    new-instance v3, Lcom/upsight/android/internal/persistence/DataStore$3;

    invoke-direct {v3, p0, p3}, Lcom/upsight/android/internal/persistence/DataStore$3;-><init>(Lcom/upsight/android/internal/persistence/DataStore;Lcom/upsight/android/persistence/UpsightDataStoreListener;)V

    new-instance v4, Lcom/upsight/android/internal/persistence/DataStore$4;

    invoke-direct {v4, p0, p3}, Lcom/upsight/android/internal/persistence/DataStore$4;-><init>(Lcom/upsight/android/internal/persistence/DataStore;Lcom/upsight/android/persistence/UpsightDataStoreListener;)V

    invoke-virtual {v2, v3, v4}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object v1

    .line 118
    .local v1, "subscription":Lrx/Subscription;
    invoke-static {v1}, Lcom/upsight/android/internal/persistence/subscription/Subscriptions;->from(Lrx/Subscription;)Lcom/upsight/android/persistence/UpsightSubscription;

    move-result-object v2

    return-object v2
.end method

.method public fetchObservable(Ljava/lang/Class;)Lrx/Observable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 214
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    iget-object v3, p0, Lcom/upsight/android/internal/persistence/DataStore;->mInfoCache:Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;

    invoke-virtual {v3, p1}, Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;->get(Ljava/lang/Class;)Lcom/upsight/android/internal/persistence/storable/StorableInfo;

    move-result-object v1

    .line 215
    .local v1, "info":Lcom/upsight/android/internal/persistence/storable/StorableInfo;, "Lcom/upsight/android/internal/persistence/storable/StorableInfo<TT;>;"
    if-nez v1, :cond_0

    .line 216
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Class %s must be annotated with @%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Lcom/upsight/android/internal/persistence/Storable;

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lcom/upsight/android/UpsightException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .end local v1    # "info":Lcom/upsight/android/internal/persistence/storable/StorableInfo;, "Lcom/upsight/android/internal/persistence/storable/StorableInfo<TT;>;"
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Lcom/upsight/android/UpsightException;
    invoke-static {v0}, Lrx/Observable;->error(Ljava/lang/Throwable;)Lrx/Observable;

    move-result-object v3

    .end local v0    # "e":Lcom/upsight/android/UpsightException;
    :goto_0
    return-object v3

    .line 220
    .restart local v1    # "info":Lcom/upsight/android/internal/persistence/storable/StorableInfo;, "Lcom/upsight/android/internal/persistence/storable/StorableInfo<TT;>;"
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/upsight/android/internal/persistence/storable/StorableInfo;->getStorableTypeAccessor()Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor;

    move-result-object v3

    invoke-interface {v3}, Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor;->getType()Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, "type":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 222
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Class %s must be annotated with @%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Lcom/upsight/android/persistence/annotation/UpsightStorableType;

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 227
    :cond_1
    iget-object v3, p0, Lcom/upsight/android/internal/persistence/DataStore;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/upsight/android/internal/persistence/ContentObservables;->fetch(Landroid/content/Context;Ljava/lang/String;)Lrx/Observable;

    move-result-object v3

    invoke-static {v1}, Lcom/upsight/android/internal/persistence/storable/Storables;->deserialize(Lcom/upsight/android/internal/persistence/storable/StorableInfo;)Lrx/Observable$Operator;

    move-result-object v4

    invoke-virtual {v3, v4}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;
    :try_end_1
    .catch Lcom/upsight/android/UpsightException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_0
.end method

.method public varargs fetchObservable(Ljava/lang/Class;[Ljava/lang/String;)Lrx/Observable;
    .locals 8
    .param p2, "ids"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 236
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    iget-object v3, p0, Lcom/upsight/android/internal/persistence/DataStore;->mInfoCache:Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;

    invoke-virtual {v3, p1}, Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;->get(Ljava/lang/Class;)Lcom/upsight/android/internal/persistence/storable/StorableInfo;

    move-result-object v1

    .line 237
    .local v1, "info":Lcom/upsight/android/internal/persistence/storable/StorableInfo;, "Lcom/upsight/android/internal/persistence/storable/StorableInfo<TT;>;"
    if-nez v1, :cond_0

    .line 238
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Class %s must be annotated with @%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Lcom/upsight/android/internal/persistence/Storable;

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lcom/upsight/android/UpsightException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    .end local v1    # "info":Lcom/upsight/android/internal/persistence/storable/StorableInfo;, "Lcom/upsight/android/internal/persistence/storable/StorableInfo<TT;>;"
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Lcom/upsight/android/UpsightException;
    invoke-static {v0}, Lrx/Observable;->error(Ljava/lang/Throwable;)Lrx/Observable;

    move-result-object v3

    .end local v0    # "e":Lcom/upsight/android/UpsightException;
    :goto_0
    return-object v3

    .line 242
    .restart local v1    # "info":Lcom/upsight/android/internal/persistence/storable/StorableInfo;, "Lcom/upsight/android/internal/persistence/storable/StorableInfo<TT;>;"
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/upsight/android/internal/persistence/storable/StorableInfo;->getStorableTypeAccessor()Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor;

    move-result-object v3

    invoke-interface {v3}, Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor;->getType()Ljava/lang/String;

    move-result-object v2

    .line 243
    .local v2, "type":Ljava/lang/String;
    iget-object v3, p0, Lcom/upsight/android/internal/persistence/DataStore;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, p2}, Lcom/upsight/android/internal/persistence/ContentObservables;->fetch(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Lrx/Observable;

    move-result-object v3

    invoke-static {v1}, Lcom/upsight/android/internal/persistence/storable/Storables;->deserialize(Lcom/upsight/android/internal/persistence/storable/StorableInfo;)Lrx/Observable$Operator;

    move-result-object v4

    invoke-virtual {v3, v4}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;
    :try_end_1
    .catch Lcom/upsight/android/UpsightException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_0
.end method

.method public remove(Ljava/lang/Class;Ljava/util/Set;)Lcom/upsight/android/persistence/UpsightSubscription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/upsight/android/persistence/UpsightSubscription;"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Lcom/upsight/android/internal/util/LoggingListener;

    invoke-direct {v0}, Lcom/upsight/android/internal/util/LoggingListener;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/upsight/android/internal/persistence/DataStore;->remove(Ljava/lang/Class;Ljava/util/Set;Lcom/upsight/android/persistence/UpsightDataStoreListener;)Lcom/upsight/android/persistence/UpsightSubscription;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Class;Ljava/util/Set;Lcom/upsight/android/persistence/UpsightDataStoreListener;)Lcom/upsight/android/persistence/UpsightSubscription;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/upsight/android/persistence/UpsightDataStoreListener",
            "<",
            "Ljava/util/Set",
            "<TT;>;>;)",
            "Lcom/upsight/android/persistence/UpsightSubscription;"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p3, "listener":Lcom/upsight/android/persistence/UpsightDataStoreListener;, "Lcom/upsight/android/persistence/UpsightDataStoreListener<Ljava/util/Set<TT;>;>;"
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {p2, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 125
    .local v0, "array":[Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/upsight/android/internal/persistence/DataStore;->removeObservable(Ljava/lang/Class;[Ljava/lang/String;)Lrx/Observable;

    move-result-object v2

    invoke-virtual {v2}, Lrx/Observable;->toList()Lrx/Observable;

    move-result-object v2

    iget-object v3, p0, Lcom/upsight/android/internal/persistence/DataStore;->mSubscribeOnScheduler:Lrx/Scheduler;

    invoke-virtual {v2, v3}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v2

    iget-object v3, p0, Lcom/upsight/android/internal/persistence/DataStore;->mObserveOnScheduler:Lrx/Scheduler;

    invoke-virtual {v2, v3}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v2

    new-instance v3, Lcom/upsight/android/internal/persistence/DataStore$5;

    invoke-direct {v3, p0, p3}, Lcom/upsight/android/internal/persistence/DataStore$5;-><init>(Lcom/upsight/android/internal/persistence/DataStore;Lcom/upsight/android/persistence/UpsightDataStoreListener;)V

    new-instance v4, Lcom/upsight/android/internal/persistence/DataStore$6;

    invoke-direct {v4, p0, p3}, Lcom/upsight/android/internal/persistence/DataStore$6;-><init>(Lcom/upsight/android/internal/persistence/DataStore;Lcom/upsight/android/persistence/UpsightDataStoreListener;)V

    invoke-virtual {v2, v3, v4}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object v1

    .line 140
    .local v1, "subscription":Lrx/Subscription;
    invoke-static {v1}, Lcom/upsight/android/internal/persistence/subscription/Subscriptions;->from(Lrx/Subscription;)Lcom/upsight/android/persistence/UpsightSubscription;

    move-result-object v2

    return-object v2
.end method

.method public remove(Ljava/lang/Object;)Lcom/upsight/android/persistence/UpsightSubscription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/upsight/android/persistence/UpsightSubscription;"
        }
    .end annotation

    .prologue
    .line 199
    .local p1, "object":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/upsight/android/internal/util/LoggingListener;

    invoke-direct {v0}, Lcom/upsight/android/internal/util/LoggingListener;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/upsight/android/internal/persistence/DataStore;->remove(Ljava/lang/Object;Lcom/upsight/android/persistence/UpsightDataStoreListener;)Lcom/upsight/android/persistence/UpsightSubscription;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;Lcom/upsight/android/persistence/UpsightDataStoreListener;)Lcom/upsight/android/persistence/UpsightSubscription;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/upsight/android/persistence/UpsightDataStoreListener",
            "<TT;>;)",
            "Lcom/upsight/android/persistence/UpsightSubscription;"
        }
    .end annotation

    .prologue
    .line 176
    .local p1, "object":Ljava/lang/Object;, "TT;"
    .local p2, "listener":Lcom/upsight/android/persistence/UpsightDataStoreListener;, "Lcom/upsight/android/persistence/UpsightDataStoreListener<TT;>;"
    if-nez p2, :cond_0

    .line 177
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Listener can not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 180
    :cond_0
    invoke-virtual {p0, p1}, Lcom/upsight/android/internal/persistence/DataStore;->removeObservable(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v1

    iget-object v2, p0, Lcom/upsight/android/internal/persistence/DataStore;->mSubscribeOnScheduler:Lrx/Scheduler;

    invoke-virtual {v1, v2}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    iget-object v2, p0, Lcom/upsight/android/internal/persistence/DataStore;->mObserveOnScheduler:Lrx/Scheduler;

    invoke-virtual {v1, v2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lcom/upsight/android/internal/persistence/DataStore$9;

    invoke-direct {v2, p0, p2}, Lcom/upsight/android/internal/persistence/DataStore$9;-><init>(Lcom/upsight/android/internal/persistence/DataStore;Lcom/upsight/android/persistence/UpsightDataStoreListener;)V

    new-instance v3, Lcom/upsight/android/internal/persistence/DataStore$10;

    invoke-direct {v3, p0, p2}, Lcom/upsight/android/internal/persistence/DataStore$10;-><init>(Lcom/upsight/android/internal/persistence/DataStore;Lcom/upsight/android/persistence/UpsightDataStoreListener;)V

    invoke-virtual {v1, v2, v3}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object v0

    .line 194
    .local v0, "subscription":Lrx/Subscription;
    invoke-static {v0}, Lcom/upsight/android/internal/persistence/subscription/Subscriptions;->from(Lrx/Subscription;)Lcom/upsight/android/persistence/UpsightSubscription;

    move-result-object v1

    return-object v1
.end method

.method public varargs removeObservable(Ljava/lang/Class;[Ljava/lang/String;)Lrx/Observable;
    .locals 8
    .param p2, "ids"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 361
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    iget-object v3, p0, Lcom/upsight/android/internal/persistence/DataStore;->mInfoCache:Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;

    invoke-virtual {v3, p1}, Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;->get(Ljava/lang/Class;)Lcom/upsight/android/internal/persistence/storable/StorableInfo;

    move-result-object v1

    .line 362
    .local v1, "info":Lcom/upsight/android/internal/persistence/storable/StorableInfo;, "Lcom/upsight/android/internal/persistence/storable/StorableInfo<TT;>;"
    if-nez v1, :cond_0

    .line 363
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Class %s must be annotated with @%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Lcom/upsight/android/internal/persistence/Storable;

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lcom/upsight/android/UpsightException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    .end local v1    # "info":Lcom/upsight/android/internal/persistence/storable/StorableInfo;, "Lcom/upsight/android/internal/persistence/storable/StorableInfo<TT;>;"
    :catch_0
    move-exception v0

    .line 377
    .local v0, "e":Lcom/upsight/android/UpsightException;
    invoke-static {v0}, Lrx/Observable;->error(Ljava/lang/Throwable;)Lrx/Observable;

    move-result-object v3

    .end local v0    # "e":Lcom/upsight/android/UpsightException;
    :goto_0
    return-object v3

    .line 367
    .restart local v1    # "info":Lcom/upsight/android/internal/persistence/storable/StorableInfo;, "Lcom/upsight/android/internal/persistence/storable/StorableInfo<TT;>;"
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/upsight/android/internal/persistence/storable/StorableInfo;->getStorableTypeAccessor()Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor;

    move-result-object v3

    invoke-interface {v3}, Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor;->getType()Ljava/lang/String;

    move-result-object v2

    .line 368
    .local v2, "type":Ljava/lang/String;
    iget-object v3, p0, Lcom/upsight/android/internal/persistence/DataStore;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, p2}, Lcom/upsight/android/internal/persistence/ContentObservables;->fetch(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Lrx/Observable;

    move-result-object v3

    invoke-static {v1}, Lcom/upsight/android/internal/persistence/storable/Storables;->deserialize(Lcom/upsight/android/internal/persistence/storable/StorableInfo;)Lrx/Observable$Operator;

    move-result-object v4

    invoke-virtual {v3, v4}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v3

    new-instance v4, Lcom/upsight/android/internal/persistence/DataStore$15;

    invoke-direct {v4, p0}, Lcom/upsight/android/internal/persistence/DataStore$15;-><init>(Lcom/upsight/android/internal/persistence/DataStore;)V

    invoke-virtual {v3, v4}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;
    :try_end_1
    .catch Lcom/upsight/android/UpsightException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_0
.end method

.method public removeObservable(Ljava/lang/Object;)Lrx/Observable;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p1, "object":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 315
    const/4 v4, 0x0

    .line 316
    .local v4, "observable":Lrx/Observable;, "Lrx/Observable<TT;>;"
    if-nez p1, :cond_0

    .line 317
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Object can not be null."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 319
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 322
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    iget-object v8, p0, Lcom/upsight/android/internal/persistence/DataStore;->mInfoCache:Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;

    invoke-virtual {v8, v0}, Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;->get(Ljava/lang/Class;)Lcom/upsight/android/internal/persistence/storable/StorableInfo;

    move-result-object v3

    .line 323
    .local v3, "info":Lcom/upsight/android/internal/persistence/storable/StorableInfo;, "Lcom/upsight/android/internal/persistence/storable/StorableInfo<TT;>;"
    if-eqz v3, :cond_3

    .line 324
    invoke-virtual {v3}, Lcom/upsight/android/internal/persistence/storable/StorableInfo;->getIdentifierAccessor()Lcom/upsight/android/internal/persistence/storable/StorableIdentifierAccessor;

    move-result-object v8

    invoke-interface {v8, p1}, Lcom/upsight/android/internal/persistence/storable/StorableIdentifierAccessor;->getId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 325
    .local v2, "hasID":Z
    :goto_0
    if-eqz v2, :cond_2

    .line 326
    invoke-virtual {v3}, Lcom/upsight/android/internal/persistence/storable/StorableInfo;->getStorableTypeAccessor()Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor;

    move-result-object v7

    invoke-interface {v7, p1}, Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor;->getType(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 327
    .local v6, "type":Ljava/lang/String;
    invoke-static {p1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v5

    .line 328
    .local v5, "sourceObservable":Lrx/Observable;, "Lrx/Observable<TT;>;"
    iget-object v7, p0, Lcom/upsight/android/internal/persistence/DataStore;->mIdFactory:Lcom/upsight/android/internal/persistence/storable/StorableIdFactory;

    invoke-static {v3, v7}, Lcom/upsight/android/internal/persistence/storable/Storables;->serialize(Lcom/upsight/android/internal/persistence/storable/StorableInfo;Lcom/upsight/android/internal/persistence/storable/StorableIdFactory;)Lrx/Observable$Operator;

    move-result-object v7

    invoke-virtual {v5, v7}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v7

    new-instance v8, Lcom/upsight/android/internal/persistence/DataStore$14;

    invoke-direct {v8, p0}, Lcom/upsight/android/internal/persistence/DataStore$14;-><init>(Lcom/upsight/android/internal/persistence/DataStore;)V

    invoke-virtual {v7, v8}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v7

    new-instance v8, Lcom/upsight/android/internal/persistence/DataStore$13;

    invoke-direct {v8, p0}, Lcom/upsight/android/internal/persistence/DataStore$13;-><init>(Lcom/upsight/android/internal/persistence/DataStore;)V

    invoke-virtual {v7, v5, v8}, Lrx/Observable;->zipWith(Lrx/Observable;Lrx/functions/Func2;)Lrx/Observable;

    move-result-object v7

    iget-object v8, p0, Lcom/upsight/android/internal/persistence/DataStore;->mBus:Lcom/squareup/otto/Bus;

    invoke-static {v8, v6}, Lcom/upsight/android/internal/persistence/subscription/Subscriptions;->publishRemoved(Lcom/squareup/otto/Bus;Ljava/lang/String;)Lrx/functions/Action1;

    move-result-object v8

    invoke-virtual {v7, v8}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v4

    .line 355
    .end local v2    # "hasID":Z
    .end local v3    # "info":Lcom/upsight/android/internal/persistence/storable/StorableInfo;, "Lcom/upsight/android/internal/persistence/storable/StorableInfo<TT;>;"
    .end local v5    # "sourceObservable":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .end local v6    # "type":Ljava/lang/String;
    :goto_1
    return-object v4

    .restart local v3    # "info":Lcom/upsight/android/internal/persistence/storable/StorableInfo;, "Lcom/upsight/android/internal/persistence/storable/StorableInfo<TT;>;"
    :cond_1
    move v2, v7

    .line 324
    goto :goto_0

    .line 344
    .restart local v2    # "hasID":Z
    :cond_2
    new-instance v7, Lcom/upsight/android/UpsightException;

    const-string v8, "Object must be stored before removal."

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-direct {v7, v8, v9}, Lcom/upsight/android/UpsightException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v7}, Lrx/Observable;->error(Ljava/lang/Throwable;)Lrx/Observable;

    move-result-object v4

    goto :goto_1

    .line 348
    .end local v2    # "hasID":Z
    :cond_3
    new-instance v7, Lcom/upsight/android/UpsightException;

    const-string v8, "Class %s must be annotated with @%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, Lcom/upsight/android/internal/persistence/Storable;

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/upsight/android/UpsightException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v7}, Lrx/Observable;->error(Ljava/lang/Throwable;)Lrx/Observable;
    :try_end_0
    .catch Lcom/upsight/android/UpsightException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_1

    .line 352
    .end local v3    # "info":Lcom/upsight/android/internal/persistence/storable/StorableInfo;, "Lcom/upsight/android/internal/persistence/storable/StorableInfo<TT;>;"
    :catch_0
    move-exception v1

    .line 353
    .local v1, "e":Lcom/upsight/android/UpsightException;
    invoke-static {v1}, Lrx/Observable;->error(Ljava/lang/Throwable;)Lrx/Observable;

    move-result-object v4

    goto :goto_1
.end method

.method public setSerializer(Ljava/lang/Class;Lcom/upsight/android/persistence/UpsightStorableSerializer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/upsight/android/persistence/UpsightStorableSerializer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 251
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "serializer":Lcom/upsight/android/persistence/UpsightStorableSerializer;, "Lcom/upsight/android/persistence/UpsightStorableSerializer<TT;>;"
    if-nez p1, :cond_0

    .line 252
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Class can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_0
    if-nez p2, :cond_1

    .line 256
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "UpsightStorableSerializer can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/upsight/android/internal/persistence/DataStore;->mInfoCache:Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;

    invoke-virtual {v0, p1, p2}, Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;->setSerializer(Ljava/lang/Class;Lcom/upsight/android/persistence/UpsightStorableSerializer;)V

    .line 260
    return-void
.end method

.method public store(Ljava/lang/Object;)Lcom/upsight/android/persistence/UpsightSubscription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/upsight/android/persistence/UpsightSubscription;"
        }
    .end annotation

    .prologue
    .line 170
    .local p1, "object":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/upsight/android/internal/util/LoggingListener;

    invoke-direct {v0}, Lcom/upsight/android/internal/util/LoggingListener;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/upsight/android/internal/persistence/DataStore;->store(Ljava/lang/Object;Lcom/upsight/android/persistence/UpsightDataStoreListener;)Lcom/upsight/android/persistence/UpsightSubscription;

    move-result-object v0

    return-object v0
.end method

.method public store(Ljava/lang/Object;Lcom/upsight/android/persistence/UpsightDataStoreListener;)Lcom/upsight/android/persistence/UpsightSubscription;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/upsight/android/persistence/UpsightDataStoreListener",
            "<TT;>;)",
            "Lcom/upsight/android/persistence/UpsightSubscription;"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "object":Ljava/lang/Object;, "TT;"
    .local p2, "listener":Lcom/upsight/android/persistence/UpsightDataStoreListener;, "Lcom/upsight/android/persistence/UpsightDataStoreListener<TT;>;"
    invoke-virtual {p0, p1}, Lcom/upsight/android/internal/persistence/DataStore;->storeObservable(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v1

    iget-object v2, p0, Lcom/upsight/android/internal/persistence/DataStore;->mSubscribeOnScheduler:Lrx/Scheduler;

    invoke-virtual {v1, v2}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    iget-object v2, p0, Lcom/upsight/android/internal/persistence/DataStore;->mObserveOnScheduler:Lrx/Scheduler;

    invoke-virtual {v1, v2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lcom/upsight/android/internal/persistence/DataStore$7;

    invoke-direct {v2, p0, p2}, Lcom/upsight/android/internal/persistence/DataStore$7;-><init>(Lcom/upsight/android/internal/persistence/DataStore;Lcom/upsight/android/persistence/UpsightDataStoreListener;)V

    new-instance v3, Lcom/upsight/android/internal/persistence/DataStore$8;

    invoke-direct {v3, p0, p2}, Lcom/upsight/android/internal/persistence/DataStore$8;-><init>(Lcom/upsight/android/internal/persistence/DataStore;Lcom/upsight/android/persistence/UpsightDataStoreListener;)V

    invoke-virtual {v1, v2, v3}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object v0

    .line 165
    .local v0, "subscription":Lrx/Subscription;
    invoke-static {v0}, Lcom/upsight/android/internal/persistence/subscription/Subscriptions;->from(Lrx/Subscription;)Lcom/upsight/android/persistence/UpsightSubscription;

    move-result-object v1

    return-object v1
.end method

.method public storeObservable(Ljava/lang/Object;)Lrx/Observable;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p1, "object":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 264
    if-nez p1, :cond_0

    .line 265
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Attempting to store null object."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 268
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 271
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    iget-object v8, p0, Lcom/upsight/android/internal/persistence/DataStore;->mInfoCache:Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;

    invoke-virtual {v8, v0}, Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;->get(Ljava/lang/Class;)Lcom/upsight/android/internal/persistence/storable/StorableInfo;

    move-result-object v3

    .line 272
    .local v3, "info":Lcom/upsight/android/internal/persistence/storable/StorableInfo;, "Lcom/upsight/android/internal/persistence/storable/StorableInfo<TT;>;"
    if-nez v3, :cond_1

    .line 273
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Class %s must be annotated with @%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, Lcom/upsight/android/internal/persistence/Storable;

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Lcom/upsight/android/UpsightException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    .end local v3    # "info":Lcom/upsight/android/internal/persistence/storable/StorableInfo;, "Lcom/upsight/android/internal/persistence/storable/StorableInfo<TT;>;"
    :catch_0
    move-exception v1

    .line 309
    .local v1, "e":Lcom/upsight/android/UpsightException;
    invoke-static {v1}, Lrx/Observable;->error(Ljava/lang/Throwable;)Lrx/Observable;

    move-result-object v4

    .end local v1    # "e":Lcom/upsight/android/UpsightException;
    :goto_0
    return-object v4

    .line 277
    .restart local v3    # "info":Lcom/upsight/android/internal/persistence/storable/StorableInfo;, "Lcom/upsight/android/internal/persistence/storable/StorableInfo<TT;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Lcom/upsight/android/internal/persistence/storable/StorableInfo;->getIdentifierAccessor()Lcom/upsight/android/internal/persistence/storable/StorableIdentifierAccessor;

    move-result-object v8

    invoke-interface {v8, p1}, Lcom/upsight/android/internal/persistence/storable/StorableIdentifierAccessor;->getId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 278
    .local v2, "hasID":Z
    :goto_1
    if-nez v2, :cond_2

    .line 279
    invoke-virtual {v3}, Lcom/upsight/android/internal/persistence/storable/StorableInfo;->getIdentifierAccessor()Lcom/upsight/android/internal/persistence/storable/StorableIdentifierAccessor;

    move-result-object v7

    iget-object v8, p0, Lcom/upsight/android/internal/persistence/DataStore;->mIdFactory:Lcom/upsight/android/internal/persistence/storable/StorableIdFactory;

    invoke-interface {v8}, Lcom/upsight/android/internal/persistence/storable/StorableIdFactory;->createObjectID()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, p1, v8}, Lcom/upsight/android/internal/persistence/storable/StorableIdentifierAccessor;->setId(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    :cond_2
    invoke-static {p1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v5

    .line 283
    .local v5, "sourceObservable":Lrx/Observable;, "Lrx/Observable<TT;>;"
    iget-object v7, p0, Lcom/upsight/android/internal/persistence/DataStore;->mIdFactory:Lcom/upsight/android/internal/persistence/storable/StorableIdFactory;

    invoke-static {v3, v7}, Lcom/upsight/android/internal/persistence/storable/Storables;->serialize(Lcom/upsight/android/internal/persistence/storable/StorableInfo;Lcom/upsight/android/internal/persistence/storable/StorableIdFactory;)Lrx/Observable$Operator;

    move-result-object v7

    invoke-virtual {v5, v7}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v7

    new-instance v8, Lcom/upsight/android/internal/persistence/DataStore$12;

    invoke-direct {v8, p0, v2}, Lcom/upsight/android/internal/persistence/DataStore$12;-><init>(Lcom/upsight/android/internal/persistence/DataStore;Z)V

    invoke-virtual {v7, v8}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v7

    new-instance v8, Lcom/upsight/android/internal/persistence/DataStore$11;

    invoke-direct {v8, p0}, Lcom/upsight/android/internal/persistence/DataStore$11;-><init>(Lcom/upsight/android/internal/persistence/DataStore;)V

    invoke-virtual {v7, v5, v8}, Lrx/Observable;->zipWith(Lrx/Observable;Lrx/functions/Func2;)Lrx/Observable;

    move-result-object v4

    .line 301
    .local v4, "observable":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-virtual {v3}, Lcom/upsight/android/internal/persistence/storable/StorableInfo;->getStorableTypeAccessor()Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor;

    move-result-object v7

    invoke-interface {v7, p1}, Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor;->getType(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 302
    .local v6, "type":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 303
    iget-object v7, p0, Lcom/upsight/android/internal/persistence/DataStore;->mBus:Lcom/squareup/otto/Bus;

    invoke-static {v7, v6}, Lcom/upsight/android/internal/persistence/subscription/Subscriptions;->publishUpdated(Lcom/squareup/otto/Bus;Ljava/lang/String;)Lrx/functions/Action1;

    move-result-object v7

    invoke-virtual {v4, v7}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v4

    goto :goto_0

    .end local v2    # "hasID":Z
    .end local v4    # "observable":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .end local v5    # "sourceObservable":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .end local v6    # "type":Ljava/lang/String;
    :cond_3
    move v2, v7

    .line 277
    goto :goto_1

    .line 305
    .restart local v2    # "hasID":Z
    .restart local v4    # "observable":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .restart local v5    # "sourceObservable":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .restart local v6    # "type":Ljava/lang/String;
    :cond_4
    iget-object v7, p0, Lcom/upsight/android/internal/persistence/DataStore;->mBus:Lcom/squareup/otto/Bus;

    invoke-static {v7, v6}, Lcom/upsight/android/internal/persistence/subscription/Subscriptions;->publishCreated(Lcom/squareup/otto/Bus;Ljava/lang/String;)Lrx/functions/Action1;

    move-result-object v7

    invoke-virtual {v4, v7}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;
    :try_end_1
    .catch Lcom/upsight/android/UpsightException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_0
.end method

.method public subscribe(Ljava/lang/Object;)Lcom/upsight/android/persistence/UpsightSubscription;
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 204
    iget-object v1, p0, Lcom/upsight/android/internal/persistence/DataStore;->mBus:Lcom/squareup/otto/Bus;

    invoke-static {v1}, Lcom/upsight/android/internal/persistence/subscription/Subscriptions;->toObservable(Lcom/squareup/otto/Bus;)Lrx/Observable;

    move-result-object v1

    iget-object v2, p0, Lcom/upsight/android/internal/persistence/DataStore;->mObserveOnScheduler:Lrx/Scheduler;

    invoke-virtual {v1, v2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    invoke-static {p1}, Lcom/upsight/android/internal/persistence/subscription/Subscriptions;->create(Ljava/lang/Object;)Lcom/upsight/android/internal/persistence/subscription/AnnotatedSubscriber;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    .line 208
    .local v0, "subscription":Lrx/Subscription;
    invoke-static {v0}, Lcom/upsight/android/internal/persistence/subscription/Subscriptions;->from(Lrx/Subscription;)Lcom/upsight/android/persistence/UpsightSubscription;

    move-result-object v1

    return-object v1
.end method
