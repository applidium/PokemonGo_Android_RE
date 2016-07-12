.class public final Lcom/upsight/android/googleadvertisingid/internal/GoogleAdvertisingProviderModule;
.super Ljava/lang/Object;
.source "GoogleAdvertisingProviderModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# instance fields
.field private final mUpsight:Lcom/upsight/android/UpsightContext;


# direct methods
.method public constructor <init>(Lcom/upsight/android/UpsightContext;)V
    .locals 0
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/upsight/android/googleadvertisingid/internal/GoogleAdvertisingProviderModule;->mUpsight:Lcom/upsight/android/UpsightContext;

    .line 25
    return-void
.end method


# virtual methods
.method public provideGooglePlayAdvertisingProvider()Lcom/upsight/android/googleadvertisingid/internal/GooglePlayAdvertisingProvider;
    .locals 3
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 36
    iget-object v1, p0, Lcom/upsight/android/googleadvertisingid/internal/GoogleAdvertisingProviderModule;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v0

    .line 38
    .local v0, "logger":Lcom/upsight/android/logger/UpsightLogger;
    new-instance v1, Lcom/upsight/android/googleadvertisingid/internal/GooglePlayAdvertisingProvider;

    iget-object v2, p0, Lcom/upsight/android/googleadvertisingid/internal/GoogleAdvertisingProviderModule;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-direct {v1, v2, v0}, Lcom/upsight/android/googleadvertisingid/internal/GooglePlayAdvertisingProvider;-><init>(Landroid/content/Context;Lcom/upsight/android/logger/UpsightLogger;)V

    return-object v1
.end method

.method provideUpsightContext()Lcom/upsight/android/UpsightContext;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/upsight/android/googleadvertisingid/internal/GoogleAdvertisingProviderModule;->mUpsight:Lcom/upsight/android/UpsightContext;

    return-object v0
.end method
