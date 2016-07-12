.class public final Lcom/google/android/gms/internal/zzls;
.super Landroid/graphics/drawable/Drawable;

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzls$1;,
        Lcom/google/android/gms/internal/zzls$zza;,
        Lcom/google/android/gms/internal/zzls$zzb;
    }
.end annotation


# instance fields
.field private mFrom:I

.field private zzNY:J

.field private zzaea:Z

.field private zzaeh:I

.field private zzaei:I

.field private zzaej:I

.field private zzaek:I

.field private zzael:I

.field private zzaem:Z

.field private zzaen:Lcom/google/android/gms/internal/zzls$zzb;

.field private zzaeo:Landroid/graphics/drawable/Drawable;

.field private zzaep:Landroid/graphics/drawable/Drawable;

.field private zzaeq:Z

.field private zzaer:Z

.field private zzaes:Z

.field private zzaet:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzls;-><init>(Lcom/google/android/gms/internal/zzls$zzb;)V

    if-nez p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzls$zza;->zzoG()Lcom/google/android/gms/internal/zzls$zza;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzls;->zzaeo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzls;->zzaen:Lcom/google/android/gms/internal/zzls$zzb;

    iget v1, v0, Lcom/google/android/gms/internal/zzls$zzb;->zzaex:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/gms/internal/zzls$zzb;->zzaex:I

    if-nez p2, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/zzls$zza;->zzoG()Lcom/google/android/gms/internal/zzls$zza;

    move-result-object p2

    :cond_1
    iput-object p2, p0, Lcom/google/android/gms/internal/zzls;->zzaep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzls;->zzaen:Lcom/google/android/gms/internal/zzls$zzb;

    iget v1, v0, Lcom/google/android/gms/internal/zzls$zzb;->zzaex:I

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/gms/internal/zzls$zzb;->zzaex:I

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzls$zzb;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput v1, p0, Lcom/google/android/gms/internal/zzls;->zzaeh:I

    const/16 v0, 0xff

    iput v0, p0, Lcom/google/android/gms/internal/zzls;->zzaej:I

    iput v1, p0, Lcom/google/android/gms/internal/zzls;->zzael:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzls;->zzaea:Z

    new-instance v0, Lcom/google/android/gms/internal/zzls$zzb;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzls$zzb;-><init>(Lcom/google/android/gms/internal/zzls$zzb;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzls;->zzaen:Lcom/google/android/gms/internal/zzls$zzb;

    return-void
.end method


# virtual methods
.method public canConstantState()Z
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzls;->zzaeq:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzls;->zzaeo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzls;->zzaep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzls;->zzaer:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzls;->zzaeq:Z

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzls;->zzaer:Z

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/zzls;->zzaeh:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    move v0, v1

    :goto_1
    iget v1, p0, Lcom/google/android/gms/internal/zzls;->zzael:I

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzls;->zzaea:Z

    iget-object v3, p0, Lcom/google/android/gms/internal/zzls;->zzaeo:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzls;->zzaep:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    if-eqz v2, :cond_1

    if-nez v1, :cond_2

    :cond_1
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/zzls;->zzaej:I

    if-ne v1, v0, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/zzls;->zzaej:I

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    :goto_2
    return-void

    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzls;->zzNY:J

    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/gms/internal/zzls;->zzaeh:I

    goto :goto_1

    :pswitch_1
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzls;->zzNY:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzls;->zzNY:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    iget v3, p0, Lcom/google/android/gms/internal/zzls;->zzaek:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    cmpl-float v3, v2, v6

    if-ltz v3, :cond_5

    :goto_3
    if-eqz v1, :cond_4

    iput v0, p0, Lcom/google/android/gms/internal/zzls;->zzaeh:I

    :cond_4
    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v2, p0, Lcom/google/android/gms/internal/zzls;->mFrom:I

    int-to-float v2, v2

    iget v3, p0, Lcom/google/android/gms/internal/zzls;->zzaei:I

    iget v4, p0, Lcom/google/android/gms/internal/zzls;->mFrom:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/gms/internal/zzls;->zzael:I

    goto :goto_0

    :cond_5
    move v1, v0

    goto :goto_3

    :cond_6
    if-eqz v2, :cond_7

    iget v0, p0, Lcom/google/android/gms/internal/zzls;->zzaej:I

    sub-int/2addr v0, v1

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_7
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz v2, :cond_8

    iget v0, p0, Lcom/google/android/gms/internal/zzls;->zzaej:I

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_8
    if-lez v1, :cond_9

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/google/android/gms/internal/zzls;->zzaej:I

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzls;->invalidateSelf()V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getChangingConfigurations()I
    .locals 2

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzls;->zzaen:Lcom/google/android/gms/internal/zzls$zzb;

    iget v1, v1, Lcom/google/android/gms/internal/zzls$zzb;->zzaew:I

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzls;->zzaen:Lcom/google/android/gms/internal/zzls$zzb;

    iget v1, v1, Lcom/google/android/gms/internal/zzls$zzb;->zzaex:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzls;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzls;->zzaen:Lcom/google/android/gms/internal/zzls$zzb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzls;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/zzls$zzb;->zzaew:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzls;->zzaen:Lcom/google/android/gms/internal/zzls$zzb;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzls;->zzaeo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzls;->zzaep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzls;->zzaeo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzls;->zzaep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzls;->zzaes:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzls;->zzaeo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzls;->zzaep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzls;->zzaet:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzls;->zzaes:Z

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzls;->zzaet:I

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    invoke-static {}, Lcom/google/android/gms/internal/zzmx;->zzqu()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzls;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzls;->zzaem:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzls;->canConstantState()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "One or more children of this LayerDrawable does not have constant state; this drawable cannot be mutated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzls;->zzaeo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzls;->zzaep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzls;->zzaem:Z

    :cond_1
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/zzls;->zzaeo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzls;->zzaep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .prologue
    invoke-static {}, Lcom/google/android/gms/internal/zzmx;->zzqu()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzls;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 2
    .param p1, "alpha"    # I

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/zzls;->zzael:I

    iget v1, p0, Lcom/google/android/gms/internal/zzls;->zzaej:I

    if-ne v0, v1, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/zzls;->zzael:I

    :cond_0
    iput p1, p0, Lcom/google/android/gms/internal/zzls;->zzaej:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzls;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/zzls;->zzaeo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzls;->zzaep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public startTransition(I)V
    .locals 2
    .param p1, "durationMillis"    # I

    .prologue
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/internal/zzls;->mFrom:I

    iget v0, p0, Lcom/google/android/gms/internal/zzls;->zzaej:I

    iput v0, p0, Lcom/google/android/gms/internal/zzls;->zzaei:I

    iput v1, p0, Lcom/google/android/gms/internal/zzls;->zzael:I

    iput p1, p0, Lcom/google/android/gms/internal/zzls;->zzaek:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzls;->zzaeh:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzls;->invalidateSelf()V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .prologue
    invoke-static {}, Lcom/google/android/gms/internal/zzmx;->zzqu()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzls;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public zzoF()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzls;->zzaep:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
