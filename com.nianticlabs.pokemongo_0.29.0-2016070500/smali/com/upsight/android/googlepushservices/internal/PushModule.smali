.class public final Lcom/upsight/android/googlepushservices/internal/PushModule;
.super Ljava/lang/Object;
.source "PushModule.java"


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
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/upsight/android/googlepushservices/internal/PushModule;->mUpsight:Lcom/upsight/android/UpsightContext;

    .line 24
    return-void
.end method


# virtual methods
.method public provideGooglePushServicesApi(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;)Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesApi;
    .locals 0
    .param p1, "googlePushServices"    # Lcom/upsight/android/googlepushservices/internal/GooglePushServices;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 43
    return-object p1
.end method

.method provideSessionManager(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/analytics/internal/session/SessionManager;
    .locals 1
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 35
    const-string v0, "com.upsight.extension.analytics"

    invoke-virtual {p1, v0}, Lcom/upsight/android/UpsightContext;->getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightAnalyticsExtension;

    invoke-virtual {v0}, Lcom/upsight/android/UpsightAnalyticsExtension;->getComponent()Lcom/upsight/android/UpsightExtension$BaseComponent;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/UpsightAnalyticsComponent;

    invoke-interface {v0}, Lcom/upsight/android/analytics/UpsightAnalyticsComponent;->sessionManager()Lcom/upsight/android/analytics/internal/session/SessionManager;

    move-result-object v0

    return-object v0
.end method

.method provideUpsightContext()Lcom/upsight/android/UpsightContext;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/upsight/android/googlepushservices/internal/PushModule;->mUpsight:Lcom/upsight/android/UpsightContext;

    return-object v0
.end method
