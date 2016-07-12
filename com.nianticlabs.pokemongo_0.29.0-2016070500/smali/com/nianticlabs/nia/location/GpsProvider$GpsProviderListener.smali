.class public interface abstract Lcom/nianticlabs/nia/location/GpsProvider$GpsProviderListener;
.super Ljava/lang/Object;
.source "GpsProvider.java"

# interfaces
.implements Lcom/nianticlabs/nia/location/Provider$ProviderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nianticlabs/nia/location/GpsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GpsProviderListener"
.end annotation


# virtual methods
.method public abstract onGpsStatusUpdate(I[Landroid/location/GpsSatellite;)V
.end method
