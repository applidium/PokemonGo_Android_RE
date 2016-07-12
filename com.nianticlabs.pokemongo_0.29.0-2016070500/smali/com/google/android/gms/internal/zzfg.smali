.class public Lcom/google/android/gms/internal/zzfg;
.super Lcom/google/android/gms/internal/zzfh;

# interfaces
.implements Lcom/google/android/gms/internal/zzdk;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzAA:Lcom/google/android/gms/internal/zzbq;

.field zzAB:Landroid/util/DisplayMetrics;

.field private zzAC:F

.field zzAD:I

.field zzAE:I

.field private zzAF:I

.field zzAG:I

.field zzAH:I

.field zzAI:I

.field zzAJ:I

.field private final zzoM:Lcom/google/android/gms/internal/zziz;

.field private final zzri:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zziz;Landroid/content/Context;Lcom/google/android/gms/internal/zzbq;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzfh;-><init>(Lcom/google/android/gms/internal/zziz;)V

    iput v0, p0, Lcom/google/android/gms/internal/zzfg;->zzAD:I

    iput v0, p0, Lcom/google/android/gms/internal/zzfg;->zzAE:I

    iput v0, p0, Lcom/google/android/gms/internal/zzfg;->zzAG:I

    iput v0, p0, Lcom/google/android/gms/internal/zzfg;->zzAH:I

    iput v0, p0, Lcom/google/android/gms/internal/zzfg;->zzAI:I

    iput v0, p0, Lcom/google/android/gms/internal/zzfg;->zzAJ:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfg;->zzoM:Lcom/google/android/gms/internal/zziz;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfg;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzfg;->zzAA:Lcom/google/android/gms/internal/zzbq;

    const-string v0, "window"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfg;->zzri:Landroid/view/WindowManager;

    return-void
.end method

.method private zzei()V
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfg;->zzAB:Landroid/util/DisplayMetrics;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfg;->zzri:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfg;->zzAB:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfg;->zzAB:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/google/android/gms/internal/zzfg;->zzAC:F

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzfg;->zzAF:I

    return-void
.end method

.method private zzen()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfg;->zzoM:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zziz;->getLocationOnScreen([I)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzl;->zzcF()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfg;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzc(Landroid/content/Context;I)I

    move-result v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzl;->zzcF()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzfg;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    aget v0, v0, v4

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzc(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzfg;->zze(II)V

    return-void
.end method

.method private zzeq()Lcom/google/android/gms/internal/zzff;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzff$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzff$zza;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfg;->zzAA:Lcom/google/android/gms/internal/zzbq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbq;->zzcW()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzff$zza;->zzp(Z)Lcom/google/android/gms/internal/zzff$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfg;->zzAA:Lcom/google/android/gms/internal/zzbq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbq;->zzcX()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzff$zza;->zzo(Z)Lcom/google/android/gms/internal/zzff$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfg;->zzAA:Lcom/google/android/gms/internal/zzbq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbq;->zzdb()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzff$zza;->zzq(Z)Lcom/google/android/gms/internal/zzff$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfg;->zzAA:Lcom/google/android/gms/internal/zzbq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbq;->zzcY()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzff$zza;->zzr(Z)Lcom/google/android/gms/internal/zzff$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfg;->zzAA:Lcom/google/android/gms/internal/zzbq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbq;->zzcZ()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzff$zza;->zzs(Z)Lcom/google/android/gms/internal/zzff$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzff$zza;->zzeh()Lcom/google/android/gms/internal/zzff;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zziz;Ljava/util/Map;)V
    .locals 0
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

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfg;->zzel()V

    return-void
.end method

.method public zze(II)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfg;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbv()Lcom/google/android/gms/internal/zzid;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfg;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzid;->zzj(Landroid/app/Activity;)[I

    move-result-object v0

    aget v0, v0, v1

    :goto_0
    sub-int v0, p2, v0

    iget v1, p0, Lcom/google/android/gms/internal/zzfg;->zzAI:I

    iget v2, p0, Lcom/google/android/gms/internal/zzfg;->zzAJ:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzfg;->zzc(IIII)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfg;->zzoM:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziz;->zzhe()Lcom/google/android/gms/internal/zzja;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzja;->zzd(II)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method zzej()V
    .locals 4

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzl;->zzcF()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfg;->zzAB:Landroid/util/DisplayMetrics;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfg;->zzAB:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzfg;->zzAD:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzl;->zzcF()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfg;->zzAB:Landroid/util/DisplayMetrics;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfg;->zzAB:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzfg;->zzAE:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfg;->zzoM:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziz;->zzgZ()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzfg;->zzAD:I

    iput v0, p0, Lcom/google/android/gms/internal/zzfg;->zzAG:I

    iget v0, p0, Lcom/google/android/gms/internal/zzfg;->zzAE:I

    iput v0, p0, Lcom/google/android/gms/internal/zzfg;->zzAH:I

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbv()Lcom/google/android/gms/internal/zzid;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzid;->zzg(Landroid/app/Activity;)[I

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzl;->zzcF()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfg;->zzAB:Landroid/util/DisplayMetrics;

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/zzfg;->zzAG:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzl;->zzcF()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfg;->zzAB:Landroid/util/DisplayMetrics;

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzfg;->zzAH:I

    goto :goto_0
.end method

.method zzek()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfg;->zzoM:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziz;->zzaN()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zztf:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/zzfg;->zzAD:I

    iput v0, p0, Lcom/google/android/gms/internal/zzfg;->zzAI:I

    iget v0, p0, Lcom/google/android/gms/internal/zzfg;->zzAE:I

    iput v0, p0, Lcom/google/android/gms/internal/zzfg;->zzAJ:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfg;->zzoM:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0, v1, v1}, Lcom/google/android/gms/internal/zziz;->measure(II)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzl;->zzcF()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfg;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfg;->zzoM:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zziz;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzc(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzfg;->zzAI:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzl;->zzcF()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfg;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfg;->zzoM:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zziz;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzc(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzfg;->zzAJ:I

    goto :goto_0
.end method

.method public zzel()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfg;->zzei()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfg;->zzej()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfg;->zzek()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfg;->zzeo()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfg;->zzep()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfg;->zzen()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfg;->zzem()V

    return-void
.end method

.method zzem()V
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzN(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Dispatching Ready Event."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaG(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfg;->zzoM:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziz;->zzhh()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzJu:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzfg;->zzal(Ljava/lang/String;)V

    return-void
.end method

.method zzeo()V
    .locals 7

    iget v1, p0, Lcom/google/android/gms/internal/zzfg;->zzAD:I

    iget v2, p0, Lcom/google/android/gms/internal/zzfg;->zzAE:I

    iget v3, p0, Lcom/google/android/gms/internal/zzfg;->zzAG:I

    iget v4, p0, Lcom/google/android/gms/internal/zzfg;->zzAH:I

    iget v5, p0, Lcom/google/android/gms/internal/zzfg;->zzAC:F

    iget v6, p0, Lcom/google/android/gms/internal/zzfg;->zzAF:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/zzfg;->zza(IIIIFI)V

    return-void
.end method

.method zzep()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfg;->zzeq()Lcom/google/android/gms/internal/zzff;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfg;->zzoM:Lcom/google/android/gms/internal/zziz;

    const-string v2, "onDeviceFeaturesReceived"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzff;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/zziz;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
