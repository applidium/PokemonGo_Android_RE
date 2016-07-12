.class public Landroid/support/v4/app/FragmentController;
.super Ljava/lang/Object;
.source "FragmentController.java"


# instance fields
.field private final mHost:Landroid/support/v4/app/FragmentHostCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/FragmentHostCallback",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/support/v4/app/FragmentHostCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentHostCallback",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "callbacks":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    .line 52
    return-void
.end method

.method public static final createController(Landroid/support/v4/app/FragmentHostCallback;)Landroid/support/v4/app/FragmentController;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentHostCallback",
            "<*>;)",
            "Landroid/support/v4/app/FragmentController;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "callbacks":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<*>;"
    new-instance v0, Landroid/support/v4/app/FragmentController;

    invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentController;-><init>(Landroid/support/v4/app/FragmentHostCallback;)V

    return-object v0
.end method


# virtual methods
.method public attachHost(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "parent"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 95
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v1, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v2, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0, v1, v2, p1}, Landroid/support/v4/app/FragmentManagerImpl;->attachController(Landroid/support/v4/app/FragmentHostCallback;Landroid/support/v4/app/FragmentContainer;Landroid/support/v4/app/Fragment;)V

    .line 97
    return-void
.end method

.method public dispatchActivityCreated()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchActivityCreated()V

    .line 166
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 246
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 247
    return-void
.end method

.method public dispatchContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 308
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public dispatchCreate()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchCreate()V

    .line 155
    return-void
.end method

.method public dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 270
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v0

    return v0
.end method

.method public dispatchDestroy()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchDestroy()V

    .line 236
    return-void
.end method

.method public dispatchDestroyView()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchDestroyView()V

    .line 225
    return-void
.end method

.method public dispatchLowMemory()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchLowMemory()V

    .line 259
    return-void
.end method

.method public dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 295
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public dispatchOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 319
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    .line 320
    return-void
.end method

.method public dispatchPause()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchPause()V

    .line 199
    return-void
.end method

.method public dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 282
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public dispatchReallyStop()V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchReallyStop()V

    .line 214
    return-void
.end method

.method public dispatchResume()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchResume()V

    .line 188
    return-void
.end method

.method public dispatchStart()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchStart()V

    .line 177
    return-void
.end method

.method public dispatchStop()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchStop()V

    .line 210
    return-void
.end method

.method public doLoaderDestroy()V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->doLoaderDestroy()V

    .line 363
    return-void
.end method

.method public doLoaderRetain()V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->doLoaderRetain()V

    .line 356
    return-void
.end method

.method public doLoaderStart()V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->doLoaderStart()V

    .line 338
    return-void
.end method

.method public doLoaderStop(Z)V
    .locals 1
    .param p1, "retain"    # Z

    .prologue
    .line 348
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentHostCallback;->doLoaderStop(Z)V

    .line 349
    return-void
.end method

.method public dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 394
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/FragmentHostCallback;->dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 395
    return-void
.end method

.method public execPendingActions()Z
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v0

    return v0
.end method

.method public getActiveFragments(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "actives":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 81
    const/4 v0, 0x0

    .line 87
    :goto_0
    return-object v0

    .line 83
    :cond_0
    if-nez p1, :cond_1

    .line 84
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "actives":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentController;->getActiveFragmentsCount()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 86
    .restart local p1    # "actives":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v0, p1

    .line 87
    goto :goto_0
.end method

.method public getActiveFragmentsCount()I
    .locals 2

    .prologue
    .line 72
    iget-object v1, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v1, v1, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v1, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    .line 73
    .local v0, "actives":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0
.end method

.method public getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getFragmentManagerImpl()Landroid/support/v4/app/FragmentManagerImpl;

    move-result-object v0

    return-object v0
.end method

.method public getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getLoaderManagerImpl()Landroid/support/v4/app/LoaderManagerImpl;

    move-result-object v0

    return-object v0
.end method

.method public noteStateNotSaved()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 119
    return-void
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 111
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/FragmentManagerImpl;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public reportLoaderStart()V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->reportLoaderStart()V

    .line 370
    return-void
.end method

.method public restoreAllState(Landroid/os/Parcelable;Ljava/util/List;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p2, "nonConfigList":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/FragmentManagerImpl;->restoreAllState(Landroid/os/Parcelable;Ljava/util/List;)V

    .line 136
    return-void
.end method

.method public restoreLoaderNonConfig(Landroid/support/v4/util/SimpleArrayMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/LoaderManager;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 387
    .local p1, "loaderManagers":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<Ljava/lang/String;Landroid/support/v4/app/LoaderManager;>;"
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentHostCallback;->restoreLoaderNonConfig(Landroid/support/v4/util/SimpleArrayMap;)V

    .line 388
    return-void
.end method

.method public retainLoaderNonConfig()Landroid/support/v4/util/SimpleArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/LoaderManager;",
            ">;"
        }
    .end annotation

    .prologue
    .line 377
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->retainLoaderNonConfig()Landroid/support/v4/util/SimpleArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public retainNonConfig()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->retainNonConfig()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public saveAllState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->saveAllState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method
