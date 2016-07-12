.class Lcom/google/android/gms/location/internal/zzk$zza;
.super Lcom/google/android/gms/location/zzc$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/internal/zzk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zza"
.end annotation


# instance fields
.field private zzaFy:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/LocationCallback;Landroid/os/Looper;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/location/zzc$zza;-><init>()V

    if-nez p2, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Can\'t create handler inside thread that has not called Looper.prepare()"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/google/android/gms/location/internal/zzk$zza$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gms/location/internal/zzk$zza$1;-><init>(Lcom/google/android/gms/location/internal/zzk$zza;Landroid/os/Looper;Lcom/google/android/gms/location/LocationCallback;)V

    iput-object v0, p0, Lcom/google/android/gms/location/internal/zzk$zza;->zzaFy:Landroid/os/Handler;

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private zzb(ILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzk$zza;->zzaFy:Landroid/os/Handler;

    if-nez v0, :cond_0

    const-string v0, "LocationClientHelper"

    const-string v1, "Received a data in client after calling removeLocationUpdates."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/location/internal/zzk$zza;->zzaFy:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method public onLocationAvailability(Lcom/google/android/gms/location/LocationAvailability;)V
    .locals 1
    .param p1, "state"    # Lcom/google/android/gms/location/LocationAvailability;

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/location/internal/zzk$zza;->zzb(ILjava/lang/Object;)V

    return-void
.end method

.method public onLocationResult(Lcom/google/android/gms/location/LocationResult;)V
    .locals 1
    .param p1, "locationResult"    # Lcom/google/android/gms/location/LocationResult;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/location/internal/zzk$zza;->zzb(ILjava/lang/Object;)V

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/location/internal/zzk$zza;->zzaFy:Landroid/os/Handler;

    return-void
.end method
