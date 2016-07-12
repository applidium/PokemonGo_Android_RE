.class public final Lcom/google/android/gms/internal/zzfx;
.super Lcom/google/android/gms/internal/zzfs$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation


# instance fields
.field private final zztI:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfs$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfx;->zztI:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzfr;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfx;->zztI:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    new-instance v1, Lcom/google/android/gms/internal/zzga;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzga;-><init>(Lcom/google/android/gms/internal/zzfr;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;->onInAppPurchaseRequested(Lcom/google/android/gms/ads/purchase/InAppPurchase;)V

    return-void
.end method
