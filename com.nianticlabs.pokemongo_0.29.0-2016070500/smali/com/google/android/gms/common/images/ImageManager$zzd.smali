.class final Lcom/google/android/gms/common/images/ImageManager$zzd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/images/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "zzd"
.end annotation


# instance fields
.field final synthetic zzadR:Lcom/google/android/gms/common/images/ImageManager;

.field private final zzadT:Lcom/google/android/gms/common/images/zza;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/images/ImageManager;Lcom/google/android/gms/common/images/zza;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/images/ImageManager$zzd;->zzadR:Lcom/google/android/gms/common/images/ImageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/common/images/ImageManager$zzd;->zzadT:Lcom/google/android/gms/common/images/zza;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x1

    const-string v0, "LoadImageRunnable must be executed on the main thread"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzb;->zzci(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$zzd;->zzadR:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v0}, Lcom/google/android/gms/common/images/ImageManager;->zza(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$zzd;->zzadT:Lcom/google/android/gms/common/images/zza;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$zzd;->zzadR:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v1}, Lcom/google/android/gms/common/images/ImageManager;->zza(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$zzd;->zzadT:Lcom/google/android/gms/common/images/zza;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$zzd;->zzadT:Lcom/google/android/gms/common/images/zza;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->zzc(Lcom/google/android/gms/common/images/zza;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$zzd;->zzadT:Lcom/google/android/gms/common/images/zza;

    iget-object v1, v0, Lcom/google/android/gms/common/images/zza;->zzadV:Lcom/google/android/gms/common/images/zza$zza;

    iget-object v0, v1, Lcom/google/android/gms/common/images/zza$zza;->uri:Landroid/net/Uri;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$zzd;->zzadT:Lcom/google/android/gms/common/images/zza;

    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$zzd;->zzadR:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v1}, Lcom/google/android/gms/common/images/ImageManager;->zzb(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$zzd;->zzadR:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v2}, Lcom/google/android/gms/common/images/ImageManager;->zzc(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/internal/zzlv;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/android/gms/common/images/zza;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzlv;Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$zzd;->zzadR:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/images/ImageManager;->zza(Lcom/google/android/gms/common/images/ImageManager;Lcom/google/android/gms/common/images/zza$zza;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$zzd;->zzadT:Lcom/google/android/gms/common/images/zza;

    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$zzd;->zzadR:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v2}, Lcom/google/android/gms/common/images/ImageManager;->zzb(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v6}, Lcom/google/android/gms/common/images/zza;->zza(Landroid/content/Context;Landroid/graphics/Bitmap;Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$zzd;->zzadR:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v0}, Lcom/google/android/gms/common/images/ImageManager;->zzd(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, v1, Lcom/google/android/gms/common/images/zza$zza;->uri:Landroid/net/Uri;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x36ee80

    cmp-long v0, v2, v4

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$zzd;->zzadT:Lcom/google/android/gms/common/images/zza;

    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$zzd;->zzadR:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v1}, Lcom/google/android/gms/common/images/ImageManager;->zzb(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$zzd;->zzadR:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v2}, Lcom/google/android/gms/common/images/ImageManager;->zzc(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/internal/zzlv;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/android/gms/common/images/zza;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzlv;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$zzd;->zzadR:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v0}, Lcom/google/android/gms/common/images/ImageManager;->zzd(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, v1, Lcom/google/android/gms/common/images/zza$zza;->uri:Landroid/net/Uri;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$zzd;->zzadT:Lcom/google/android/gms/common/images/zza;

    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$zzd;->zzadR:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v2}, Lcom/google/android/gms/common/images/ImageManager;->zzb(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/images/ImageManager$zzd;->zzadR:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v3}, Lcom/google/android/gms/common/images/ImageManager;->zzc(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/internal/zzlv;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/common/images/zza;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzlv;)V

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$zzd;->zzadR:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v0}, Lcom/google/android/gms/common/images/ImageManager;->zze(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, v1, Lcom/google/android/gms/common/images/zza$zza;->uri:Landroid/net/Uri;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;

    if-nez v0, :cond_5

    new-instance v0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;

    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$zzd;->zzadR:Lcom/google/android/gms/common/images/ImageManager;

    iget-object v3, v1, Lcom/google/android/gms/common/images/zza$zza;->uri:Landroid/net/Uri;

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;-><init>(Lcom/google/android/gms/common/images/ImageManager;Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$zzd;->zzadR:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v2}, Lcom/google/android/gms/common/images/ImageManager;->zze(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/common/images/zza$zza;->uri:Landroid/net/Uri;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$zzd;->zzadT:Lcom/google/android/gms/common/images/zza;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->zzb(Lcom/google/android/gms/common/images/zza;)V

    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$zzd;->zzadT:Lcom/google/android/gms/common/images/zza;

    instance-of v2, v2, Lcom/google/android/gms/common/images/zza$zzc;

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$zzd;->zzadR:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v2}, Lcom/google/android/gms/common/images/ImageManager;->zza(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/images/ImageManager$zzd;->zzadT:Lcom/google/android/gms/common/images/zza;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-static {}, Lcom/google/android/gms/common/images/ImageManager;->zzoC()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/images/ImageManager;->zzoD()Ljava/util/HashSet;

    move-result-object v3

    iget-object v4, v1, Lcom/google/android/gms/common/images/zza$zza;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {}, Lcom/google/android/gms/common/images/ImageManager;->zzoD()Ljava/util/HashSet;

    move-result-object v3

    iget-object v1, v1, Lcom/google/android/gms/common/images/zza$zza;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->zzoE()V

    :cond_7
    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
