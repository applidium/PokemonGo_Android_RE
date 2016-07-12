.class public interface abstract Lcom/nianticlabs/nia/location/Provider$ProviderListener;
.super Ljava/lang/Object;
.source "Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nianticlabs/nia/location/Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProviderListener"
.end annotation


# virtual methods
.method public abstract onProviderLocation(Landroid/location/Location;)V
.end method

.method public abstract onProviderStatus(Lcom/nianticlabs/nia/contextservice/ServiceStatus;)V
.end method
