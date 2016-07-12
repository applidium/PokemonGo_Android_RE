.class public Lcom/upsight/android/UpsightGooglePushServicesExtension;
.super Lcom/upsight/android/UpsightExtension;
.source "UpsightGooglePushServicesExtension.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/upsight/android/UpsightExtension",
        "<",
        "Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesComponent;",
        "Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesApi;",
        ">;"
    }
.end annotation


# static fields
.field public static final EXTENSION_NAME:Ljava/lang/String; = "com.upsight.extension.googlepushservices"


# instance fields
.field mUpsightPush:Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesApi;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/upsight/android/UpsightExtension;-><init>()V

    .line 31
    return-void
.end method


# virtual methods
.method public getApi()Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesApi;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/upsight/android/UpsightGooglePushServicesExtension;->mUpsightPush:Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesApi;

    return-object v0
.end method

.method public bridge synthetic getApi()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/upsight/android/UpsightGooglePushServicesExtension;->getApi()Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesApi;

    move-result-object v0

    return-object v0
.end method

.method protected onPostCreate(Lcom/upsight/android/UpsightContext;)V
    .locals 2
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/upsight/android/UpsightGooglePushServicesExtension;->mUpsightPush:Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesApi;

    new-instance v1, Lcom/upsight/android/UpsightGooglePushServicesExtension$1;

    invoke-direct {v1, p0}, Lcom/upsight/android/UpsightGooglePushServicesExtension$1;-><init>(Lcom/upsight/android/UpsightGooglePushServicesExtension;)V

    invoke-interface {v0, v1}, Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesApi;->register(Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnRegisterListener;)V

    .line 64
    return-void
.end method

.method protected bridge synthetic onResolve(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/UpsightExtension$BaseComponent;
    .locals 1
    .param p1, "x0"    # Lcom/upsight/android/UpsightContext;

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/upsight/android/UpsightGooglePushServicesExtension;->onResolve(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesComponent;

    move-result-object v0

    return-object v0
.end method

.method protected onResolve(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesComponent;
    .locals 2
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;

    .prologue
    .line 35
    invoke-static {}, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent;->builder()Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;

    move-result-object v0

    new-instance v1, Lcom/upsight/android/googlepushservices/internal/PushModule;

    invoke-direct {v1, p1}, Lcom/upsight/android/googlepushservices/internal/PushModule;-><init>(Lcom/upsight/android/UpsightContext;)V

    invoke-virtual {v0, v1}, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;->pushModule(Lcom/upsight/android/googlepushservices/internal/PushModule;)Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;->build()Lcom/upsight/android/googlepushservices/internal/GooglePushServicesComponent;

    move-result-object v0

    return-object v0
.end method
