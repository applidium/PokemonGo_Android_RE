.class public Lcom/google/android/gms/internal/zzge;
.super Lcom/google/android/gms/internal/zzgc;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation


# instance fields
.field private zzDt:Lcom/google/android/gms/internal/zzgd;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzhs$zza;Lcom/google/android/gms/internal/zziz;Lcom/google/android/gms/internal/zzgg$zza;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzgc;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzhs$zza;Lcom/google/android/gms/internal/zziz;Lcom/google/android/gms/internal/zzgg$zza;)V

    return-void
.end method


# virtual methods
.method protected zzfs()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzge;->zzoM:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziz;->zzaN()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v0

    iget-boolean v1, v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zztf:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzge;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_0
    new-instance v2, Lcom/google/android/gms/internal/zzgd;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzge;->zzoM:Lcom/google/android/gms/internal/zziz;

    invoke-direct {v2, p0, v3, v1, v0}, Lcom/google/android/gms/internal/zzgd;-><init>(Lcom/google/android/gms/internal/zzja$zza;Lcom/google/android/gms/internal/zziz;II)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzge;->zzDt:Lcom/google/android/gms/internal/zzgd;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzge;->zzoM:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziz;->zzhe()Lcom/google/android/gms/internal/zzja;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzja;->zza(Lcom/google/android/gms/internal/zzja$zza;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzge;->zzDt:Lcom/google/android/gms/internal/zzgd;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzge;->zzDf:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzgd;->zza(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;)V

    return-void

    :cond_0
    iget v1, v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->widthPixels:I

    iget v0, v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->heightPixels:I

    goto :goto_0
.end method

.method protected zzft()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzge;->zzDt:Lcom/google/android/gms/internal/zzgd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgd;->zzfx()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Ad-Network indicated no fill with passback URL."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaF(Ljava/lang/String;)V

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzge;->zzDt:Lcom/google/android/gms/internal/zzgd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgd;->zzfy()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, -0x2

    goto :goto_0
.end method
