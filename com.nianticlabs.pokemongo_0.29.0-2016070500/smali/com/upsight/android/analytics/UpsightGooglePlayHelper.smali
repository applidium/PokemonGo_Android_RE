.class public abstract Lcom/upsight/android/analytics/UpsightGooglePlayHelper;
.super Ljava/lang/Object;
.source "UpsightGooglePlayHelper.java"


# static fields
.field public static final BILLING_RESPONSE_RESULT_OK:I = 0x0

.field public static final BILLING_RESPONSE_RESULT_USER_CANCELED:I = 0x1

.field public static final PURCHASE_INAPP_DATA_SIGNATURE:Ljava/lang/String; = "INAPP_DATA_SIGNATURE"

.field public static final PURCHASE_INAPP_PURCHASE_DATA:Ljava/lang/String; = "INAPP_PURCHASE_DATA"

.field public static final PURCHASE_RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"

.field public static final PURCHASE_STATE_CANCELED:I = 0x1

.field public static final PURCHASE_STATE_PURCHASED:I = 0x0

.field public static final PURCHASE_STATE_REFUNDED:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static trackPurchase(Lcom/upsight/android/UpsightContext;ILjava/lang/String;DDLjava/lang/String;Landroid/content/Intent;Lcom/upsight/android/analytics/event/UpsightPublisherData;)V
    .locals 11
    .param p0, "upsight"    # Lcom/upsight/android/UpsightContext;
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
    const-string v1, "com.upsight.extension.analytics"

    invoke-virtual {p0, v1}, Lcom/upsight/android/UpsightContext;->getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightAnalyticsExtension;

    .line 101
    .local v0, "extension":Lcom/upsight/android/UpsightAnalyticsExtension;
    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Lcom/upsight/android/UpsightAnalyticsExtension;->getApi()Lcom/upsight/android/analytics/UpsightAnalyticsApi;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Lcom/upsight/android/analytics/UpsightAnalyticsApi;->trackPurchase(ILjava/lang/String;DDLjava/lang/String;Landroid/content/Intent;Lcom/upsight/android/analytics/event/UpsightPublisherData;)V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    const-string v2, "Upsight"

    const-string v3, "com.upsight.extension.analytics must be registered in your Android Manifest"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract trackPurchase(ILjava/lang/String;DDLjava/lang/String;Landroid/content/Intent;Lcom/upsight/android/analytics/event/UpsightPublisherData;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/upsight/android/UpsightException;
        }
    .end annotation
.end method
