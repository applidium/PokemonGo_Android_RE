.class Landroid/support/v4/view/KeyEventCompatHoneycomb;
.super Ljava/lang/Object;
.source "KeyEventCompatHoneycomb.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static metaStateHasModifiers(II)Z
    .locals 1
    .param p0, "metaState"    # I
    .param p1, "modifiers"    # I

    .prologue
    .line 30
    invoke-static {p0, p1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    return v0
.end method

.method public static metaStateHasNoModifiers(I)Z
    .locals 1
    .param p0, "metaState"    # I

    .prologue
    .line 34
    invoke-static {p0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    return v0
.end method

.method public static normalizeMetaState(I)I
    .locals 1
    .param p0, "metaState"    # I

    .prologue
    .line 26
    invoke-static {p0}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    return v0
.end method
