.class Landroid/support/v4/view/ViewPropertyAnimatorCompat$KitKatViewPropertyAnimatorCompatImpl;
.super Landroid/support/v4/view/ViewPropertyAnimatorCompat$JBMr2ViewPropertyAnimatorCompatImpl;
.source "ViewPropertyAnimatorCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewPropertyAnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KitKatViewPropertyAnimatorCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 614
    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$JBMr2ViewPropertyAnimatorCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public setUpdateListener(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;)V
    .locals 0
    .param p1, "vpa"    # Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "listener"    # Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;

    .prologue
    .line 617
    invoke-static {p2, p3}, Landroid/support/v4/view/ViewPropertyAnimatorCompatKK;->setUpdateListener(Landroid/view/View;Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;)V

    .line 618
    return-void
.end method
