.class Lcom/google/android/gms/internal/zzgz$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzgz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zza"
.end annotation


# instance fields
.field public final zzGP:J

.field public final zzGQ:Lcom/google/android/gms/internal/zzgy;

.field final synthetic zzGR:Lcom/google/android/gms/internal/zzgz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzgz;Lcom/google/android/gms/internal/zzgy;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgz$zza;->zzGR:Lcom/google/android/gms/internal/zzgz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbz()Lcom/google/android/gms/internal/zzmn;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmn;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzgz$zza;->zzGP:J

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgz$zza;->zzGQ:Lcom/google/android/gms/internal/zzgy;

    return-void
.end method


# virtual methods
.method public hasExpired()Z
    .locals 4

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzgz$zza;->zzGP:J

    sget-object v0, Lcom/google/android/gms/internal/zzby;->zzvn:Lcom/google/android/gms/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbu;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbz()Lcom/google/android/gms/internal/zzmn;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzmn;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
