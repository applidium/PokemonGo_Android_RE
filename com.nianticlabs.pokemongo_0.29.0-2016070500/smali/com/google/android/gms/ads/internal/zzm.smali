.class public Lcom/google/android/gms/ads/internal/zzm;
.super Lcom/google/android/gms/ads/internal/client/zzw$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation


# static fields
.field private static final zzpy:Ljava/lang/Object;

.field private static zzpz:Lcom/google/android/gms/ads/internal/zzm;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private zzpA:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/zzm;->zzpy:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzw$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzm;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzm;->zzpA:Z

    return-void
.end method

.method public static zzq(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/zzm;
    .locals 3

    sget-object v1, Lcom/google/android/gms/ads/internal/zzm;->zzpy:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/ads/internal/zzm;->zzpz:Lcom/google/android/gms/ads/internal/zzm;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/ads/internal/zzm;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/ads/internal/zzm;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/ads/internal/zzm;->zzpz:Lcom/google/android/gms/ads/internal/zzm;

    :cond_0
    sget-object v0, Lcom/google/android/gms/ads/internal/zzm;->zzpz:Lcom/google/android/gms/ads/internal/zzm;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public zza()V
    .locals 2

    sget-object v1, Lcom/google/android/gms/ads/internal/zzm;->zzpy:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzm;->zzpA:Z

    if-eqz v0, :cond_0

    const-string v0, "Mobile ads is initialized already."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaH(Ljava/lang/String;)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzm;->zzpA:Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
