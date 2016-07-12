.class public final Lcom/upsight/android/marketing/internal/content/Reward;
.super Ljava/lang/Object;
.source "Reward.java"

# interfaces
.implements Lcom/upsight/android/marketing/UpsightReward;


# instance fields
.field product:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "product"
    .end annotation
.end field

.field quantity:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "quantity"
    .end annotation
.end field

.field signatureData:Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "signature_data"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method static from(Lcom/fasterxml/jackson/databind/JsonNode;Lcom/fasterxml/jackson/databind/ObjectMapper;)Lcom/upsight/android/marketing/UpsightReward;
    .locals 2
    .param p0, "json"    # Lcom/fasterxml/jackson/databind/JsonNode;
    .param p1, "mapper"    # Lcom/fasterxml/jackson/databind/ObjectMapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    const-class v1, Lcom/upsight/android/marketing/internal/content/Reward;

    invoke-virtual {p1, p0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/marketing/UpsightReward;

    .line 42
    .local v0, "object":Lcom/upsight/android/marketing/UpsightReward;
    return-object v0
.end method


# virtual methods
.method public getProduct()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/content/Reward;->product:Ljava/lang/String;

    return-object v0
.end method

.method public getQuantity()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/upsight/android/marketing/internal/content/Reward;->quantity:I

    return v0
.end method

.method public getSignatureData()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/content/Reward;->signatureData:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-static {v0}, Lcom/upsight/android/analytics/internal/util/JacksonHelper$JSONObjectSerializer;->fromObjectNode(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
