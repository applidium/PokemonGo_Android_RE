.class Lcom/nianticlabs/nia/location/FusedLocationProvider$4;
.super Ljava/lang/Object;
.source "FusedLocationProvider.java"

# interfaces
.implements Lcom/google/android/gms/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nianticlabs/nia/location/FusedLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nianticlabs/nia/location/FusedLocationProvider;


# direct methods
.method constructor <init>(Lcom/nianticlabs/nia/location/FusedLocationProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nianticlabs/nia/location/FusedLocationProvider;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider$4;->this$0:Lcom/nianticlabs/nia/location/FusedLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 222
    iget-object v1, p0, Lcom/nianticlabs/nia/location/FusedLocationProvider$4;->this$0:Lcom/nianticlabs/nia/location/FusedLocationProvider;

    # getter for: Lcom/nianticlabs/nia/location/FusedLocationProvider;->providerListener:Lcom/nianticlabs/nia/location/Provider$ProviderListener;
    invoke-static {v1}, Lcom/nianticlabs/nia/location/FusedLocationProvider;->access$400(Lcom/nianticlabs/nia/location/FusedLocationProvider;)Lcom/nianticlabs/nia/location/Provider$ProviderListener;

    move-result-object v0

    .line 223
    .local v0, "listener":Lcom/nianticlabs/nia/location/Provider$ProviderListener;
    if-eqz v0, :cond_0

    .line 224
    invoke-interface {v0, p1}, Lcom/nianticlabs/nia/location/Provider$ProviderListener;->onProviderLocation(Landroid/location/Location;)V

    .line 226
    :cond_0
    return-void
.end method
