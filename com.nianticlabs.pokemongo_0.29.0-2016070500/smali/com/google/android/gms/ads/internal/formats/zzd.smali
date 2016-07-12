.class public Lcom/google/android/gms/ads/internal/formats/zzd;
.super Lcom/google/android/gms/internal/zzcq$zza;

# interfaces
.implements Lcom/google/android/gms/ads/internal/formats/zzh$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation


# instance fields
.field private final mExtras:Landroid/os/Bundle;

.field private final zzpd:Ljava/lang/Object;

.field private final zzwo:Ljava/lang/String;

.field private final zzwp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/ads/internal/formats/zzc;",
            ">;"
        }
    .end annotation
.end field

.field private final zzwq:Ljava/lang/String;

.field private final zzwr:Lcom/google/android/gms/internal/zzcm;

.field private final zzws:Ljava/lang/String;

.field private final zzwt:D

.field private final zzwu:Ljava/lang/String;

.field private final zzwv:Ljava/lang/String;

.field private final zzww:Lcom/google/android/gms/ads/internal/formats/zza;

.field private zzwx:Lcom/google/android/gms/ads/internal/formats/zzh;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/zzcm;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/formats/zza;Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcq$zza;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzpd:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzwo:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzwp:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzwq:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzwr:Lcom/google/android/gms/internal/zzcm;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzws:Ljava/lang/String;

    iput-wide p6, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzwt:D

    iput-object p8, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzwu:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzwv:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzww:Lcom/google/android/gms/ads/internal/formats/zza;

    iput-object p11, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->mExtras:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzwq:Ljava/lang/String;

    return-object v0
.end method

.method public getCallToAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzws:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomTemplateId()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getHeadline()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzwo:Ljava/lang/String;

    return-object v0
.end method

.method public getImages()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzwp:Ljava/util/List;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzwv:Ljava/lang/String;

    return-object v0
.end method

.method public getStarRating()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzwt:D

    return-wide v0
.end method

.method public getStore()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzwu:Ljava/lang/String;

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/ads/internal/formats/zzh;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzwx:Lcom/google/android/gms/ads/internal/formats/zzh;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzdw()Lcom/google/android/gms/internal/zzcm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzwr:Lcom/google/android/gms/internal/zzcm;

    return-object v0
.end method

.method public zzdx()Lcom/google/android/gms/dynamic/zzd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzwx:Lcom/google/android/gms/ads/internal/formats/zzh;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzy(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    return-object v0
.end method

.method public zzdy()Ljava/lang/String;
    .locals 1

    const-string v0, "2"

    return-object v0
.end method

.method public zzdz()Lcom/google/android/gms/ads/internal/formats/zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzww:Lcom/google/android/gms/ads/internal/formats/zza;

    return-object v0
.end method
