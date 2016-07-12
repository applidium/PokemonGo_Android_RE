.class Lcom/upsight/android/analytics/internal/GooglePlayHelper;
.super Lcom/upsight/android/analytics/UpsightGooglePlayHelper;
.source "GooglePlayHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/internal/GooglePlayHelper$PurchaseData;,
        Lcom/upsight/android/analytics/internal/GooglePlayHelper$Resolution;
    }
.end annotation


# static fields
.field private static final STORE_NAME:Ljava/lang/String; = "google_play"


# instance fields
.field private mMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

.field private mUpsight:Lcom/upsight/android/UpsightContext;


# direct methods
.method constructor <init>(Lcom/upsight/android/UpsightContext;Lcom/fasterxml/jackson/databind/ObjectMapper;)V
    .locals 0
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p2, "mapper"    # Lcom/fasterxml/jackson/databind/ObjectMapper;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/upsight/android/analytics/UpsightGooglePlayHelper;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/GooglePlayHelper;->mUpsight:Lcom/upsight/android/UpsightContext;

    .line 93
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/GooglePlayHelper;->mMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 94
    return-void
.end method

.method private createIapBundle(ILjava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "responseCode"    # I
    .param p2, "purchaseData"    # Ljava/lang/String;
    .param p3, "dataSignature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 197
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 198
    .local v0, "iapBundle":Lorg/json/JSONObject;
    const-string v1, "RESPONSE_CODE"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "INAPP_PURCHASE_DATA"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "INAPP_DATA_SIGNATURE"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public trackPurchase(ILjava/lang/String;DDLjava/lang/String;Landroid/content/Intent;Lcom/upsight/android/analytics/event/UpsightPublisherData;)V
    .locals 17
    .param p1, "quantity"    # I
    .param p2, "currency"    # Ljava/lang/String;
    .param p3, "price"    # D
    .param p5, "totalPrice"    # D
    .param p7, "product"    # Ljava/lang/String;
    .param p8, "responseData"    # Landroid/content/Intent;
    .param p9, "publisherData"    # Lcom/upsight/android/analytics/event/UpsightPublisherData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/upsight/android/UpsightException;
        }
    .end annotation

    .prologue
    .line 100
    const-string v1, "RESPONSE_CODE"

    const/high16 v3, -0x80000000

    move-object/from16 v0, p8

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 101
    .local v15, "responseCode":I
    packed-switch v15, :pswitch_data_0

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to track Google Play purchase. See response code for details. responseCode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 116
    .local v10, "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/upsight/android/analytics/internal/GooglePlayHelper;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    const-string v3, "Upsight"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v3, v10, v4}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    new-instance v1, Lcom/upsight/android/UpsightException;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v1, v10, v3}, Lcom/upsight/android/UpsightException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 106
    .end local v10    # "msg":Ljava/lang/String;
    :pswitch_0
    const-string v1, "google_play"

    const/4 v2, 0x0

    invoke-static/range {p5 .. p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v6, p2

    move-object/from16 v7, p7

    invoke-static/range {v1 .. v7}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent;->createBuilder(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;

    move-result-object v1

    sget-object v3, Lcom/upsight/android/analytics/internal/GooglePlayHelper$Resolution;->cancel:Lcom/upsight/android/analytics/internal/GooglePlayHelper$Resolution;

    invoke-virtual {v3}, Lcom/upsight/android/analytics/internal/GooglePlayHelper$Resolution;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->setResolution(Ljava/lang/String;)Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;

    move-result-object v1

    move-object/from16 v0, p9

    invoke-virtual {v1, v0}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->put(Lcom/upsight/android/analytics/event/UpsightPublisherData;)Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/upsight/android/analytics/internal/GooglePlayHelper;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v1, v3}, Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;->record(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;

    .line 185
    :goto_0
    return-void

    .line 121
    :pswitch_1
    const-string v1, "INAPP_PURCHASE_DATA"

    move-object/from16 v0, p8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 122
    .local v13, "purchaseData":Ljava/lang/String;
    const-string v1, "INAPP_DATA_SIGNATURE"

    move-object/from16 v0, p8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 123
    .local v8, "dataSignature":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    const-string v10, "Failed to track Google Play purchase due to null or empty purchase data."

    .line 125
    .restart local v10    # "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/upsight/android/analytics/internal/GooglePlayHelper;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    const-string v3, "Upsight"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v3, v10, v4}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    new-instance v1, Lcom/upsight/android/UpsightException;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v1, v10, v3}, Lcom/upsight/android/UpsightException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 127
    .end local v10    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    const-string v10, "Failed to track Google Play purchase due to null or empty data signature."

    .line 129
    .restart local v10    # "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/upsight/android/analytics/internal/GooglePlayHelper;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    const-string v3, "Upsight"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v3, v10, v4}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    new-instance v1, Lcom/upsight/android/UpsightException;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v1, v10, v3}, Lcom/upsight/android/UpsightException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 136
    .end local v10    # "msg":Ljava/lang/String;
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/upsight/android/analytics/internal/GooglePlayHelper;->mMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v1, v13}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readTree(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v11

    .line 137
    .local v11, "node":Lcom/fasterxml/jackson/databind/JsonNode;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/upsight/android/analytics/internal/GooglePlayHelper;->mMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v3, Lcom/upsight/android/analytics/internal/GooglePlayHelper$PurchaseData;

    invoke-virtual {v1, v11, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/upsight/android/analytics/internal/GooglePlayHelper$PurchaseData;
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 149
    .local v12, "purchase":Lcom/upsight/android/analytics/internal/GooglePlayHelper$PurchaseData;
    if-eqz v12, :cond_2

    .line 152
    iget v1, v12, Lcom/upsight/android/analytics/internal/GooglePlayHelper$PurchaseData;->purchaseState:I

    packed-switch v1, :pswitch_data_1

    .line 163
    const-string v10, "Failed to track Google Play purchase. Invalid purchase state."

    .line 164
    .restart local v10    # "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/upsight/android/analytics/internal/GooglePlayHelper;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    const-string v3, "Upsight"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v3, v10, v4}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    new-instance v1, Lcom/upsight/android/UpsightException;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v1, v10, v3}, Lcom/upsight/android/UpsightException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 138
    .end local v10    # "msg":Ljava/lang/String;
    .end local v11    # "node":Lcom/fasterxml/jackson/databind/JsonNode;
    .end local v12    # "purchase":Lcom/upsight/android/analytics/internal/GooglePlayHelper$PurchaseData;
    :catch_0
    move-exception v9

    .line 139
    .local v9, "e":Lcom/fasterxml/jackson/core/JsonParseException;
    const-string v10, "Failed to track Google Play purchase due to purchase data schema mismatch."

    .line 140
    .restart local v10    # "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/upsight/android/analytics/internal/GooglePlayHelper;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    const-string v3, "Upsight"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v3, v9, v10, v4}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    new-instance v1, Lcom/upsight/android/UpsightException;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v1, v9, v10, v3}, Lcom/upsight/android/UpsightException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 142
    .end local v9    # "e":Lcom/fasterxml/jackson/core/JsonParseException;
    .end local v10    # "msg":Ljava/lang/String;
    :catch_1
    move-exception v9

    .line 143
    .local v9, "e":Ljava/io/IOException;
    const-string v10, "Failed to track Google Play purchase due to malformed purchase data JSON."

    .line 144
    .restart local v10    # "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/upsight/android/analytics/internal/GooglePlayHelper;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    const-string v3, "Upsight"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v3, v9, v10, v4}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    new-instance v1, Lcom/upsight/android/UpsightException;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v1, v9, v10, v3}, Lcom/upsight/android/UpsightException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 154
    .end local v9    # "e":Ljava/io/IOException;
    .end local v10    # "msg":Ljava/lang/String;
    .restart local v11    # "node":Lcom/fasterxml/jackson/databind/JsonNode;
    .restart local v12    # "purchase":Lcom/upsight/android/analytics/internal/GooglePlayHelper$PurchaseData;
    :pswitch_2
    sget-object v14, Lcom/upsight/android/analytics/internal/GooglePlayHelper$Resolution;->buy:Lcom/upsight/android/analytics/internal/GooglePlayHelper$Resolution;

    .line 169
    .local v14, "resolution":Lcom/upsight/android/analytics/internal/GooglePlayHelper$Resolution;
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v13, v8}, Lcom/upsight/android/analytics/internal/GooglePlayHelper;->createIapBundle(ILjava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 170
    .local v2, "iapBundle":Lorg/json/JSONObject;
    const-string v1, "google_play"

    invoke-static/range {p5 .. p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v6, p2

    move-object/from16 v7, p7

    invoke-static/range {v1 .. v7}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent;->createBuilder(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;

    move-result-object v1

    invoke-virtual {v14}, Lcom/upsight/android/analytics/internal/GooglePlayHelper$Resolution;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->setResolution(Ljava/lang/String;)Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;

    move-result-object v1

    move-object/from16 v0, p9

    invoke-virtual {v1, v0}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationIapEvent$Builder;->put(Lcom/upsight/android/analytics/event/UpsightPublisherData;)Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/upsight/android/analytics/internal/GooglePlayHelper;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v1, v3}, Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;->record(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 175
    .end local v2    # "iapBundle":Lorg/json/JSONObject;
    :catch_2
    move-exception v9

    .line 176
    .local v9, "e":Lorg/json/JSONException;
    const-string v10, "Failed to track Google Play purchase. Unable to create iap_bundle."

    .line 177
    .restart local v10    # "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/upsight/android/analytics/internal/GooglePlayHelper;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    const-string v3, "Upsight"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v3, v9, v10, v4}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    new-instance v1, Lcom/upsight/android/UpsightException;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v1, v9, v10, v3}, Lcom/upsight/android/UpsightException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 157
    .end local v9    # "e":Lorg/json/JSONException;
    .end local v10    # "msg":Ljava/lang/String;
    .end local v14    # "resolution":Lcom/upsight/android/analytics/internal/GooglePlayHelper$Resolution;
    :pswitch_3
    sget-object v14, Lcom/upsight/android/analytics/internal/GooglePlayHelper$Resolution;->cancel:Lcom/upsight/android/analytics/internal/GooglePlayHelper$Resolution;

    .line 158
    .restart local v14    # "resolution":Lcom/upsight/android/analytics/internal/GooglePlayHelper$Resolution;
    goto :goto_1

    .line 160
    .end local v14    # "resolution":Lcom/upsight/android/analytics/internal/GooglePlayHelper$Resolution;
    :pswitch_4
    sget-object v14, Lcom/upsight/android/analytics/internal/GooglePlayHelper$Resolution;->refund:Lcom/upsight/android/analytics/internal/GooglePlayHelper$Resolution;

    .line 161
    .restart local v14    # "resolution":Lcom/upsight/android/analytics/internal/GooglePlayHelper$Resolution;
    goto :goto_1

    .line 181
    .end local v14    # "resolution":Lcom/upsight/android/analytics/internal/GooglePlayHelper$Resolution;
    :cond_2
    const-string v10, "Failed to track Google Play purchase due to missing fields in purchase data."

    .line 182
    .restart local v10    # "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/upsight/android/analytics/internal/GooglePlayHelper;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    const-string v3, "Upsight"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v3, v10, v4}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    new-instance v1, Lcom/upsight/android/UpsightException;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v1, v10, v3}, Lcom/upsight/android/UpsightException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 152
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
