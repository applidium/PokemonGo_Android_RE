.class Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompat.java"

# interfaces
.implements Landroid/support/v4/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyVpaListener"
.end annotation


# instance fields
.field mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;


# direct methods
.method constructor <init>(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V
    .locals 0
    .param p1, "vpa"    # Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .prologue
    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 529
    iput-object p1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 530
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 571
    const/high16 v2, 0x7e000000

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 572
    .local v1, "listenerTag":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 573
    .local v0, "listener":Landroid/support/v4/view/ViewPropertyAnimatorListener;
    instance-of v2, v1, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 574
    check-cast v0, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 576
    :cond_0
    if-eqz v0, :cond_1

    .line 577
    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationCancel(Landroid/view/View;)V

    .line 579
    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 552
    iget-object v2, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    # getter for: Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mOldLayerType:I
    invoke-static {v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->access$400(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 553
    iget-object v2, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    # getter for: Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mOldLayerType:I
    invoke-static {v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->access$400(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Landroid/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 554
    iget-object v2, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v3, -0x1

    # setter for: Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mOldLayerType:I
    invoke-static {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->access$402(Landroid/support/v4/view/ViewPropertyAnimatorCompat;I)I

    .line 556
    :cond_0
    iget-object v2, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    # getter for: Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mEndAction:Ljava/lang/Runnable;
    invoke-static {v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->access$000(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 557
    iget-object v2, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    # getter for: Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mEndAction:Ljava/lang/Runnable;
    invoke-static {v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->access$000(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 559
    :cond_1
    const/high16 v2, 0x7e000000

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 560
    .local v1, "listenerTag":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 561
    .local v0, "listener":Landroid/support/v4/view/ViewPropertyAnimatorListener;
    instance-of v2, v1, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 562
    check-cast v0, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 564
    :cond_2
    if-eqz v0, :cond_3

    .line 565
    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    .line 567
    :cond_3
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 534
    iget-object v2, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    # getter for: Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mOldLayerType:I
    invoke-static {v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->access$400(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 535
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Landroid/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 537
    :cond_0
    iget-object v2, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    # getter for: Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mStartAction:Ljava/lang/Runnable;
    invoke-static {v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->access$100(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 538
    iget-object v2, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    # getter for: Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mStartAction:Ljava/lang/Runnable;
    invoke-static {v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->access$100(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 540
    :cond_1
    const/high16 v2, 0x7e000000

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 541
    .local v1, "listenerTag":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 542
    .local v0, "listener":Landroid/support/v4/view/ViewPropertyAnimatorListener;
    instance-of v2, v1, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 543
    check-cast v0, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 545
    :cond_2
    if-eqz v0, :cond_3

    .line 546
    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationStart(Landroid/view/View;)V

    .line 548
    :cond_3
    return-void
.end method
