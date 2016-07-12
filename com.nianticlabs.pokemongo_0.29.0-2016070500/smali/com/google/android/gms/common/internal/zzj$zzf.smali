.class public Lcom/google/android/gms/common/internal/zzj$zzf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/zzj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "zzf"
.end annotation


# instance fields
.field final synthetic zzafK:Lcom/google/android/gms/common/internal/zzj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/zzj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzj$zzf;->zzafK:Lcom/google/android/gms/common/internal/zzj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj$zzf;->zzafK:Lcom/google/android/gms/common/internal/zzj;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzj$zzf;->zzafK:Lcom/google/android/gms/common/internal/zzj;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzj;->zzd(Lcom/google/android/gms/common/internal/zzj;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzj;->zza(Lcom/google/android/gms/common/internal/zzp;Ljava/util/Set;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj$zzf;->zzafK:Lcom/google/android/gms/common/internal/zzj;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzj;->zze(Lcom/google/android/gms/common/internal/zzj;)Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj$zzf;->zzafK:Lcom/google/android/gms/common/internal/zzj;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzj;->zze(Lcom/google/android/gms/common/internal/zzj;)Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0
.end method

.method public zzb(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Legacy GmsClient received onReportAccountValidation callback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
