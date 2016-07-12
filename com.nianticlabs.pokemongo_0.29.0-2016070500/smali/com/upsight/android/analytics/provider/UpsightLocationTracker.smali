.class public abstract Lcom/upsight/android/analytics/provider/UpsightLocationTracker;
.super Ljava/lang/Object;
.source "UpsightLocationTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method public static purge(Lcom/upsight/android/UpsightContext;)V
    .locals 5
    .param p0, "upsight"    # Lcom/upsight/android/UpsightContext;

    .prologue
    .line 40
    const-string v1, "com.upsight.extension.analytics"

    invoke-virtual {p0, v1}, Lcom/upsight/android/UpsightContext;->getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightAnalyticsExtension;

    .line 41
    .local v0, "extension":Lcom/upsight/android/UpsightAnalyticsExtension;
    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0}, Lcom/upsight/android/UpsightAnalyticsExtension;->getApi()Lcom/upsight/android/analytics/UpsightAnalyticsApi;

    move-result-object v1

    invoke-interface {v1}, Lcom/upsight/android/analytics/UpsightAnalyticsApi;->purgeLocation()V

    .line 46
    :goto_0
    return-void

    .line 44
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

.method public static track(Lcom/upsight/android/UpsightContext;Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;)V
    .locals 5
    .param p0, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p1, "locationData"    # Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;

    .prologue
    .line 26
    const-string v1, "com.upsight.extension.analytics"

    invoke-virtual {p0, v1}, Lcom/upsight/android/UpsightContext;->getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightAnalyticsExtension;

    .line 27
    .local v0, "extension":Lcom/upsight/android/UpsightAnalyticsExtension;
    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {v0}, Lcom/upsight/android/UpsightAnalyticsExtension;->getApi()Lcom/upsight/android/analytics/UpsightAnalyticsApi;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/upsight/android/analytics/UpsightAnalyticsApi;->trackLocation(Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;)V

    .line 32
    :goto_0
    return-void

    .line 30
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
.method public abstract purge()V
.end method

.method public abstract track(Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;)V
.end method
