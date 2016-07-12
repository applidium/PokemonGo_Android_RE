.class public Lcom/google/android/gms/ads/internal/formats/zza;
.super Ljava/lang/Object;


# static fields
.field private static final zzwa:I

.field private static final zzwb:I

.field static final zzwc:I

.field static final zzwd:I


# instance fields
.field private final mTextColor:I

.field private final zzwe:Ljava/lang/String;

.field private final zzwf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final zzwg:I

.field private final zzwh:I

.field private final zzwi:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0xcc

    const/16 v0, 0xc

    const/16 v1, 0xae

    const/16 v2, 0xce

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/google/android/gms/ads/internal/formats/zza;->zzwa:I

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/google/android/gms/ads/internal/formats/zza;->zzwb:I

    sget v0, Lcom/google/android/gms/ads/internal/formats/zza;->zzwb:I

    sput v0, Lcom/google/android/gms/ads/internal/formats/zza;->zzwc:I

    sget v0, Lcom/google/android/gms/ads/internal/formats/zza;->zzwa:I

    sput v0, Lcom/google/android/gms/ads/internal/formats/zza;->zzwd:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/formats/zza;->zzwe:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/formats/zza;->zzwf:Ljava/util/List;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/google/android/gms/ads/internal/formats/zza;->zzwg:I

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/google/android/gms/ads/internal/formats/zza;->mTextColor:I

    if-eqz p5, :cond_2

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/google/android/gms/ads/internal/formats/zza;->zzwh:I

    iput p6, p0, Lcom/google/android/gms/ads/internal/formats/zza;->zzwi:I

    return-void

    :cond_0
    sget v0, Lcom/google/android/gms/ads/internal/formats/zza;->zzwc:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/google/android/gms/ads/internal/formats/zza;->zzwd:I

    goto :goto_1

    :cond_2
    const/16 v0, 0xc

    goto :goto_2
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/internal/formats/zza;->zzwg:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zza;->zzwe:Ljava/lang/String;

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/internal/formats/zza;->mTextColor:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/internal/formats/zza;->zzwh:I

    return v0
.end method

.method public zzds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zza;->zzwf:Ljava/util/List;

    return-object v0
.end method

.method public zzdt()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/internal/formats/zza;->zzwi:I

    return v0
.end method
