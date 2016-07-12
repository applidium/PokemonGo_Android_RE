.class public Lcom/upsight/android/analytics/internal/association/Association;
.super Ljava/lang/Object;
.source "Association.java"


# annotations
.annotation runtime Lcom/upsight/android/persistence/annotation/UpsightStorableType;
    value = "upsight.association"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/internal/association/Association$UpsightDataFilter;
    }
.end annotation


# instance fields
.field id:Ljava/lang/String;
    .annotation runtime Lcom/upsight/android/persistence/annotation/UpsightStorableIdentifier;
    .end annotation
.end field

.field timestampMs:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "timestamp_ms"
    .end annotation
.end field

.field upsightData:Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "upsight_data"
    .end annotation
.end field

.field upsightDataFilter:Lcom/upsight/android/analytics/internal/association/Association$UpsightDataFilter;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "upsight_data_filter"
    .end annotation
.end field

.field with:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "with"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/upsight/android/analytics/internal/association/Association$UpsightDataFilter;Lcom/fasterxml/jackson/databind/node/ObjectNode;J)V
    .locals 0
    .param p1, "with"    # Ljava/lang/String;
    .param p2, "upsightDataFilter"    # Lcom/upsight/android/analytics/internal/association/Association$UpsightDataFilter;
    .param p3, "upsightData"    # Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .param p4, "timestampMs"    # J

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/association/Association;->with:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/association/Association;->upsightDataFilter:Lcom/upsight/android/analytics/internal/association/Association$UpsightDataFilter;

    .line 79
    iput-object p3, p0, Lcom/upsight/android/analytics/internal/association/Association;->upsightData:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 80
    iput-wide p4, p0, Lcom/upsight/android/analytics/internal/association/Association;->timestampMs:J

    .line 81
    return-void
.end method

.method public static from(Ljava/lang/String;Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/upsight/android/analytics/internal/session/Clock;)Lcom/upsight/android/analytics/internal/association/Association;
    .locals 6
    .param p0, "with"    # Ljava/lang/String;
    .param p1, "upsightDataFilter"    # Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .param p2, "upsightData"    # Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .param p3, "mapper"    # Lcom/fasterxml/jackson/databind/ObjectMapper;
    .param p4, "clock"    # Lcom/upsight/android/analytics/internal/session/Clock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_1
    const-class v0, Lcom/upsight/android/analytics/internal/association/Association$UpsightDataFilter;

    invoke-virtual {p3, p1, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/upsight/android/analytics/internal/association/Association$UpsightDataFilter;

    .line 63
    .local v2, "filter":Lcom/upsight/android/analytics/internal/association/Association$UpsightDataFilter;
    new-instance v0, Lcom/upsight/android/analytics/internal/association/Association;

    invoke-interface {p4}, Lcom/upsight/android/analytics/internal/session/Clock;->currentTimeMillis()J

    move-result-wide v4

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/upsight/android/analytics/internal/association/Association;-><init>(Ljava/lang/String;Lcom/upsight/android/analytics/internal/association/Association$UpsightDataFilter;Lcom/fasterxml/jackson/databind/node/ObjectNode;J)V

    return-object v0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/association/Association;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestampMs()J
    .locals 2

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/upsight/android/analytics/internal/association/Association;->timestampMs:J

    return-wide v0
.end method

.method public getUpsightData()Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/association/Association;->upsightData:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    return-object v0
.end method

.method public getUpsightDataFilter()Lcom/upsight/android/analytics/internal/association/Association$UpsightDataFilter;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/association/Association;->upsightDataFilter:Lcom/upsight/android/analytics/internal/association/Association$UpsightDataFilter;

    return-object v0
.end method

.method public getWith()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/association/Association;->with:Ljava/lang/String;

    return-object v0
.end method
