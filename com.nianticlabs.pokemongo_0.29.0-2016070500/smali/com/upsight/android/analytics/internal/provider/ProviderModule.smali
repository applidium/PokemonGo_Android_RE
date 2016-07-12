.class public final Lcom/upsight/android/analytics/internal/provider/ProviderModule;
.super Ljava/lang/Object;
.source "ProviderModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public providesOptOutStatus(Lcom/upsight/android/analytics/internal/provider/OptOutStatus;)Lcom/upsight/android/analytics/provider/UpsightOptOutStatus;
    .locals 0
    .param p1, "optOutStatus"    # Lcom/upsight/android/analytics/internal/provider/OptOutStatus;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 28
    return-object p1
.end method

.method public providesUpsightLocationTracker(Lcom/upsight/android/analytics/internal/provider/LocationTracker;)Lcom/upsight/android/analytics/provider/UpsightLocationTracker;
    .locals 0
    .param p1, "locationTracker"    # Lcom/upsight/android/analytics/internal/provider/LocationTracker;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 22
    return-object p1
.end method

.method public providesUpsightUserAttributes(Lcom/upsight/android/analytics/internal/provider/UserAttributes;)Lcom/upsight/android/analytics/provider/UpsightUserAttributes;
    .locals 0
    .param p1, "userAttributes"    # Lcom/upsight/android/analytics/internal/provider/UserAttributes;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 34
    return-object p1
.end method
