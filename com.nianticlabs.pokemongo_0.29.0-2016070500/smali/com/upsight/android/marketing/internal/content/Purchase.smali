.class public final Lcom/upsight/android/marketing/internal/content/Purchase;
.super Ljava/lang/Object;
.source "Purchase.java"

# interfaces
.implements Lcom/upsight/android/marketing/UpsightPurchase;


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


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method static from(Lcom/fasterxml/jackson/databind/JsonNode;Lcom/fasterxml/jackson/databind/ObjectMapper;)Lcom/upsight/android/marketing/UpsightPurchase;
    .locals 2
    .param p0, "json"    # Lcom/fasterxml/jackson/databind/JsonNode;
    .param p1, "mapper"    # Lcom/fasterxml/jackson/databind/ObjectMapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    const-class v1, Lcom/upsight/android/marketing/internal/content/Purchase;

    invoke-virtual {p1, p0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/marketing/UpsightPurchase;

    .line 35
    .local v0, "object":Lcom/upsight/android/marketing/UpsightPurchase;
    return-object v0
.end method


# virtual methods
.method public getProduct()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/content/Purchase;->product:Ljava/lang/String;

    return-object v0
.end method

.method public getQuantity()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/upsight/android/marketing/internal/content/Purchase;->quantity:I

    return v0
.end method
