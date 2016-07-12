.class Landroid/support/v4/view/ViewGroupCompatJellybeanMR2;
.super Ljava/lang/Object;
.source "ViewGroupCompatJellybeanMR2.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLayoutMode(Landroid/view/ViewGroup;)I
    .locals 1
    .param p0, "group"    # Landroid/view/ViewGroup;

    .prologue
    .line 24
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutMode()I

    move-result v0

    return v0
.end method

.method public static setLayoutMode(Landroid/view/ViewGroup;I)V
    .locals 0
    .param p0, "group"    # Landroid/view/ViewGroup;
    .param p1, "mode"    # I

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutMode(I)V

    .line 29
    return-void
.end method
