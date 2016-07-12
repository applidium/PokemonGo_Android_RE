.class Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectLollipopImpl;
.super Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectIcsImpl;
.source "EdgeEffectCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/EdgeEffectCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EdgeEffectLollipopImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectIcsImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public onPull(Ljava/lang/Object;FF)Z
    .locals 1
    .param p1, "edgeEffect"    # Ljava/lang/Object;
    .param p2, "deltaDistance"    # F
    .param p3, "displacement"    # F

    .prologue
    .line 137
    invoke-static {p1, p2, p3}, Landroid/support/v4/widget/EdgeEffectCompatLollipop;->onPull(Ljava/lang/Object;FF)Z

    move-result v0

    return v0
.end method
