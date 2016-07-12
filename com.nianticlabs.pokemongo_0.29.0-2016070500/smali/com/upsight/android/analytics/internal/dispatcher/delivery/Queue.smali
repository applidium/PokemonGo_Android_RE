.class public Lcom/upsight/android/analytics/internal/dispatcher/delivery/Queue;
.super Ljava/lang/Object;
.source "Queue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/internal/dispatcher/delivery/Queue$Trash;
    }
.end annotation


# instance fields
.field private mBatchSender:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;

.field private mBatcherFactory:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Factory;

.field private mBatchers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;",
            "Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mSchemaSelectorByName:Lcom/upsight/android/analytics/internal/dispatcher/util/Selector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/upsight/android/analytics/internal/dispatcher/util/Selector",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;",
            ">;"
        }
    .end annotation
.end field

.field private mSchemaSelectorByType:Lcom/upsight/android/analytics/internal/dispatcher/util/Selector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/upsight/android/analytics/internal/dispatcher/util/Selector",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/upsight/android/analytics/internal/dispatcher/util/Selector;Lcom/upsight/android/analytics/internal/dispatcher/util/Selector;Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Factory;Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p4, "factory"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Factory;
    .param p5, "batchSender"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/upsight/android/analytics/internal/dispatcher/util/Selector",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;",
            ">;",
            "Lcom/upsight/android/analytics/internal/dispatcher/util/Selector",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;",
            ">;",
            "Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Factory;",
            "Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;",
            ")V"
        }
    .end annotation

    .prologue
    .line 94
    .local p2, "schemaSelectorByName":Lcom/upsight/android/analytics/internal/dispatcher/util/Selector;, "Lcom/upsight/android/analytics/internal/dispatcher/util/Selector<Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;>;"
    .local p3, "schemaSelectorByType":Lcom/upsight/android/analytics/internal/dispatcher/util/Selector;, "Lcom/upsight/android/analytics/internal/dispatcher/util/Selector<Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Queue;->mName:Ljava/lang/String;

    .line 96
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Queue;->mSchemaSelectorByName:Lcom/upsight/android/analytics/internal/dispatcher/util/Selector;

    .line 97
    iput-object p3, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Queue;->mSchemaSelectorByType:Lcom/upsight/android/analytics/internal/dispatcher/util/Selector;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Queue;->mBatchers:Ljava/util/Map;

    .line 99
    iput-object p4, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Queue;->mBatcherFactory:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Factory;

    .line 100
    iput-object p5, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Queue;->mBatchSender:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;

    .line 101
    return-void
.end method

.method private selectSchema(Lcom/upsight/android/analytics/internal/DataStoreRecord;)Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;
    .locals 4
    .param p1, "record"    # Lcom/upsight/android/analytics/internal/DataStoreRecord;

    .prologue
    .line 148
    const/4 v1, 0x0

    .line 151
    .local v1, "schema":Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;
    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/DataStoreRecord;->getIdentifiers()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "dynamicIdentifiers":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 153
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Queue;->mSchemaSelectorByName:Lcom/upsight/android/analytics/internal/dispatcher/util/Selector;

    invoke-interface {v2, v0}, Lcom/upsight/android/analytics/internal/dispatcher/util/Selector;->select(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "schema":Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;
    check-cast v1, Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;

    .line 157
    .restart local v1    # "schema":Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;
    :cond_0
    if-nez v1, :cond_1

    .line 158
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Queue;->mSchemaSelectorByType:Lcom/upsight/android/analytics/internal/dispatcher/util/Selector;

    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/DataStoreRecord;->getSourceType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/upsight/android/analytics/internal/dispatcher/util/Selector;->select(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "schema":Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;
    check-cast v1, Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;

    .line 161
    .restart local v1    # "schema":Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;
    :cond_1
    return-object v1
.end method


# virtual methods
.method public enqueuePacket(Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;)V
    .locals 4
    .param p1, "packet"    # Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;

    .prologue
    .line 130
    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->getRecord()Lcom/upsight/android/analytics/internal/DataStoreRecord;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Queue;->selectSchema(Lcom/upsight/android/analytics/internal/DataStoreRecord;)Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;

    move-result-object v1

    .line 131
    .local v1, "schema":Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Queue;->mBatchers:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;

    .line 132
    .local v0, "batcher":Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;
    if-nez v0, :cond_0

    .line 133
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Queue;->mBatcherFactory:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Factory;

    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Queue;->mBatchSender:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;

    invoke-interface {v2, v1, v3}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Factory;->create(Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;)Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;

    move-result-object v0

    .line 134
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Queue;->mBatchers:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_0
    invoke-virtual {v0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->addPacket(Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;)V

    .line 138
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Queue;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public setOnDeliveryListener(Lcom/upsight/android/analytics/internal/dispatcher/delivery/OnDeliveryListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/OnDeliveryListener;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Queue;->mBatchSender:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;

    invoke-virtual {v0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->setDeliveryListener(Lcom/upsight/android/analytics/internal/dispatcher/delivery/OnDeliveryListener;)V

    .line 115
    return-void
.end method

.method public setOnResponseListener(Lcom/upsight/android/analytics/internal/dispatcher/delivery/OnResponseListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/OnResponseListener;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Queue;->mBatchSender:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;

    invoke-virtual {v0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->setResponseListener(Lcom/upsight/android/analytics/internal/dispatcher/delivery/OnResponseListener;)V

    .line 122
    return-void
.end method
