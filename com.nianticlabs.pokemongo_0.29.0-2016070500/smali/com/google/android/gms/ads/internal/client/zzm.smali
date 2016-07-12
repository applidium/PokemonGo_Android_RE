.class public Lcom/google/android/gms/ads/internal/client/zzm;
.super Lcom/google/android/gms/ads/internal/client/zzv$zza;


# instance fields
.field private zzpd:Ljava/lang/Object;

.field private final zzts:Ljava/util/Random;

.field private zztt:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzv$zza;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzm;->zzpd:Ljava/lang/Object;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzm;->zzts:Ljava/util/Random;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/client/zzm;->zzcL()V

    return-void
.end method


# virtual methods
.method public getValue()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/ads/internal/client/zzm;->zztt:J

    return-wide v0
.end method

.method public zzcL()V
    .locals 8

    const-wide/16 v4, 0x0

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/client/zzm;->zzpd:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x3

    move v2, v0

    move-wide v0, v4

    :cond_0
    add-int/lit8 v2, v2, -0x1

    if-lez v2, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzm;->zzts:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v6, 0x80000000L

    add-long/2addr v0, v6

    iget-wide v6, p0, Lcom/google/android/gms/ads/internal/client/zzm;->zztt:J

    cmp-long v6, v0, v6

    if-eqz v6, :cond_0

    cmp-long v6, v0, v4

    if-eqz v6, :cond_0

    :cond_1
    iput-wide v0, p0, Lcom/google/android/gms/ads/internal/client/zzm;->zztt:J

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
