.class final Lcom/google/android/gms/common/images/ImageManager$zzb;
.super Lcom/google/android/gms/internal/zzmg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/images/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzmg",
        "<",
        "Lcom/google/android/gms/common/images/zza$zza;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/images/ImageManager$zzb;->zzaj(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzmg;-><init>(I)V

    return-void
.end method

.method private static zzaj(Landroid/content/Context;)I
    .locals 3

    const/high16 v2, 0x100000

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/zzmx;->zzqu()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/google/android/gms/common/images/ImageManager$zza;->zza(Landroid/app/ActivityManager;)I

    move-result v0

    :goto_1
    mul-int/2addr v0, v2

    const v1, 0x3ea8f5c3    # 0.33f

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    goto :goto_1
.end method


# virtual methods
.method protected synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Z
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Lcom/google/android/gms/common/images/zza$zza;

    .end local p2    # "x1":Ljava/lang/Object;
    check-cast p3, Landroid/graphics/Bitmap;

    .end local p3    # "x2":Ljava/lang/Object;
    check-cast p4, Landroid/graphics/Bitmap;

    .end local p4    # "x3":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/images/ImageManager$zzb;->zza(ZLcom/google/android/gms/common/images/zza$zza;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Lcom/google/android/gms/common/images/zza$zza;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/graphics/Bitmap;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/images/ImageManager$zzb;->zza(Lcom/google/android/gms/common/images/zza$zza;Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method protected zza(Lcom/google/android/gms/common/images/zza$zza;Landroid/graphics/Bitmap;)I
    .locals 2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method protected zza(ZLcom/google/android/gms/common/images/zza$zza;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzmg;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
