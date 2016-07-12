.class Lcom/google/android/gms/location/internal/zzd$2$1;
.super Lcom/google/android/gms/location/internal/zzg$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/location/internal/zzd$2;->zza(Lcom/google/android/gms/location/internal/zzl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaFi:Lcom/google/android/gms/location/internal/zzd$2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/internal/zzd$2;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/internal/zzd$2$1;->zzaFi:Lcom/google/android/gms/location/internal/zzd$2;

    invoke-direct {p0}, Lcom/google/android/gms/location/internal/zzg$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/location/internal/FusedLocationProviderResult;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzd$2$1;->zzaFi:Lcom/google/android/gms/location/internal/zzd$2;

    invoke-virtual {p1}, Lcom/google/android/gms/location/internal/FusedLocationProviderResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/internal/zzd$2;->zzb(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
