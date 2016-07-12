.class Lcom/upsight/android/analytics/internal/association/AssociationManagerImpl;
.super Ljava/lang/Object;
.source "AssociationManagerImpl.java"

# interfaces
.implements Lcom/upsight/android/analytics/internal/association/AssociationManager;


# static fields
.field static final ASSOCIATION_EXPIRY:J = 0x240c8400L

.field private static final KEY_UPSIGHT_DATA:Ljava/lang/String; = "upsight_data"


# instance fields
.field private final mAssociations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/upsight/android/analytics/internal/association/Association;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mClock:Lcom/upsight/android/analytics/internal/session/Clock;

.field private final mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

.field private mIsLaunched:Z


# direct methods
.method constructor <init>(Lcom/upsight/android/persistence/UpsightDataStore;Lcom/upsight/android/analytics/internal/session/Clock;)V
    .locals 1
    .param p1, "dataStore"    # Lcom/upsight/android/persistence/UpsightDataStore;
    .param p2, "clock"    # Lcom/upsight/android/analytics/internal/session/Clock;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/upsight/android/analytics/internal/association/AssociationManagerImpl;->mIsLaunched:Z

    .line 70
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/association/AssociationManagerImpl;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    .line 71
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/association/AssociationManagerImpl;->mClock:Lcom/upsight/android/analytics/internal/session/Clock;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/association/AssociationManagerImpl;->mAssociations:Ljava/util/Map;

    .line 73
    return-void
.end method


# virtual methods
.method declared-synchronized addAssociation(Ljava/lang/String;Lcom/upsight/android/analytics/internal/association/Association;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "association"    # Lcom/upsight/android/analytics/internal/association/Association;

    .prologue
    .line 162
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    if-nez p2, :cond_1

    .line 172
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 166
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/association/AssociationManagerImpl;->mAssociations:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 167
    .local v0, "associations":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/analytics/internal/association/Association;>;"
    if-nez v0, :cond_2

    .line 168
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "associations":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/analytics/internal/association/Association;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 170
    .restart local v0    # "associations":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/analytics/internal/association/Association;>;"
    :cond_2
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/association/AssociationManagerImpl;->mAssociations:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 162
    .end local v0    # "associations":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/analytics/internal/association/Association;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized associate(Ljava/lang/String;Lcom/fasterxml/jackson/databind/node/ObjectNode;)V
    .locals 1
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "eventNode"    # Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/upsight/android/analytics/internal/association/AssociationManagerImpl;->associateInner(Ljava/lang/String;Lcom/fasterxml/jackson/databind/node/ObjectNode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized associateInner(Ljava/lang/String;Lcom/fasterxml/jackson/databind/node/ObjectNode;)V
    .locals 19
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "eventNode"    # Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/upsight/android/analytics/internal/association/AssociationManagerImpl;->mAssociations:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 109
    .local v4, "associations":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/analytics/internal/association/Association;>;"
    if-eqz v4, :cond_4

    .line 110
    const/4 v11, 0x0

    .line 113
    .local v11, "isMatched":Z
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 114
    .local v12, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/upsight/android/analytics/internal/association/Association;>;"
    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 115
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/upsight/android/analytics/internal/association/Association;

    .line 118
    .local v2, "association":Lcom/upsight/android/analytics/internal/association/Association;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/upsight/android/analytics/internal/association/AssociationManagerImpl;->mClock:Lcom/upsight/android/analytics/internal/session/Clock;

    invoke-interface {v14}, Lcom/upsight/android/analytics/internal/session/Clock;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v2}, Lcom/upsight/android/analytics/internal/association/Association;->getTimestampMs()J

    move-result-wide v16

    sub-long v14, v14, v16

    const-wide/32 v16, 0x240c8400

    cmp-long v14, v14, v16

    if-lez v14, :cond_1

    .line 120
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    .line 121
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/upsight/android/analytics/internal/association/AssociationManagerImpl;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    const-class v15, Lcom/upsight/android/analytics/internal/association/Association;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual {v2}, Lcom/upsight/android/analytics/internal/association/Association;->getId()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-interface/range {v14 .. v16}, Lcom/upsight/android/persistence/UpsightDataStore;->removeObservable(Ljava/lang/Class;[Ljava/lang/String;)Lrx/Observable;

    move-result-object v14

    invoke-virtual {v14}, Lrx/Observable;->subscribe()Lrx/Subscription;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 108
    .end local v2    # "association":Lcom/upsight/android/analytics/internal/association/Association;
    .end local v4    # "associations":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/analytics/internal/association/Association;>;"
    .end local v11    # "isMatched":Z
    .end local v12    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/upsight/android/analytics/internal/association/Association;>;"
    :catchall_0
    move-exception v14

    monitor-exit p0

    throw v14

    .line 122
    .restart local v2    # "association":Lcom/upsight/android/analytics/internal/association/Association;
    .restart local v4    # "associations":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/analytics/internal/association/Association;>;"
    .restart local v11    # "isMatched":Z
    .restart local v12    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/upsight/android/analytics/internal/association/Association;>;"
    :cond_1
    if-nez v11, :cond_0

    .line 124
    :try_start_1
    invoke-virtual {v2}, Lcom/upsight/android/analytics/internal/association/Association;->getUpsightDataFilter()Lcom/upsight/android/analytics/internal/association/Association$UpsightDataFilter;

    move-result-object v9

    .line 125
    .local v9, "filter":Lcom/upsight/android/analytics/internal/association/Association$UpsightDataFilter;
    const-string v14, "upsight_data"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->path(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v3

    .line 126
    .local v3, "associationNode":Lcom/fasterxml/jackson/databind/JsonNode;
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JsonNode;->isObject()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 127
    move-object v0, v3

    check-cast v0, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-object v6, v0

    .line 128
    .local v6, "eventUpsightData":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    iget-object v14, v9, Lcom/upsight/android/analytics/internal/association/Association$UpsightDataFilter;->matchKey:Ljava/lang/String;

    invoke-virtual {v6, v14}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->path(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v5

    .line 129
    .local v5, "eventMatchValue":Lcom/fasterxml/jackson/databind/JsonNode;
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/JsonNode;->isValueNode()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 130
    iget-object v14, v9, Lcom/upsight/android/analytics/internal/association/Association$UpsightDataFilter;->matchValues:Lcom/fasterxml/jackson/databind/node/ArrayNode;

    invoke-virtual {v14}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 131
    .local v13, "matchValue":Lcom/fasterxml/jackson/databind/JsonNode;
    invoke-virtual {v5, v13}, Lcom/fasterxml/jackson/databind/JsonNode;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 133
    invoke-virtual {v2}, Lcom/upsight/android/analytics/internal/association/Association;->getUpsightData()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v14

    invoke-virtual {v14}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->fields()Ljava/util/Iterator;

    move-result-object v8

    .line 134
    .local v8, "fields":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;>;"
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 135
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 136
    .local v7, "field":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v6, v14, v15}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    goto :goto_1

    .line 140
    .end local v7    # "field":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;"
    :cond_3
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    .line 141
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/upsight/android/analytics/internal/association/AssociationManagerImpl;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    const-class v15, Lcom/upsight/android/analytics/internal/association/Association;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual {v2}, Lcom/upsight/android/analytics/internal/association/Association;->getId()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-interface/range {v14 .. v16}, Lcom/upsight/android/persistence/UpsightDataStore;->removeObservable(Ljava/lang/Class;[Ljava/lang/String;)Lrx/Observable;

    move-result-object v14

    invoke-virtual {v14}, Lrx/Observable;->subscribe()Lrx/Subscription;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    const/4 v11, 0x1

    .line 144
    goto/16 :goto_0

    .line 152
    .end local v2    # "association":Lcom/upsight/android/analytics/internal/association/Association;
    .end local v3    # "associationNode":Lcom/fasterxml/jackson/databind/JsonNode;
    .end local v5    # "eventMatchValue":Lcom/fasterxml/jackson/databind/JsonNode;
    .end local v6    # "eventUpsightData":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .end local v8    # "fields":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;>;"
    .end local v9    # "filter":Lcom/upsight/android/analytics/internal/association/Association$UpsightDataFilter;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "isMatched":Z
    .end local v12    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/upsight/android/analytics/internal/association/Association;>;"
    .end local v13    # "matchValue":Lcom/fasterxml/jackson/databind/JsonNode;
    :cond_4
    monitor-exit p0

    return-void
.end method

.method public handleCreate(Lcom/upsight/android/analytics/internal/association/Association;)V
    .locals 1
    .param p1, "association"    # Lcom/upsight/android/analytics/internal/association/Association;
    .annotation runtime Lcom/upsight/android/persistence/annotation/Created;
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/association/Association;->getWith()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/upsight/android/analytics/internal/association/AssociationManagerImpl;->addAssociation(Ljava/lang/String;Lcom/upsight/android/analytics/internal/association/Association;)V

    .line 91
    return-void
.end method

.method public declared-synchronized launch()V
    .locals 1

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/upsight/android/analytics/internal/association/AssociationManagerImpl;->mIsLaunched:Z

    if-nez v0, :cond_0

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/upsight/android/analytics/internal/association/AssociationManagerImpl;->mIsLaunched:Z

    .line 79
    invoke-virtual {p0}, Lcom/upsight/android/analytics/internal/association/AssociationManagerImpl;->launchInner()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :cond_0
    monitor-exit p0

    return-void

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized launchInner()V
    .locals 2

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/association/AssociationManagerImpl;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    invoke-interface {v0, p0}, Lcom/upsight/android/persistence/UpsightDataStore;->subscribe(Ljava/lang/Object;)Lcom/upsight/android/persistence/UpsightSubscription;

    .line 98
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/association/AssociationManagerImpl;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    const-class v1, Lcom/upsight/android/analytics/internal/association/Association;

    invoke-interface {v0, v1}, Lcom/upsight/android/persistence/UpsightDataStore;->fetchObservable(Ljava/lang/Class;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/upsight/android/analytics/internal/association/AssociationManagerImpl$1;

    invoke-direct {v1, p0}, Lcom/upsight/android/analytics/internal/association/AssociationManagerImpl$1;-><init>(Lcom/upsight/android/analytics/internal/association/AssociationManagerImpl;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
