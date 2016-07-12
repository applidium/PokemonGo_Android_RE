.class public interface abstract Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesApi;
.super Ljava/lang/Object;
.source "UpsightGooglePushServicesApi.java"


# virtual methods
.method public abstract createPushBillboard(Lcom/upsight/android/UpsightContext;Lcom/upsight/android/marketing/UpsightBillboard$Handler;)Lcom/upsight/android/marketing/UpsightBillboard;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract register(Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnRegisterListener;)V
.end method

.method public abstract unregister(Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnUnregisterListener;)V
.end method
