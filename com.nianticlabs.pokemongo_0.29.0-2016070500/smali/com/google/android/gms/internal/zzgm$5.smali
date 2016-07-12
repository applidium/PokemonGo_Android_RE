.class Lcom/google/android/gms/internal/zzgm$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzih$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzgm;->zza(Lorg/json/JSONObject;ZZ)Lcom/google/android/gms/internal/zziq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzih$zza",
        "<",
        "Lcom/google/android/gms/ads/internal/formats/zzc;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzAs:Ljava/lang/String;

.field final synthetic zzDN:Lcom/google/android/gms/internal/zzgm;

.field final synthetic zzDX:Z

.field final synthetic zzDY:D


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzgm;ZDLjava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgm$5;->zzDN:Lcom/google/android/gms/internal/zzgm;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzgm$5;->zzDX:Z

    iput-wide p3, p0, Lcom/google/android/gms/internal/zzgm$5;->zzDY:D

    iput-object p5, p0, Lcom/google/android/gms/internal/zzgm$5;->zzAs:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzfE()Lcom/google/android/gms/ads/internal/formats/zzc;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgm$5;->zzDN:Lcom/google/android/gms/internal/zzgm;

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzgm$5;->zzDX:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzgm;->zza(IZ)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic zzfF()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzgm$5;->zzfE()Lcom/google/android/gms/ads/internal/formats/zzc;

    move-result-object v0

    return-object v0
.end method

.method public zzg(Ljava/io/InputStream;)Lcom/google/android/gms/ads/internal/formats/zzc;
    .locals 6

    const/4 v4, 0x2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzmt;->zzk(Ljava/io/InputStream;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgm$5;->zzDN:Lcom/google/android/gms/internal/zzgm;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzgm$5;->zzDX:Z

    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/internal/zzgm;->zza(IZ)V

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgm$5;->zzDN:Lcom/google/android/gms/internal/zzgm;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzgm$5;->zzDX:Z

    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/internal/zzgm;->zza(IZ)V

    goto :goto_1

    :cond_1
    const-wide/high16 v2, 0x4064000000000000L    # 160.0

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzgm$5;->zzDY:D

    mul-double/2addr v2, v4

    double-to-int v0, v2

    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    new-instance v0, Lcom/google/android/gms/ads/internal/formats/zzc;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgm$5;->zzAs:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzgm$5;->zzDY:D

    invoke-direct {v0, v2, v1, v4, v5}, Lcom/google/android/gms/ads/internal/formats/zzc;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;D)V

    goto :goto_1
.end method

.method public synthetic zzh(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzgm$5;->zzg(Ljava/io/InputStream;)Lcom/google/android/gms/ads/internal/formats/zzc;

    move-result-object v0

    return-object v0
.end method
