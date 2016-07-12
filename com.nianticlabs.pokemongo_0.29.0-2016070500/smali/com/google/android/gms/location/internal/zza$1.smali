.class Lcom/google/android/gms/location/internal/zza$1;
.super Lcom/google/android/gms/location/internal/zza$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/location/internal/zza;->requestActivityUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;JLandroid/app/PendingIntent;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaEX:J

.field final synthetic zzaEY:Landroid/app/PendingIntent;

.field final synthetic zzaEZ:Lcom/google/android/gms/location/internal/zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/internal/zza;Lcom/google/android/gms/common/api/GoogleApiClient;JLandroid/app/PendingIntent;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/location/internal/zza$1;->zzaEZ:Lcom/google/android/gms/location/internal/zza;

    iput-wide p3, p0, Lcom/google/android/gms/location/internal/zza$1;->zzaEX:J

    iput-object p5, p0, Lcom/google/android/gms/location/internal/zza$1;->zzaEY:Landroid/app/PendingIntent;

    invoke-direct {p0, p2}, Lcom/google/android/gms/location/internal/zza$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/location/internal/zzl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/internal/zza$1;->zza(Lcom/google/android/gms/location/internal/zzl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/location/internal/zzl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/android/gms/location/internal/zza$1;->zzaEX:J

    iget-object v2, p0, Lcom/google/android/gms/location/internal/zza$1;->zzaEY:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/location/internal/zzl;->zza(JLandroid/app/PendingIntent;)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzabb:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/location/internal/zza$1;->zzb(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
