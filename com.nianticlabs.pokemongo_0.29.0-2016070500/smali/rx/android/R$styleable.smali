.class public final Lrx/android/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/android/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AdsAttrs:[I

.field public static final AdsAttrs_adSize:I = 0x0

.field public static final AdsAttrs_adSizes:I = 0x1

.field public static final AdsAttrs_adUnitId:I = 0x2

.field public static final LoadingImageView:[I

.field public static final LoadingImageView_circleCrop:I = 0x2

.field public static final LoadingImageView_imageAspectRatio:I = 0x1

.field public static final LoadingImageView_imageAspectRatioAdjust:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 457
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lrx/android/R$styleable;->AdsAttrs:[I

    .line 534
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lrx/android/R$styleable;->LoadingImageView:[I

    return-void

    .line 457
    :array_0
    .array-data 4
        0x7f010003
        0x7f010004
        0x7f010005
    .end array-data

    .line 534
    :array_1
    .array-data 4
        0x7f010000
        0x7f010001
        0x7f010002
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
