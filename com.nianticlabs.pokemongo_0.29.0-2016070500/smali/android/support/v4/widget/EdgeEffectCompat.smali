.class public Landroid/support/v4/widget/EdgeEffectCompat;
.super Ljava/lang/Object;
.source "EdgeEffectCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectLollipopImpl;,
        Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectIcsImpl;,
        Landroid/support/v4/widget/EdgeEffectCompat$BaseEdgeEffectImpl;,
        Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;
    }
.end annotation


# static fields
.field private static final IMPL:Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;


# instance fields
.field private mEdgeEffect:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 38
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectLollipopImpl;

    invoke-direct {v0}, Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectLollipopImpl;-><init>()V

    sput-object v0, Landroid/support/v4/widget/EdgeEffectCompat;->IMPL:Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;

    .line 44
    :goto_0
    return-void

    .line 39
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 40
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectIcsImpl;

    invoke-direct {v0}, Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectIcsImpl;-><init>()V

    sput-object v0, Landroid/support/v4/widget/EdgeEffectCompat;->IMPL:Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;

    goto :goto_0

    .line 42
    :cond_1
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat$BaseEdgeEffectImpl;

    invoke-direct {v0}, Landroid/support/v4/widget/EdgeEffectCompat$BaseEdgeEffectImpl;-><init>()V

    sput-object v0, Landroid/support/v4/widget/EdgeEffectCompat;->IMPL:Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    sget-object v0, Landroid/support/v4/widget/EdgeEffectCompat;->IMPL:Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;

    invoke-interface {v0, p1}, Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;->newEdgeEffect(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/EdgeEffectCompat;->mEdgeEffect:Ljava/lang/Object;

    .line 151
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 254
    sget-object v0, Landroid/support/v4/widget/EdgeEffectCompat;->IMPL:Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;

    iget-object v1, p0, Landroid/support/v4/widget/EdgeEffectCompat;->mEdgeEffect:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;->draw(Ljava/lang/Object;Landroid/graphics/Canvas;)Z

    move-result v0

    return v0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 179
    sget-object v0, Landroid/support/v4/widget/EdgeEffectCompat;->IMPL:Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;

    iget-object v1, p0, Landroid/support/v4/widget/EdgeEffectCompat;->mEdgeEffect:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;->finish(Ljava/lang/Object;)V

    .line 180
    return-void
.end method

.method public isFinished()Z
    .locals 2

    .prologue
    .line 171
    sget-object v0, Landroid/support/v4/widget/EdgeEffectCompat;->IMPL:Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;

    iget-object v1, p0, Landroid/support/v4/widget/EdgeEffectCompat;->mEdgeEffect:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;->isFinished(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onAbsorb(I)Z
    .locals 2
    .param p1, "velocity"    # I

    .prologue
    .line 240
    sget-object v0, Landroid/support/v4/widget/EdgeEffectCompat;->IMPL:Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;

    iget-object v1, p0, Landroid/support/v4/widget/EdgeEffectCompat;->mEdgeEffect:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;->onAbsorb(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public onPull(F)Z
    .locals 2
    .param p1, "deltaDistance"    # F

    .prologue
    .line 195
    sget-object v0, Landroid/support/v4/widget/EdgeEffectCompat;->IMPL:Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;

    iget-object v1, p0, Landroid/support/v4/widget/EdgeEffectCompat;->mEdgeEffect:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;->onPull(Ljava/lang/Object;F)Z

    move-result v0

    return v0
.end method

.method public onPull(FF)Z
    .locals 2
    .param p1, "deltaDistance"    # F
    .param p2, "displacement"    # F

    .prologue
    .line 213
    sget-object v0, Landroid/support/v4/widget/EdgeEffectCompat;->IMPL:Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;

    iget-object v1, p0, Landroid/support/v4/widget/EdgeEffectCompat;->mEdgeEffect:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;->onPull(Ljava/lang/Object;FF)Z

    move-result v0

    return v0
.end method

.method public onRelease()Z
    .locals 2

    .prologue
    .line 225
    sget-object v0, Landroid/support/v4/widget/EdgeEffectCompat;->IMPL:Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;

    iget-object v1, p0, Landroid/support/v4/widget/EdgeEffectCompat;->mEdgeEffect:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;->onRelease(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setSize(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 160
    sget-object v0, Landroid/support/v4/widget/EdgeEffectCompat;->IMPL:Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;

    iget-object v1, p0, Landroid/support/v4/widget/EdgeEffectCompat;->mEdgeEffect:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;->setSize(Ljava/lang/Object;II)V

    .line 161
    return-void
.end method
