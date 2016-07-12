.class public final Lcom/google/android/gms/ads/internal/request/zzg;
.super Lcom/google/android/gms/ads/internal/request/zzk$zza;


# instance fields
.field private final zzEI:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/ads/internal/request/zzc$zza;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/request/zzc$zza;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/request/zzk$zza;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzg;->zzEI:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzg;->zzEI:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/request/zzc$zza;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/internal/request/zzc$zza;->zzb(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;)V

    :cond_0
    return-void
.end method
