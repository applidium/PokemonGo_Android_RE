.class Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;
.super Ljava/lang/Object;
.source "DonutAnimatorCompatProvider.java"

# interfaces
.implements Landroid/support/v4/animation/ValueAnimatorCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/animation/DonutAnimatorCompatProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DonutFloatValueAnimator"
.end annotation


# instance fields
.field private mDuration:J

.field private mEnded:Z

.field private mFraction:F

.field mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/animation/AnimatorListenerCompat;",
            ">;"
        }
    .end annotation
.end field

.field private mLoopRunnable:Ljava/lang/Runnable;

.field private mStartTime:J

.field private mStarted:Z

.field mTarget:Landroid/view/View;

.field mUpdateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/animation/AnimatorUpdateListenerCompat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mListeners:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mUpdateListeners:Ljava/util/List;

    .line 45
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mDuration:J

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mFraction:F

    .line 48
    iput-boolean v2, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mStarted:Z

    .line 49
    iput-boolean v2, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mEnded:Z

    .line 54
    new-instance v0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator$1;

    invoke-direct {v0, p0}, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator$1;-><init>(Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;)V

    iput-object v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mLoopRunnable:Ljava/lang/Runnable;

    .line 52
    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;)J
    .locals 2
    .param p0, "x0"    # Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;)J
    .locals 2
    .param p0, "x0"    # Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;

    .prologue
    .line 38
    iget-wide v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$200(Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;)J
    .locals 2
    .param p0, "x0"    # Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;

    .prologue
    .line 38
    iget-wide v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mDuration:J

    return-wide v0
.end method

.method static synthetic access$300(Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;)F
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;

    .prologue
    .line 38
    iget v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mFraction:F

    return v0
.end method

.method static synthetic access$302(Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;F)F
    .locals 0
    .param p0, "x0"    # Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;
    .param p1, "x1"    # F

    .prologue
    .line 38
    iput p1, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mFraction:F

    return p1
.end method

.method static synthetic access$400(Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->notifyUpdateListeners()V

    return-void
.end method

.method static synthetic access$500(Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->dispatchEnd()V

    return-void
.end method

.method static synthetic access$600(Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;

    .prologue
    .line 38
    iget-object v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mLoopRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private dispatchCancel()V
    .locals 2

    .prologue
    .line 124
    iget-object v1, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 125
    iget-object v1, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/animation/AnimatorListenerCompat;

    invoke-interface {v1, p0}, Landroid/support/v4/animation/AnimatorListenerCompat;->onAnimationCancel(Landroid/support/v4/animation/ValueAnimatorCompat;)V

    .line 124
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 127
    :cond_0
    return-void
.end method

.method private dispatchEnd()V
    .locals 2

    .prologue
    .line 118
    iget-object v1, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 119
    iget-object v1, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/animation/AnimatorListenerCompat;

    invoke-interface {v1, p0}, Landroid/support/v4/animation/AnimatorListenerCompat;->onAnimationEnd(Landroid/support/v4/animation/ValueAnimatorCompat;)V

    .line 118
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 121
    :cond_0
    return-void
.end method

.method private dispatchStart()V
    .locals 2

    .prologue
    .line 112
    iget-object v1, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 113
    iget-object v1, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/animation/AnimatorListenerCompat;

    invoke-interface {v1, p0}, Landroid/support/v4/animation/AnimatorListenerCompat;->onAnimationStart(Landroid/support/v4/animation/ValueAnimatorCompat;)V

    .line 112
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 115
    :cond_0
    return-void
.end method

.method private getTime()J
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private notifyUpdateListeners()V
    .locals 2

    .prologue
    .line 73
    iget-object v1, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mUpdateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 74
    iget-object v1, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mUpdateListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/animation/AnimatorUpdateListenerCompat;

    invoke-interface {v1, p0}, Landroid/support/v4/animation/AnimatorUpdateListenerCompat;->onAnimationUpdate(Landroid/support/v4/animation/ValueAnimatorCompat;)V

    .line 73
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 76
    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Landroid/support/v4/animation/AnimatorListenerCompat;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/animation/AnimatorListenerCompat;

    .prologue
    .line 85
    iget-object v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    return-void
.end method

.method public addUpdateListener(Landroid/support/v4/animation/AnimatorUpdateListenerCompat;)V
    .locals 1
    .param p1, "animatorUpdateListener"    # Landroid/support/v4/animation/AnimatorUpdateListenerCompat;

    .prologue
    .line 143
    iget-object v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mUpdateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mEnded:Z

    if-eqz v0, :cond_0

    .line 139
    :goto_0
    return-void

    .line 134
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mEnded:Z

    .line 135
    iget-boolean v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mStarted:Z

    if-eqz v0, :cond_1

    .line 136
    invoke-direct {p0}, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->dispatchCancel()V

    .line 138
    :cond_1
    invoke-direct {p0}, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->dispatchEnd()V

    goto :goto_0
.end method

.method public getAnimatedFraction()F
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mFraction:F

    return v0
.end method

.method public setDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 90
    iget-boolean v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mStarted:Z

    if-nez v0, :cond_0

    .line 91
    iput-wide p1, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mDuration:J

    .line 93
    :cond_0
    return-void
.end method

.method public setTarget(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 80
    iput-object p1, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mTarget:Landroid/view/View;

    .line 81
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 97
    iget-boolean v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mStarted:Z

    if-eqz v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 100
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mStarted:Z

    .line 101
    invoke-direct {p0}, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->dispatchStart()V

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mFraction:F

    .line 103
    invoke-direct {p0}, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mStartTime:J

    .line 104
    iget-object v0, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mTarget:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mLoopRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
