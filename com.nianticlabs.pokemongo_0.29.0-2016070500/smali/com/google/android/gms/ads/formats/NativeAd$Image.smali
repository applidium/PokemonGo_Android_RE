.class public abstract Lcom/google/android/gms/ads/formats/NativeAd$Image;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/formats/NativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Image"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getDrawable()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getScale()D
.end method

.method public abstract getUri()Landroid/net/Uri;
.end method
