.class Landroid/support/v4/view/MenuItemCompat$HoneycombMenuVersionImpl;
.super Ljava/lang/Object;
.source "MenuItemCompat.java"

# interfaces
.implements Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/MenuItemCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HoneycombMenuVersionImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collapseActionView(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public expandActionView(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public getActionView(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 176
    invoke-static {p1}, Landroid/support/v4/view/MenuItemCompatHoneycomb;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isActionViewExpanded(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method public setActionView(Landroid/view/MenuItem;I)Landroid/view/MenuItem;
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "resId"    # I

    .prologue
    .line 171
    invoke-static {p1, p2}, Landroid/support/v4/view/MenuItemCompatHoneycomb;->setActionView(Landroid/view/MenuItem;I)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setActionView(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 166
    invoke-static {p1, p2}, Landroid/support/v4/view/MenuItemCompatHoneycomb;->setActionView(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem;Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "listener"    # Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

    .prologue
    .line 196
    return-object p1
.end method

.method public setShowAsAction(Landroid/view/MenuItem;I)V
    .locals 0
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "actionEnum"    # I

    .prologue
    .line 161
    invoke-static {p1, p2}, Landroid/support/v4/view/MenuItemCompatHoneycomb;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 162
    return-void
.end method
