.class Landroid/support/v4/view/MenuItemCompatIcs;
.super Ljava/lang/Object;
.source "MenuItemCompatIcs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/MenuItemCompatIcs$OnActionExpandListenerWrapper;,
        Landroid/support/v4/view/MenuItemCompatIcs$SupportActionExpandProxy;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static collapseActionView(Landroid/view/MenuItem;)Z
    .locals 1
    .param p0, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 28
    invoke-interface {p0}, Landroid/view/MenuItem;->collapseActionView()Z

    move-result v0

    return v0
.end method

.method public static expandActionView(Landroid/view/MenuItem;)Z
    .locals 1
    .param p0, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 24
    invoke-interface {p0}, Landroid/view/MenuItem;->expandActionView()Z

    move-result v0

    return v0
.end method

.method public static isActionViewExpanded(Landroid/view/MenuItem;)Z
    .locals 1
    .param p0, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 32
    invoke-interface {p0}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v0

    return v0
.end method

.method public static setOnActionExpandListener(Landroid/view/MenuItem;Landroid/support/v4/view/MenuItemCompatIcs$SupportActionExpandProxy;)Landroid/view/MenuItem;
    .locals 1
    .param p0, "item"    # Landroid/view/MenuItem;
    .param p1, "listener"    # Landroid/support/v4/view/MenuItemCompatIcs$SupportActionExpandProxy;

    .prologue
    .line 37
    new-instance v0, Landroid/support/v4/view/MenuItemCompatIcs$OnActionExpandListenerWrapper;

    invoke-direct {v0, p1}, Landroid/support/v4/view/MenuItemCompatIcs$OnActionExpandListenerWrapper;-><init>(Landroid/support/v4/view/MenuItemCompatIcs$SupportActionExpandProxy;)V

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method
