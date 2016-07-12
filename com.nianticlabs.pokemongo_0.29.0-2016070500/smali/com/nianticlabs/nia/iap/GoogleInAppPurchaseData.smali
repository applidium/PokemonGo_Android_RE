.class final Lcom/nianticlabs/nia/iap/GoogleInAppPurchaseData;
.super Ljava/lang/Object;
.source "GoogleInAppPurchaseData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GoogleInAppPurchaseData"


# instance fields
.field private developerPayload:Ljava/lang/String;

.field private orderId:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private productId:Ljava/lang/String;

.field private purchaseState:Ljava/lang/String;

.field private purchaseTime:J


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromJson(Ljava/lang/String;)Lcom/nianticlabs/nia/iap/GoogleInAppPurchaseData;
    .locals 6
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 18
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 19
    .local v2, "jObject":Lorg/json/JSONObject;
    new-instance v1, Lcom/nianticlabs/nia/iap/GoogleInAppPurchaseData;

    invoke-direct {v1}, Lcom/nianticlabs/nia/iap/GoogleInAppPurchaseData;-><init>()V

    .line 20
    .local v1, "googleInAppPurchaseData":Lcom/nianticlabs/nia/iap/GoogleInAppPurchaseData;
    const-string v3, "orderId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/nianticlabs/nia/iap/GoogleInAppPurchaseData;->orderId:Ljava/lang/String;

    .line 21
    const-string v3, "packageName"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/nianticlabs/nia/iap/GoogleInAppPurchaseData;->packageName:Ljava/lang/String;

    .line 22
    const-string v3, "productId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/nianticlabs/nia/iap/GoogleInAppPurchaseData;->productId:Ljava/lang/String;

    .line 23
    const-string v3, "purchaseTime"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/nianticlabs/nia/iap/GoogleInAppPurchaseData;->purchaseTime:J

    .line 24
    const-string v3, "purchaseState"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/nianticlabs/nia/iap/GoogleInAppPurchaseData;->purchaseState:Ljava/lang/String;

    .line 25
    const-string v3, "developerPayload"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/nianticlabs/nia/iap/GoogleInAppPurchaseData;->developerPayload:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .end local v1    # "googleInAppPurchaseData":Lcom/nianticlabs/nia/iap/GoogleInAppPurchaseData;
    .end local v2    # "jObject":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "GoogleInAppPurchaseData"

    const-string v4, "Failed to parse GoogleInAppPurchaseData: %s"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method getDeveloperPayload()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppPurchaseData;->developerPayload:Ljava/lang/String;

    return-object v0
.end method

.method getOrderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppPurchaseData;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppPurchaseData;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method getProductId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppPurchaseData;->productId:Ljava/lang/String;

    return-object v0
.end method

.method getPurchaseState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppPurchaseData;->purchaseState:Ljava/lang/String;

    return-object v0
.end method

.method getPurchaseTime()J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppPurchaseData;->purchaseTime:J

    return-wide v0
.end method
