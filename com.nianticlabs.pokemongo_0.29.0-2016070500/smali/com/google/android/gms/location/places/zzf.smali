.class public Lcom/google/android/gms/location/places/zzf;
.super Lcom/google/android/gms/location/places/internal/zzh$zza;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/location/places/zzf$zza;,
        Lcom/google/android/gms/location/places/zzf$zzb;
    }
.end annotation


# instance fields
.field private final zzaGi:Lcom/google/android/gms/location/places/zzf$zzb;

.field private final zzaGj:Lcom/google/android/gms/location/places/zzf$zza;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/location/places/zzf$zza;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/location/places/internal/zzh$zza;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/location/places/zzf;->zzaGi:Lcom/google/android/gms/location/places/zzf$zzb;

    iput-object p1, p0, Lcom/google/android/gms/location/places/zzf;->zzaGj:Lcom/google/android/gms/location/places/zzf$zza;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/location/places/zzf$zzb;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/location/places/internal/zzh$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/location/places/zzf;->zzaGi:Lcom/google/android/gms/location/places/zzf$zzb;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/location/places/zzf;->zzaGj:Lcom/google/android/gms/location/places/zzf$zza;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/location/places/PlacePhotoMetadataResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/places/zzf;->zzaGi:Lcom/google/android/gms/location/places/zzf$zzb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/location/places/zzf$zzb;->zzb(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/location/places/PlacePhotoResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/places/zzf;->zzaGj:Lcom/google/android/gms/location/places/zzf$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/location/places/zzf$zza;->zzb(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
