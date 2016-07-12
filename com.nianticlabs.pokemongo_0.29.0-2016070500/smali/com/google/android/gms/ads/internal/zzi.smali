.class public Lcom/google/android/gms/ads/internal/zzi;
.super Lcom/google/android/gms/ads/internal/client/zzp$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzoT:Lcom/google/android/gms/ads/internal/client/zzo;

.field private final zzoU:Lcom/google/android/gms/internal/zzcw;

.field private final zzoV:Lcom/google/android/gms/internal/zzcx;

.field private final zzoW:Lcom/google/android/gms/internal/zzmi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzmi",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzcz;",
            ">;"
        }
    .end annotation
.end field

.field private final zzoX:Lcom/google/android/gms/internal/zzmi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzmi",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzcy;",
            ">;"
        }
    .end annotation
.end field

.field private final zzoY:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

.field private final zzoZ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzox:Lcom/google/android/gms/internal/zzem;

.field private final zzpa:Ljava/lang/String;

.field private final zzpb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private zzpc:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/ads/internal/zzn;",
            ">;"
        }
    .end annotation
.end field

.field private zzpd:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzem;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/client/zzo;Lcom/google/android/gms/internal/zzcw;Lcom/google/android/gms/internal/zzcx;Lcom/google/android/gms/internal/zzmi;Lcom/google/android/gms/internal/zzmi;Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzem;",
            "Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;",
            "Lcom/google/android/gms/ads/internal/client/zzo;",
            "Lcom/google/android/gms/internal/zzcw;",
            "Lcom/google/android/gms/internal/zzcx;",
            "Lcom/google/android/gms/internal/zzmi",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzcz;",
            ">;",
            "Lcom/google/android/gms/internal/zzmi",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzcy;",
            ">;",
            "Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzp$zza;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpd:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzi;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpa:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzi;->zzox:Lcom/google/android/gms/internal/zzem;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/zzi;->zzoT:Lcom/google/android/gms/ads/internal/client/zzo;

    iput-object p7, p0, Lcom/google/android/gms/ads/internal/zzi;->zzoV:Lcom/google/android/gms/internal/zzcx;

    iput-object p6, p0, Lcom/google/android/gms/ads/internal/zzi;->zzoU:Lcom/google/android/gms/internal/zzcw;

    iput-object p8, p0, Lcom/google/android/gms/ads/internal/zzi;->zzoW:Lcom/google/android/gms/internal/zzmi;

    iput-object p9, p0, Lcom/google/android/gms/ads/internal/zzi;->zzoX:Lcom/google/android/gms/internal/zzmi;

    iput-object p10, p0, Lcom/google/android/gms/ads/internal/zzi;->zzoY:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzi;->zzbi()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzoZ:Ljava/util/List;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/zzi;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpd:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/zzi;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpc:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/ads/internal/zzi;)Lcom/google/android/gms/internal/zzcw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzoU:Lcom/google/android/gms/internal/zzcw;

    return-object v0
.end method

.method private zzbi()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzi;->zzoV:Lcom/google/android/gms/internal/zzcx;

    if-eqz v1, :cond_0

    const-string v1, "1"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzi;->zzoU:Lcom/google/android/gms/internal/zzcw;

    if-eqz v1, :cond_1

    const-string v1, "2"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzi;->zzoW:Lcom/google/android/gms/internal/zzmi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzmi;->size()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, "3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/ads/internal/zzi;)Lcom/google/android/gms/internal/zzcx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzoV:Lcom/google/android/gms/internal/zzcx;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/ads/internal/zzi;)Lcom/google/android/gms/internal/zzmi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzoW:Lcom/google/android/gms/internal/zzmi;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/ads/internal/zzi;)Lcom/google/android/gms/ads/internal/client/zzo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzoT:Lcom/google/android/gms/ads/internal/client/zzo;

    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/ads/internal/zzi;)Lcom/google/android/gms/internal/zzmi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzoX:Lcom/google/android/gms/internal/zzmi;

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/ads/internal/zzi;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzi;->zzbi()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/ads/internal/zzi;)Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzoY:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    return-object v0
.end method


# virtual methods
.method public getMediationAdapterClassName()Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpd:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpc:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpc:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/zzn;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzn;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    monitor-exit v2

    :goto_1
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    monitor-exit v2

    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isLoading()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpd:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpc:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpc:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/zzn;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzn;->isLoading()Z

    move-result v0

    :goto_0
    monitor-exit v2

    :goto_1
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    monitor-exit v2

    move v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    sget-object v0, Lcom/google/android/gms/internal/zzid;->zzIE:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected zzbj()Lcom/google/android/gms/ads/internal/zzn;
    .locals 6

    new-instance v0, Lcom/google/android/gms/ads/internal/zzn;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzi;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzi;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzs(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpa:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzi;->zzox:Lcom/google/android/gms/internal/zzem;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/zzi;->zzpb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/zzn;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzem;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    return-object v0
.end method

.method public zzf(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/zzi$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/ads/internal/zzi$1;-><init>(Lcom/google/android/gms/ads/internal/zzi;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/zzi;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
