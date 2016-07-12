.class public final Lcom/upsight/android/UpsightGoogleAdvertisingIdExtension;
.super Lcom/upsight/android/UpsightExtension;
.source "UpsightGoogleAdvertisingIdExtension.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/upsight/android/UpsightExtension",
        "<",
        "Lcom/upsight/android/googleadvertisingid/UpsightGoogleAdvertisingProviderComponent;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static final EXTENSION_NAME:Ljava/lang/String; = "com.upsight.extension.googleadvertisingid"


# instance fields
.field mAdvertisingIdProvider:Lcom/upsight/android/googleadvertisingid/internal/GooglePlayAdvertisingProvider;
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
.method protected onCreate(Lcom/upsight/android/UpsightContext;)V
    .locals 1
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/upsight/android/UpsightGoogleAdvertisingIdExtension;->mAdvertisingIdProvider:Lcom/upsight/android/googleadvertisingid/internal/GooglePlayAdvertisingProvider;

    invoke-static {p1, v0}, Lcom/upsight/android/analytics/provider/UpsightDataProvider;->register(Lcom/upsight/android/UpsightContext;Lcom/upsight/android/analytics/provider/UpsightDataProvider;)V

    .line 43
    return-void
.end method

.method protected bridge synthetic onResolve(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/UpsightExtension$BaseComponent;
    .locals 1
    .param p1, "x0"    # Lcom/upsight/android/UpsightContext;

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/upsight/android/UpsightGoogleAdvertisingIdExtension;->onResolve(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/googleadvertisingid/UpsightGoogleAdvertisingProviderComponent;

    move-result-object v0

    return-object v0
.end method

.method protected onResolve(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/googleadvertisingid/UpsightGoogleAdvertisingProviderComponent;
    .locals 2
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;

    .prologue
    .line 35
    invoke-static {}, Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent;->builder()Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent$Builder;

    move-result-object v0

    new-instance v1, Lcom/upsight/android/googleadvertisingid/internal/GoogleAdvertisingProviderModule;

    invoke-direct {v1, p1}, Lcom/upsight/android/googleadvertisingid/internal/GoogleAdvertisingProviderModule;-><init>(Lcom/upsight/android/UpsightContext;)V

    invoke-virtual {v0, v1}, Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent$Builder;->googleAdvertisingProviderModule(Lcom/upsight/android/googleadvertisingid/internal/GoogleAdvertisingProviderModule;)Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent$Builder;->build()Lcom/upsight/android/googleadvertisingid/internal/GoogleAdvertisingProviderComponent;

    move-result-object v0

    return-object v0
.end method
