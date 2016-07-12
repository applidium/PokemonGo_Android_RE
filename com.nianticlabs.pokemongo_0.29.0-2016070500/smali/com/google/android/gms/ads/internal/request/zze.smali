.class public Lcom/google/android/gms/ads/internal/request/zze;
.super Lcom/google/android/gms/common/internal/zzj;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzj",
        "<",
        "Lcom/google/android/gms/ads/internal/request/zzj;",
        ">;"
    }
.end annotation


# instance fields
.field final zzEl:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;I)V
    .locals 7

    const/16 v3, 0x8

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzf;->zzak(Landroid/content/Context;)Lcom/google/android/gms/common/internal/zzf;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzj;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    iput p5, p0, Lcom/google/android/gms/ads/internal/request/zze;->zzEl:I

    return-void
.end method


# virtual methods
.method protected zzV(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/request/zzj;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/request/zzj$zza;->zzX(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/request/zzj;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic zzW(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/request/zze;->zzV(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/request/zzj;

    move-result-object v0

    return-object v0
.end method

.method protected zzfK()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.ads.service.START"

    return-object v0
.end method

.method protected zzfL()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.request.IAdRequestService"

    return-object v0
.end method

.method public zzfM()Lcom/google/android/gms/ads/internal/request/zzj;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/common/internal/zzj;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/request/zzj;

    return-object v0
.end method
