.class Lcom/google/android/gms/ads/internal/overlay/zzd$zzd;
.super Lcom/google/android/gms/internal/zzhz;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/overlay/zzd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zzd"
.end annotation


# instance fields
.field final synthetic zzBv:Lcom/google/android/gms/ads/internal/overlay/zzd;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/internal/overlay/zzd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd$zzd;->zzBv:Lcom/google/android/gms/ads/internal/overlay/zzd;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzhz;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/internal/overlay/zzd;Lcom/google/android/gms/ads/internal/overlay/zzd$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzd$zzd;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzd;)V

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 0

    return-void
.end method

.method public zzbn()V
    .locals 5

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbv()Lcom/google/android/gms/internal/zzid;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd$zzd;->zzBv:Lcom/google/android/gms/ads/internal/overlay/zzd;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zza(Lcom/google/android/gms/ads/internal/overlay/zzd;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd$zzd;->zzBv:Lcom/google/android/gms/ads/internal/overlay/zzd;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzBi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzBM:Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;->zzpv:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzid;->zzg(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbx()Lcom/google/android/gms/internal/zzie;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd$zzd;->zzBv:Lcom/google/android/gms/ads/internal/overlay/zzd;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zza(Lcom/google/android/gms/ads/internal/overlay/zzd;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzd$zzd;->zzBv:Lcom/google/android/gms/ads/internal/overlay/zzd;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzBi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzBM:Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;

    iget-boolean v3, v3, Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;->zzpw:Z

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zzd$zzd;->zzBv:Lcom/google/android/gms/ads/internal/overlay/zzd;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzBi:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzBM:Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;

    iget v4, v4, Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;->zzpx:F

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/google/android/gms/internal/zzie;->zza(Landroid/content/Context;Landroid/graphics/Bitmap;ZF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzid;->zzIE:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/zzd$zzd$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzd$zzd$1;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzd$zzd;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
