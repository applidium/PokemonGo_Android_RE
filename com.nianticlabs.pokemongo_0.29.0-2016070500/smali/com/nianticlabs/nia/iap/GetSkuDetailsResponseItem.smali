.class Lcom/nianticlabs/nia/iap/GetSkuDetailsResponseItem;
.super Ljava/lang/Object;
.source "GetSkuDetailsResponseItem.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SkuDetailsResponseItem"


# instance fields
.field private description:Ljava/lang/String;

.field private price:Ljava/lang/String;

.field private price_amount_micros:Ljava/lang/String;

.field private price_currency_code:Ljava/lang/String;

.field private productId:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromJson(Ljava/lang/String;)Lcom/nianticlabs/nia/iap/GetSkuDetailsResponseItem;
    .locals 5
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 25
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 26
    .local v2, "jObject":Lorg/json/JSONObject;
    new-instance v1, Lcom/nianticlabs/nia/iap/GetSkuDetailsResponseItem;

    invoke-direct {v1}, Lcom/nianticlabs/nia/iap/GetSkuDetailsResponseItem;-><init>()V

    .line 27
    .local v1, "getSkuDetailsResponseItem":Lcom/nianticlabs/nia/iap/GetSkuDetailsResponseItem;
    const-string v3, "productId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/nianticlabs/nia/iap/GetSkuDetailsResponseItem;->productId:Ljava/lang/String;

    .line 28
    const-string v3, "type"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/nianticlabs/nia/iap/GetSkuDetailsResponseItem;->type:Ljava/lang/String;

    .line 29
    const-string v3, "price"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/nianticlabs/nia/iap/GetSkuDetailsResponseItem;->price:Ljava/lang/String;

    .line 30
    const-string v3, "price_amount_micros"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/nianticlabs/nia/iap/GetSkuDetailsResponseItem;->price_amount_micros:Ljava/lang/String;

    .line 31
    const-string v3, "price_currency_code"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/nianticlabs/nia/iap/GetSkuDetailsResponseItem;->price_currency_code:Ljava/lang/String;

    .line 32
    const-string v3, "title"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/nianticlabs/nia/iap/GetSkuDetailsResponseItem;->title:Ljava/lang/String;

    .line 33
    const-string v3, "description"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/nianticlabs/nia/iap/GetSkuDetailsResponseItem;->description:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .end local v1    # "getSkuDetailsResponseItem":Lcom/nianticlabs/nia/iap/GetSkuDetailsResponseItem;
    .end local v2    # "jObject":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "SkuDetailsResponseItem"

    const-string v4, "Failed to parse GetSkuDetailsResponseItem"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static fromPurchasableItemDetails(Lcom/nianticlabs/nia/iap/PurchasableItemDetails;)Lcom/nianticlabs/nia/iap/GetSkuDetailsResponseItem;
    .locals 2
    .param p0, "purchasableItemDetails"    # Lcom/nianticlabs/nia/iap/PurchasableItemDetails;

    .prologue
    .line 45
    new-instance v0, Lcom/nianticlabs/nia/iap/GetSkuDetailsResponseItem;

    invoke-direct {v0}, Lcom/nianticlabs/nia/iap/GetSkuDetailsResponseItem;-><init>()V

    .line 46
    .local v0, "getSkuDetailsResponseItem":Lcom/nianticlabs/nia/iap/GetSkuDetailsResponseItem;
    invoke-virtual {p0}, Lcom/nianticlabs/nia/iap/PurchasableItemDetails;->getItemId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/nianticlabs/nia/iap/GetSkuDetailsResponseItem;->productId:Ljava/lang/String;

    .line 47
    const-string v1, "inapp"

    iput-object v1, v0, Lcom/nianticlabs/nia/iap/GetSkuDetailsResponseItem;->type:Ljava/lang/String;

    .line 48
    invoke-virtual {p0}, Lcom/nianticlabs/nia/iap/PurchasableItemDetails;->getPrice()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/nianticlabs/nia/iap/GetSkuDetailsResponseItem;->price:Ljava/lang/String;

    .line 49
    const-string v1, ""

    iput-object v1, v0, Lcom/nianticlabs/nia/iap/GetSkuDetailsResponseItem;->price_amount_micros:Ljava/lang/String;

    .line 50
    const-string v1, ""

    iput-object v1, v0, Lcom/nianticlabs/nia/iap/GetSkuDetailsResponseItem;->price_currency_code:Ljava/lang/String;

    .line 51
    invoke-virtual {p0}, Lcom/nianticlabs/nia/iap/PurchasableItemDetails;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/nianticlabs/nia/iap/GetSkuDetailsResponseItem;->title:Ljava/lang/String;

    .line 52
    invoke-virtual {p0}, Lcom/nianticlabs/nia/iap/PurchasableItemDetails;->getDescription()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/nianticlabs/nia/iap/GetSkuDetailsResponseItem;->description:Ljava/lang/String;

    .line 53
    return-object v0
.end method

.method static toPurchasableItemDetails(Lcom/nianticlabs/nia/iap/GetSkuDetailsResponseItem;)Lcom/nianticlabs/nia/iap/PurchasableItemDetails;
    .locals 5
    .param p0, "item"    # Lcom/nianticlabs/nia/iap/GetSkuDetailsResponseItem;

    .prologue
    .line 58
    new-instance v0, Lcom/nianticlabs/nia/iap/PurchasableItemDetails;

    iget-object v1, p0, Lcom/nianticlabs/nia/iap/GetSkuDetailsResponseItem;->productId:Ljava/lang/String;

    iget-object v2, p0, Lcom/nianticlabs/nia/iap/GetSkuDetailsResponseItem;->title:Ljava/lang/String;

    iget-object v3, p0, Lcom/nianticlabs/nia/iap/GetSkuDetailsResponseItem;->description:Ljava/lang/String;

    iget-object v4, p0, Lcom/nianticlabs/nia/iap/GetSkuDetailsResponseItem;->price:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nianticlabs/nia/iap/PurchasableItemDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method getCurrencyCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GetSkuDetailsResponseItem;->price_currency_code:Ljava/lang/String;

    return-object v0
.end method

.method getPriceE6()I
    .locals 2

    .prologue
    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/nianticlabs/nia/iap/GetSkuDetailsResponseItem;->price_amount_micros:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 69
    :goto_0
    return v1

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getProductId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GetSkuDetailsResponseItem;->productId:Ljava/lang/String;

    return-object v0
.end method
