.class public Lcom/upsight/android/googlepushservices/UpsightPushBillboard;
.super Ljava/lang/Object;
.source "UpsightPushBillboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/googlepushservices/UpsightPushBillboard$1;,
        Lcom/upsight/android/googlepushservices/UpsightPushBillboard$NoOpBillboard;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static create(Lcom/upsight/android/UpsightContext;Lcom/upsight/android/marketing/UpsightBillboard$Handler;)Lcom/upsight/android/marketing/UpsightBillboard;
    .locals 5
    .param p0, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p1, "handler"    # Lcom/upsight/android/marketing/UpsightBillboard$Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 32
    const-string v1, "com.upsight.extension.googlepushservices"

    invoke-virtual {p0, v1}, Lcom/upsight/android/UpsightContext;->getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightGooglePushServicesExtension;

    .line 33
    .local v0, "extension":Lcom/upsight/android/UpsightGooglePushServicesExtension;
    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0}, Lcom/upsight/android/UpsightGooglePushServicesExtension;->getApi()Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesApi;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesApi;->createPushBillboard(Lcom/upsight/android/UpsightContext;Lcom/upsight/android/marketing/UpsightBillboard$Handler;)Lcom/upsight/android/marketing/UpsightBillboard;

    .line 38
    :goto_0
    new-instance v1, Lcom/upsight/android/googlepushservices/UpsightPushBillboard$NoOpBillboard;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/upsight/android/googlepushservices/UpsightPushBillboard$NoOpBillboard;-><init>(Lcom/upsight/android/googlepushservices/UpsightPushBillboard$1;)V

    return-object v1

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    const-string v2, "Upsight"

    const-string v3, "com.upsight.extension.googlepushservices must be registered in your Android Manifest"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
