.class public abstract Lcom/upsight/android/googlepushservices/UpsightGooglePushServices;
.super Ljava/lang/Object;
.source "UpsightGooglePushServices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnUnregisterListener;,
        Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnRegisterListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method public static register(Lcom/upsight/android/UpsightContext;Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnRegisterListener;)V
    .locals 5
    .param p0, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p1, "listener"    # Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnRegisterListener;

    .prologue
    .line 24
    const-string v1, "com.upsight.extension.googlepushservices"

    invoke-virtual {p0, v1}, Lcom/upsight/android/UpsightContext;->getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightGooglePushServicesExtension;

    .line 25
    .local v0, "extension":Lcom/upsight/android/UpsightGooglePushServicesExtension;
    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v0}, Lcom/upsight/android/UpsightGooglePushServicesExtension;->getApi()Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesApi;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesApi;->register(Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnRegisterListener;)V

    .line 30
    :goto_0
    return-void

    .line 28
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

.method public static unregister(Lcom/upsight/android/UpsightContext;Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnUnregisterListener;)V
    .locals 5
    .param p0, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p1, "listener"    # Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnUnregisterListener;

    .prologue
    .line 39
    const-string v1, "com.upsight.extension.googlepushservices"

    invoke-virtual {p0, v1}, Lcom/upsight/android/UpsightContext;->getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightGooglePushServicesExtension;

    .line 40
    .local v0, "extension":Lcom/upsight/android/UpsightGooglePushServicesExtension;
    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Lcom/upsight/android/UpsightGooglePushServicesExtension;->getApi()Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesApi;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesApi;->unregister(Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnUnregisterListener;)V

    .line 45
    :goto_0
    return-void

    .line 43
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
