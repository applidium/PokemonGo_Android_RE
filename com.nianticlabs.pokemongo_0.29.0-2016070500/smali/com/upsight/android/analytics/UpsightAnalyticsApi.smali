.class public interface abstract Lcom/upsight/android/analytics/UpsightAnalyticsApi;
.super Ljava/lang/Object;
.source "UpsightAnalyticsApi.java"


# virtual methods
.method public abstract getBooleanUserAttribute(Ljava/lang/String;)Ljava/lang/Boolean;
.end method

.method public abstract getDefaultUserAttributes()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFloatUserAttribute(Ljava/lang/String;)Ljava/lang/Float;
.end method

.method public abstract getIntUserAttribute(Ljava/lang/String;)Ljava/lang/Integer;
.end method

.method public abstract getOptOutStatus()Z
.end method

.method public abstract getStringUserAttribute(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract purgeLocation()V
.end method

.method public abstract putUserAttribute(Ljava/lang/String;Ljava/lang/Boolean;)V
.end method

.method public abstract putUserAttribute(Ljava/lang/String;Ljava/lang/Float;)V
.end method

.method public abstract putUserAttribute(Ljava/lang/String;Ljava/lang/Integer;)V
.end method

.method public abstract putUserAttribute(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract record(Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;)V
.end method

.method public abstract registerDataProvider(Lcom/upsight/android/analytics/provider/UpsightDataProvider;)V
.end method

.method public abstract setOptOutStatus(Z)V
.end method

.method public abstract trackLocation(Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;)V
.end method

.method public abstract trackPurchase(ILjava/lang/String;DDLjava/lang/String;Landroid/content/Intent;Lcom/upsight/android/analytics/event/UpsightPublisherData;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/upsight/android/UpsightException;
        }
    .end annotation
.end method
