.class Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat$1;
.super Ljava/lang/Object;
.source "HoneycombMr1AnimatorCompatProvider.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat;->addUpdateListener(Landroid/support/v4/animation/AnimatorUpdateListenerCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat;

.field final synthetic val$animatorUpdateListener:Landroid/support/v4/animation/AnimatorUpdateListenerCompat;


# direct methods
.method constructor <init>(Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat;Landroid/support/v4/animation/AnimatorUpdateListenerCompat;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat$1;->this$0:Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat;

    iput-object p2, p0, Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat$1;->val$animatorUpdateListener:Landroid/support/v4/animation/AnimatorUpdateListenerCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 82
    iget-object v0, p0, Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat$1;->val$animatorUpdateListener:Landroid/support/v4/animation/AnimatorUpdateListenerCompat;

    iget-object v1, p0, Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat$1;->this$0:Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat;

    invoke-interface {v0, v1}, Landroid/support/v4/animation/AnimatorUpdateListenerCompat;->onAnimationUpdate(Landroid/support/v4/animation/ValueAnimatorCompat;)V

    .line 84
    return-void
.end method
