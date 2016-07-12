.class public Lcom/google/android/gms/ads/internal/client/ThinAdSizeParcel;
.super Lcom/google/android/gms/ads/internal/client/AdSizeParcel;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V
    .locals 11
    .param p1, "originalAdSize"    # Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    .prologue
    iget v1, p1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->versionCode:I

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzte:Ljava/lang/String;

    iget v3, p1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->height:I

    iget v4, p1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->heightPixels:I

    iget-boolean v5, p1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zztf:Z

    iget v6, p1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->width:I

    iget v7, p1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->widthPixels:I

    iget-object v8, p1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zztg:[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-boolean v9, p1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzth:Z

    iget-boolean v10, p1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzti:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;-><init>(ILjava/lang/String;IIZII[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZ)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzaq(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/ads/internal/client/ThinAdSizeParcel;->versionCode:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzc(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/ThinAdSizeParcel;->zzte:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/ads/internal/client/ThinAdSizeParcel;->height:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzc(Landroid/os/Parcel;II)V

    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/gms/ads/internal/client/ThinAdSizeParcel;->width:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzc(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzI(Landroid/os/Parcel;I)V

    return-void
.end method
