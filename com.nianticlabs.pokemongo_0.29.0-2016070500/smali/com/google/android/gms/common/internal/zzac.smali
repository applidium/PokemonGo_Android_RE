.class public Lcom/google/android/gms/common/internal/zzac;
.super Lcom/google/android/gms/common/internal/zzj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Lcom/google/android/gms/common/internal/zzj",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final zzagt:Lcom/google/android/gms/common/api/Api$zzd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzd",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/Api$zzd;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p6

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzj;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    iput-object p7, p0, Lcom/google/android/gms/common/internal/zzac;->zzagt:Lcom/google/android/gms/common/api/Api$zzd;

    return-void
.end method


# virtual methods
.method protected zzW(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzac;->zzagt:Lcom/google/android/gms/common/api/Api$zzd;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/Api$zzd;->zzW(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    return-object v0
.end method

.method protected zzc(ILandroid/os/IInterface;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzac;->zzagt:Lcom/google/android/gms/common/api/Api$zzd;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/common/api/Api$zzd;->zza(ILandroid/os/IInterface;)V

    return-void
.end method

.method protected zzfK()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzac;->zzagt:Lcom/google/android/gms/common/api/Api$zzd;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zzd;->zzfK()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected zzfL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzac;->zzagt:Lcom/google/android/gms/common/api/Api$zzd;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zzd;->zzfL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
