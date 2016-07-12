.class Lcom/google/android/gms/internal/zzlg$zze;
.super Lcom/google/android/gms/internal/zzlg$zzi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzlg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zze"
.end annotation


# instance fields
.field final synthetic zzabL:Lcom/google/android/gms/internal/zzlg;

.field private final zzabU:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "Lcom/google/android/gms/common/api/GoogleApiClient$zza;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzlg;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "Lcom/google/android/gms/common/api/GoogleApiClient$zza;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlg$zze;->zzabL:Lcom/google/android/gms/internal/zzlg;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzlg$zzi;-><init>(Lcom/google/android/gms/internal/zzlg;Lcom/google/android/gms/internal/zzlg$1;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzlg$zze;->zzabU:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public zznO()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg$zze;->zzabL:Lcom/google/android/gms/internal/zzlg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlg;->zzb(Lcom/google/android/gms/internal/zzlg;)Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlg$zze;->zzabL:Lcom/google/android/gms/internal/zzlg;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzlg;->zza(Lcom/google/android/gms/internal/zzlg;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg$zze;->zzabL:Lcom/google/android/gms/internal/zzlg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlg;->zzd(Lcom/google/android/gms/internal/zzlg;)Lcom/google/android/gms/internal/zzli;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/zzlg$zze$1;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzlg$zze;->zzabL:Lcom/google/android/gms/internal/zzlg;

    invoke-direct {v2, p0, v3, v1}, Lcom/google/android/gms/internal/zzlg$zze$1;-><init>(Lcom/google/android/gms/internal/zzlg$zze;Lcom/google/android/gms/internal/zzlj;Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzli;->zza(Lcom/google/android/gms/internal/zzli$zzb;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg$zze;->zzabL:Lcom/google/android/gms/internal/zzlg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlg;->zze(Lcom/google/android/gms/internal/zzlg;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg$zze;->zzabL:Lcom/google/android/gms/internal/zzlg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlg;->zzf(Lcom/google/android/gms/internal/zzlg;)Lcom/google/android/gms/internal/zzqw;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqw;->connect()V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg$zze;->zzabU:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zzb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlg$zze;->zzabU:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/GoogleApiClient$zza;

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/Api$zzb;->zza(Lcom/google/android/gms/common/api/GoogleApiClient$zza;)V

    goto :goto_0
.end method
