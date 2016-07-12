.class Lcom/google/android/gms/location/places/internal/zzp$zza;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/places/internal/zzp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zza"
.end annotation


# instance fields
.field final synthetic zzaHK:Lcom/google/android/gms/location/places/internal/zzp;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/location/places/internal/zzp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/zzp$zza;->zzaHK:Lcom/google/android/gms/location/places/internal/zzp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/location/places/internal/zzp;Lcom/google/android/gms/location/places/internal/zzp$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/location/places/internal/zzp$zza;-><init>(Lcom/google/android/gms/location/places/internal/zzp;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/zzp$zza;->zzaHK:Lcom/google/android/gms/location/places/internal/zzp;

    invoke-static {v0}, Lcom/google/android/gms/location/places/internal/zzp;->zzb(Lcom/google/android/gms/location/places/internal/zzp;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.android.location.places.METHOD_CALL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.android.gms"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "PLACE_IDS"

    iget-object v3, p0, Lcom/google/android/gms/location/places/internal/zzp$zza;->zzaHK:Lcom/google/android/gms/location/places/internal/zzp;

    invoke-static {v3}, Lcom/google/android/gms/location/places/internal/zzp;->zzc(Lcom/google/android/gms/location/places/internal/zzp;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string v2, "METHOD_NAMES"

    iget-object v3, p0, Lcom/google/android/gms/location/places/internal/zzp$zza;->zzaHK:Lcom/google/android/gms/location/places/internal/zzp;

    invoke-static {v3}, Lcom/google/android/gms/location/places/internal/zzp;->zzd(Lcom/google/android/gms/location/places/internal/zzp;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string v2, "PACKAGE_NAME"

    iget-object v3, p0, Lcom/google/android/gms/location/places/internal/zzp$zza;->zzaHK:Lcom/google/android/gms/location/places/internal/zzp;

    invoke-static {v3}, Lcom/google/android/gms/location/places/internal/zzp;->zze(Lcom/google/android/gms/location/places/internal/zzp;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "CLIENT_VERSION"

    sget v3, Lcom/google/android/gms/common/GoogleApiAvailability;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/zzp$zza;->zzaHK:Lcom/google/android/gms/location/places/internal/zzp;

    invoke-static {v2}, Lcom/google/android/gms/location/places/internal/zzp;->zze(Lcom/google/android/gms/location/places/internal/zzp;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/zzp$zza;->zzaHK:Lcom/google/android/gms/location/places/internal/zzp;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/location/places/internal/zzp;->zza(Lcom/google/android/gms/location/places/internal/zzp;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/zzp$zza;->zzaHK:Lcom/google/android/gms/location/places/internal/zzp;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/location/places/internal/zzp;->zzb(Lcom/google/android/gms/location/places/internal/zzp;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
