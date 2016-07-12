.class final Lcom/google/android/gms/internal/zzqu$1;
.super Lcom/google/android/gms/common/api/Api$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzqu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/Api$zza",
        "<",
        "Lcom/google/android/gms/signin/internal/zzi;",
        "Lcom/google/android/gms/internal/zzqx;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/Api$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic zza(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$zzb;
    .locals 7

    move-object v4, p4

    check-cast v4, Lcom/google/android/gms/internal/zzqx;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/zzqu$1;->zza(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/internal/zzqx;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/signin/internal/zzi;

    move-result-object v0

    return-object v0
.end method

.method public zza(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/internal/zzqx;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/signin/internal/zzi;
    .locals 9

    if-nez p4, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/zzqx;->zzaUZ:Lcom/google/android/gms/internal/zzqx;

    :goto_0
    new-instance v0, Lcom/google/android/gms/signin/internal/zzi;

    const/4 v3, 0x1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/signin/internal/zzi;-><init>(Landroid/content/Context;Landroid/os/Looper;ZLcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/internal/zzqx;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/util/concurrent/ExecutorService;)V

    return-object v0

    :cond_0
    move-object v5, p4

    goto :goto_0
.end method
