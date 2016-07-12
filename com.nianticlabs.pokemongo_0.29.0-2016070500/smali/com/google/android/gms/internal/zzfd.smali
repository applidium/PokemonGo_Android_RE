.class public Lcom/google/android/gms/internal/zzfd;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation


# instance fields
.field private final zzAq:Z

.field private final zzAr:Ljava/lang/String;

.field private final zzoM:Lcom/google/android/gms/internal/zziz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zziz;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zziz;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfd;->zzoM:Lcom/google/android/gms/internal/zziz;

    const-string v0, "forceOrientation"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfd;->zzAr:Ljava/lang/String;

    const-string v0, "allowOrientationChange"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "allowOrientationChange"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzfd;->zzAq:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzfd;->zzAq:Z

    goto :goto_0
.end method


# virtual methods
.method public execute()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfd;->zzoM:Lcom/google/android/gms/internal/zziz;

    if-nez v0, :cond_0

    const-string v0, "AdWebView is null"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaH(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "portrait"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfd;->zzAr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbx()Lcom/google/android/gms/internal/zzie;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzie;->zzgH()I

    move-result v0

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfd;->zzoM:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zziz;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_1
    const-string v0, "landscape"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfd;->zzAr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbx()Lcom/google/android/gms/internal/zzie;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzie;->zzgG()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzfd;->zzAq:Z

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbx()Lcom/google/android/gms/internal/zzie;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzie;->zzgI()I

    move-result v0

    goto :goto_1
.end method
