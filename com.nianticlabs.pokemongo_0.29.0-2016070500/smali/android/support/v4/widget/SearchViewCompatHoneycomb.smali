.class Landroid/support/v4/widget/SearchViewCompatHoneycomb;
.super Ljava/lang/Object;
.source "SearchViewCompatHoneycomb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnCloseListenerCompatBridge;,
        Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnQueryTextListenerCompatBridge;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static getQuery(Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "searchView"    # Landroid/view/View;

    .prologue
    .line 84
    check-cast p0, Landroid/widget/SearchView;

    .end local p0    # "searchView":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static isIconified(Landroid/view/View;)Z
    .locals 1
    .param p0, "searchView"    # Landroid/view/View;

    .prologue
    .line 100
    check-cast p0, Landroid/widget/SearchView;

    .end local p0    # "searchView":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/SearchView;->isIconified()Z

    move-result v0

    return v0
.end method

.method public static isQueryRefinementEnabled(Landroid/view/View;)Z
    .locals 1
    .param p0, "searchView"    # Landroid/view/View;

    .prologue
    .line 116
    check-cast p0, Landroid/widget/SearchView;

    .end local p0    # "searchView":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/SearchView;->isQueryRefinementEnabled()Z

    move-result v0

    return v0
.end method

.method public static isSubmitButtonEnabled(Landroid/view/View;)Z
    .locals 1
    .param p0, "searchView"    # Landroid/view/View;

    .prologue
    .line 108
    check-cast p0, Landroid/widget/SearchView;

    .end local p0    # "searchView":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/SearchView;->isSubmitButtonEnabled()Z

    move-result v0

    return v0
.end method

.method public static newOnCloseListener(Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnCloseListenerCompatBridge;)Ljava/lang/Object;
    .locals 1
    .param p0, "listener"    # Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnCloseListenerCompatBridge;

    .prologue
    .line 71
    new-instance v0, Landroid/support/v4/widget/SearchViewCompatHoneycomb$2;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SearchViewCompatHoneycomb$2;-><init>(Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnCloseListenerCompatBridge;)V

    return-object v0
.end method

.method public static newOnQueryTextListener(Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnQueryTextListenerCompatBridge;)Ljava/lang/Object;
    .locals 1
    .param p0, "listener"    # Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnQueryTextListenerCompatBridge;

    .prologue
    .line 53
    new-instance v0, Landroid/support/v4/widget/SearchViewCompatHoneycomb$1;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SearchViewCompatHoneycomb$1;-><init>(Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnQueryTextListenerCompatBridge;)V

    return-object v0
.end method

.method public static newSearchView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    new-instance v0, Landroid/widget/SearchView;

    invoke-direct {v0, p0}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static setIconified(Landroid/view/View;Z)V
    .locals 0
    .param p0, "searchView"    # Landroid/view/View;
    .param p1, "iconify"    # Z

    .prologue
    .line 96
    check-cast p0, Landroid/widget/SearchView;

    .end local p0    # "searchView":Landroid/view/View;
    invoke-virtual {p0, p1}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 97
    return-void
.end method

.method public static setMaxWidth(Landroid/view/View;I)V
    .locals 0
    .param p0, "searchView"    # Landroid/view/View;
    .param p1, "maxpixels"    # I

    .prologue
    .line 120
    check-cast p0, Landroid/widget/SearchView;

    .end local p0    # "searchView":Landroid/view/View;
    invoke-virtual {p0, p1}, Landroid/widget/SearchView;->setMaxWidth(I)V

    .line 121
    return-void
.end method

.method public static setOnCloseListener(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "searchView"    # Ljava/lang/Object;
    .param p1, "listener"    # Ljava/lang/Object;

    .prologue
    .line 80
    check-cast p0, Landroid/widget/SearchView;

    .end local p0    # "searchView":Ljava/lang/Object;
    check-cast p1, Landroid/widget/SearchView$OnCloseListener;

    .end local p1    # "listener":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 81
    return-void
.end method

.method public static setOnQueryTextListener(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "searchView"    # Ljava/lang/Object;
    .param p1, "listener"    # Ljava/lang/Object;

    .prologue
    .line 67
    check-cast p0, Landroid/widget/SearchView;

    .end local p0    # "searchView":Ljava/lang/Object;
    check-cast p1, Landroid/widget/SearchView$OnQueryTextListener;

    .end local p1    # "listener":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 68
    return-void
.end method

.method public static setQuery(Landroid/view/View;Ljava/lang/CharSequence;Z)V
    .locals 0
    .param p0, "searchView"    # Landroid/view/View;
    .param p1, "query"    # Ljava/lang/CharSequence;
    .param p2, "submit"    # Z

    .prologue
    .line 88
    check-cast p0, Landroid/widget/SearchView;

    .end local p0    # "searchView":Landroid/view/View;
    invoke-virtual {p0, p1, p2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 89
    return-void
.end method

.method public static setQueryHint(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "searchView"    # Landroid/view/View;
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .prologue
    .line 92
    check-cast p0, Landroid/widget/SearchView;

    .end local p0    # "searchView":Landroid/view/View;
    invoke-virtual {p0, p1}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 93
    return-void
.end method

.method public static setQueryRefinementEnabled(Landroid/view/View;Z)V
    .locals 0
    .param p0, "searchView"    # Landroid/view/View;
    .param p1, "enable"    # Z

    .prologue
    .line 112
    check-cast p0, Landroid/widget/SearchView;

    .end local p0    # "searchView":Landroid/view/View;
    invoke-virtual {p0, p1}, Landroid/widget/SearchView;->setQueryRefinementEnabled(Z)V

    .line 113
    return-void
.end method

.method public static setSearchableInfo(Landroid/view/View;Landroid/content/ComponentName;)V
    .locals 4
    .param p0, "searchView"    # Landroid/view/View;
    .param p1, "searchableComponent"    # Landroid/content/ComponentName;

    .prologue
    .line 46
    move-object v1, p0

    check-cast v1, Landroid/widget/SearchView;

    .line 47
    .local v1, "sv":Landroid/widget/SearchView;
    invoke-virtual {v1}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "search"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 49
    .local v0, "searchManager":Landroid/app/SearchManager;
    invoke-virtual {v0, p1}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 50
    return-void
.end method

.method public static setSubmitButtonEnabled(Landroid/view/View;Z)V
    .locals 0
    .param p0, "searchView"    # Landroid/view/View;
    .param p1, "enabled"    # Z

    .prologue
    .line 104
    check-cast p0, Landroid/widget/SearchView;

    .end local p0    # "searchView":Landroid/view/View;
    invoke-virtual {p0, p1}, Landroid/widget/SearchView;->setSubmitButtonEnabled(Z)V

    .line 105
    return-void
.end method
