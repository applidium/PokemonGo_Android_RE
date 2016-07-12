.class public Lcom/google/android/gms/internal/zziy;
.super Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private zzCo:Lcom/google/android/gms/ads/internal/overlay/zzk;

.field private final zzJT:Landroid/view/ViewGroup;

.field private final zzoM:Lcom/google/android/gms/internal/zziz;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/internal/zziz;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/zziy;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/internal/zziz;Lcom/google/android/gms/ads/internal/overlay/zzk;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/internal/zziz;Lcom/google/android/gms/ads/internal/overlay/zzk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zziy;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zziy;->zzJT:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/google/android/gms/internal/zziy;->zzoM:Lcom/google/android/gms/internal/zziz;

    iput-object p4, p0, Lcom/google/android/gms/internal/zziy;->zzCo:Lcom/google/android/gms/ads/internal/overlay/zzk;

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    const-string v0, "onDestroy must be called from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzci(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zziy;->zzCo:Lcom/google/android/gms/ads/internal/overlay/zzk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zziy;->zzCo:Lcom/google/android/gms/ads/internal/overlay/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzk;->destroy()V

    :cond_0
    return-void
.end method

.method public zza(IIIII)V
    .locals 8

    const/4 v7, -0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zziy;->zzCo:Lcom/google/android/gms/ads/internal/overlay/zzk;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zziy;->zzoM:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziz;->zzhn()Lcom/google/android/gms/internal/zzcf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcf;->zzdm()Lcom/google/android/gms/internal/zzcg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zziy;->zzoM:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zziz;->zzhm()Lcom/google/android/gms/internal/zzce;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "vpr"

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzcc;->zza(Lcom/google/android/gms/internal/zzcg;Lcom/google/android/gms/internal/zzce;[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zziy;->zzoM:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziz;->zzhn()Lcom/google/android/gms/internal/zzcf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcf;->zzdm()Lcom/google/android/gms/internal/zzcg;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcc;->zzb(Lcom/google/android/gms/internal/zzcg;)Lcom/google/android/gms/internal/zzce;

    move-result-object v5

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzk;

    iget-object v1, p0, Lcom/google/android/gms/internal/zziy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zziy;->zzoM:Lcom/google/android/gms/internal/zziz;

    iget-object v3, p0, Lcom/google/android/gms/internal/zziy;->zzoM:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v3}, Lcom/google/android/gms/internal/zziz;->zzhn()Lcom/google/android/gms/internal/zzcf;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcf;->zzdm()Lcom/google/android/gms/internal/zzcg;

    move-result-object v4

    move v3, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/overlay/zzk;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zziz;ILcom/google/android/gms/internal/zzcg;Lcom/google/android/gms/internal/zzce;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zziy;->zzCo:Lcom/google/android/gms/ads/internal/overlay/zzk;

    iget-object v0, p0, Lcom/google/android/gms/internal/zziy;->zzJT:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/zziy;->zzCo:Lcom/google/android/gms/ads/internal/overlay/zzk;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zziy;->zzCo:Lcom/google/android/gms/ads/internal/overlay/zzk;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzd(IIII)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zziy;->zzoM:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziz;->zzhe()Lcom/google/android/gms/internal/zzja;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/zzja;->zzF(Z)V

    goto :goto_0
.end method

.method public zze(IIII)V
    .locals 1

    const-string v0, "The underlay may only be modified from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzci(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zziy;->zzCo:Lcom/google/android/gms/ads/internal/overlay/zzk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zziy;->zzCo:Lcom/google/android/gms/ads/internal/overlay/zzk;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzd(IIII)V

    :cond_0
    return-void
.end method

.method public zzgX()Lcom/google/android/gms/ads/internal/overlay/zzk;
    .locals 1

    const-string v0, "getAdVideoUnderlay must be called from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzci(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zziy;->zzCo:Lcom/google/android/gms/ads/internal/overlay/zzk;

    return-object v0
.end method
