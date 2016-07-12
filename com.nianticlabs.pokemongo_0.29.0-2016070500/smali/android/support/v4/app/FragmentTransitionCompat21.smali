.class Landroid/support/v4/app/FragmentTransitionCompat21;
.super Ljava/lang/Object;
.source "FragmentTransitionCompat21.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;,
        Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    return-void
.end method

.method static synthetic access$000(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Ljava/util/ArrayList;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 31
    invoke-static {p0, p1}, Landroid/support/v4/app/FragmentTransitionCompat21;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Landroid/view/View;

    .prologue
    .line 31
    invoke-static {p0}, Landroid/support/v4/app/FragmentTransitionCompat21;->getBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 8
    .param p0, "transitionObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 416
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v6, p0

    check-cast v6, Landroid/transition/Transition;

    .line 417
    .local v6, "transition":Landroid/transition/Transition;
    instance-of v7, v6, Landroid/transition/TransitionSet;

    if-eqz v7, :cond_0

    move-object v4, v6

    .line 418
    check-cast v4, Landroid/transition/TransitionSet;

    .line 419
    .local v4, "set":Landroid/transition/TransitionSet;
    invoke-virtual {v4}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v2

    .line 420
    .local v2, "numTransitions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 421
    invoke-virtual {v4, v1}, Landroid/transition/TransitionSet;->getTransitionAt(I)Landroid/transition/Transition;

    move-result-object v0

    .line 422
    .local v0, "child":Landroid/transition/Transition;
    invoke-static {v0, p1}, Landroid/support/v4/app/FragmentTransitionCompat21;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 420
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 424
    .end local v0    # "child":Landroid/transition/Transition;
    .end local v1    # "i":I
    .end local v2    # "numTransitions":I
    .end local v4    # "set":Landroid/transition/TransitionSet;
    :cond_0
    invoke-static {v6}, Landroid/support/v4/app/FragmentTransitionCompat21;->hasSimpleTarget(Landroid/transition/Transition;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 425
    invoke-virtual {v6}, Landroid/transition/Transition;->getTargets()Ljava/util/List;

    move-result-object v5

    .line 426
    .local v5, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-static {v5}, Landroid/support/v4/app/FragmentTransitionCompat21;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 428
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 429
    .local v3, "numViews":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 430
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 429
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 434
    .end local v1    # "i":I
    .end local v3    # "numViews":I
    .end local v5    # "targets":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    :cond_1
    return-void
.end method

.method public static addTransitionTargets(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;Landroid/view/View;Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;Ljava/util/ArrayList;)V
    .locals 11
    .param p0, "enterTransitionObject"    # Ljava/lang/Object;
    .param p1, "sharedElementTransitionObject"    # Ljava/lang/Object;
    .param p2, "container"    # Landroid/view/View;
    .param p3, "inFragment"    # Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;
    .param p4, "nonExistentView"    # Landroid/view/View;
    .param p5, "epicenterView"    # Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;",
            "Landroid/view/View;",
            "Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p6, "nameOverrides":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p7, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p8, "namedViews":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;"
    .local p9, "renamedViews":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;"
    .local p10, "sharedElementTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez p0, :cond_0

    if-eqz p1, :cond_4

    :cond_0
    move-object v4, p0

    .line 113
    check-cast v4, Landroid/transition/Transition;

    .line 114
    .local v4, "enterTransition":Landroid/transition/Transition;
    if-eqz v4, :cond_1

    .line 115
    invoke-virtual {v4, p4}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 117
    :cond_1
    if-eqz p1, :cond_2

    .line 118
    move-object/from16 v0, p8

    move-object/from16 v1, p10

    invoke-static {p1, p4, v0, v1}, Landroid/support/v4/app/FragmentTransitionCompat21;->setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/Map;Ljava/util/ArrayList;)V

    .line 122
    :cond_2
    if-eqz p3, :cond_3

    .line 123
    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v10

    new-instance v2, Landroid/support/v4/app/FragmentTransitionCompat21$2;

    move-object v3, p2

    move-object v5, p4

    move-object v6, p3

    move-object/from16 v7, p6

    move-object/from16 v8, p9

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Landroid/support/v4/app/FragmentTransitionCompat21$2;-><init>(Landroid/view/View;Landroid/transition/Transition;Landroid/view/View;Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;Ljava/util/Map;Ljava/util/Map;Ljava/util/ArrayList;)V

    invoke-virtual {v10, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 155
    :cond_3
    move-object/from16 v0, p5

    invoke-static {v4, v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->setSharedElementEpicenter(Landroid/transition/Transition;Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;)V

    .line 157
    .end local v4    # "enterTransition":Landroid/transition/Transition;
    :cond_4
    return-void
.end method

.method public static beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .locals 1
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p1, "transitionObject"    # Ljava/lang/Object;

    .prologue
    .line 66
    move-object v0, p1

    check-cast v0, Landroid/transition/Transition;

    .line 67
    .local v0, "transition":Landroid/transition/Transition;
    invoke-static {p0, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 68
    return-void
.end method

.method private static bfsAddViewChildren(Ljava/util/List;Landroid/view/View;)V
    .locals 8
    .param p1, "startView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 246
    .local p0, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    .line 247
    .local v4, "startIndex":I
    invoke-static {p0, p1, v4}, Landroid/support/v4/app/FragmentTransitionCompat21;->containedBeforeIndex(Ljava/util/List;Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 264
    :cond_0
    return-void

    .line 250
    :cond_1
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    move v3, v4

    .local v3, "index":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 252
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 253
    .local v5, "view":Landroid/view/View;
    instance-of v7, v5, Landroid/view/ViewGroup;

    if-eqz v7, :cond_3

    move-object v6, v5

    .line 254
    check-cast v6, Landroid/view/ViewGroup;

    .line 255
    .local v6, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 256
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "childIndex":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 257
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 258
    .local v0, "child":Landroid/view/View;
    invoke-static {p0, v0, v4}, Landroid/support/v4/app/FragmentTransitionCompat21;->containedBeforeIndex(Ljava/util/List;Landroid/view/View;I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 259
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 251
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childCount":I
    .end local v2    # "childIndex":I
    .end local v6    # "viewGroup":Landroid/view/ViewGroup;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static captureExitingViews(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;Landroid/view/View;)Ljava/lang/Object;
    .locals 1
    .param p0, "exitTransition"    # Ljava/lang/Object;
    .param p1, "root"    # Landroid/view/View;
    .param p4, "nonExistentView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 45
    .local p2, "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p3, "namedViews":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;"
    if-eqz p0, :cond_1

    .line 46
    invoke-static {p2, p1}, Landroid/support/v4/app/FragmentTransitionCompat21;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 47
    if-eqz p3, :cond_0

    .line 48
    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 50
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    const/4 p0, 0x0

    .line 57
    .end local p0    # "exitTransition":Ljava/lang/Object;
    :cond_1
    :goto_0
    return-object p0

    .line 53
    .restart local p0    # "exitTransition":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, p0

    .line 54
    check-cast v0, Landroid/transition/Transition;

    invoke-static {v0, p2}, Landroid/support/v4/app/FragmentTransitionCompat21;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private static captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 306
    .local p0, "transitioningViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 307
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    move-object v3, p1

    .line 308
    check-cast v3, Landroid/view/ViewGroup;

    .line 309
    .local v3, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 310
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    .end local v3    # "viewGroup":Landroid/view/ViewGroup;
    :cond_0
    :goto_0
    return-void

    .line 312
    .restart local v3    # "viewGroup":Landroid/view/ViewGroup;
    :cond_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 313
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 314
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 315
    .local v0, "child":Landroid/view/View;
    invoke-static {p0, v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 313
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 319
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "viewGroup":Landroid/view/ViewGroup;
    :cond_2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static cleanupTransitions(Landroid/view/View;Landroid/view/View;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 13
    .param p0, "sceneRoot"    # Landroid/view/View;
    .param p1, "nonExistentView"    # Landroid/view/View;
    .param p2, "enterTransitionObject"    # Ljava/lang/Object;
    .param p4, "exitTransitionObject"    # Ljava/lang/Object;
    .param p6, "sharedElementTransitionObject"    # Ljava/lang/Object;
    .param p8, "overallTransitionObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 347
    .local p3, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p5, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p7, "sharedElementTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p9, "hiddenViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p10, "renamedViews":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;"
    move-object v2, p2

    check-cast v2, Landroid/transition/Transition;

    .local v2, "enterTransition":Landroid/transition/Transition;
    move-object/from16 v4, p4

    .line 348
    check-cast v4, Landroid/transition/Transition;

    .local v4, "exitTransition":Landroid/transition/Transition;
    move-object/from16 v6, p6

    .line 349
    check-cast v6, Landroid/transition/Transition;

    .local v6, "sharedElementTransition":Landroid/transition/Transition;
    move-object/from16 v10, p8

    .line 350
    check-cast v10, Landroid/transition/Transition;

    .line 351
    .local v10, "overallTransition":Landroid/transition/Transition;
    if-eqz v10, :cond_0

    .line 352
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v12

    new-instance v0, Landroid/support/v4/app/FragmentTransitionCompat21$4;

    move-object v1, p0

    move-object/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p10

    move-object/from16 v9, p9

    move-object v11, p1

    invoke-direct/range {v0 .. v11}, Landroid/support/v4/app/FragmentTransitionCompat21$4;-><init>(Landroid/view/View;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/ArrayList;Landroid/transition/Transition;Landroid/view/View;)V

    invoke-virtual {v12, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 379
    :cond_0
    return-void
.end method

.method public static cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "transition"    # Ljava/lang/Object;

    .prologue
    .line 37
    if-eqz p0, :cond_0

    .line 38
    check-cast p0, Landroid/transition/Transition;

    .end local p0    # "transition":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object p0

    .line 40
    :cond_0
    return-object p0
.end method

.method private static containedBeforeIndex(Ljava/util/List;Landroid/view/View;I)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "maxIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "I)Z"
        }
    .end annotation

    .prologue
    .line 271
    .local p0, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 272
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 273
    const/4 v1, 0x1

    .line 276
    :goto_1
    return v1

    .line 271
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 276
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static excludeTarget(Ljava/lang/Object;Landroid/view/View;Z)V
    .locals 1
    .param p0, "transitionObject"    # Ljava/lang/Object;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "exclude"    # Z

    .prologue
    .line 61
    move-object v0, p0

    check-cast v0, Landroid/transition/Transition;

    .line 62
    .local v0, "transition":Landroid/transition/Transition;
    invoke-virtual {v0, p1, p2}, Landroid/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    .line 63
    return-void
.end method

.method public static findNamedViews(Ljava/util/Map;Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 325
    .local p0, "namedViews":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    .line 326
    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v3

    .line 327
    .local v3, "transitionName":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 328
    invoke-interface {p0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    :cond_0
    instance-of v5, p1, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1

    move-object v4, p1

    .line 331
    check-cast v4, Landroid/view/ViewGroup;

    .line 332
    .local v4, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 333
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 334
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 335
    .local v0, "child":Landroid/view/View;
    invoke-static {p0, v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    .line 333
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 339
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "transitionName":Ljava/lang/String;
    .end local v4    # "viewGroup":Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method

.method private static getBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 297
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 298
    .local v0, "epicenter":Landroid/graphics/Rect;
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 299
    .local v1, "loc":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 301
    aget v2, v1, v4

    aget v3, v1, v6

    aget v4, v1, v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    aget v5, v1, v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 302
    return-object v0
.end method

.method public static getTransitionName(Landroid/view/View;)Ljava/lang/String;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static hasSimpleTarget(Landroid/transition/Transition;)Z
    .locals 1
    .param p0, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 437
    invoke-virtual {p0}, Landroid/transition/Transition;->getTargetIds()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/transition/Transition;->getTargetNames()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/transition/Transition;->getTargetTypes()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNullOrEmpty(Ljava/util/List;)Z
    .locals 1
    .param p0, "list"    # Ljava/util/List;

    .prologue
    .line 443
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static mergeTransitions(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 10
    .param p0, "enterTransitionObject"    # Ljava/lang/Object;
    .param p1, "exitTransitionObject"    # Ljava/lang/Object;
    .param p2, "sharedElementTransitionObject"    # Ljava/lang/Object;
    .param p3, "allowOverlap"    # Z

    .prologue
    .line 162
    const/4 v2, 0x1

    .local v2, "overlap":Z
    move-object v0, p0

    .line 163
    check-cast v0, Landroid/transition/Transition;

    .local v0, "enterTransition":Landroid/transition/Transition;
    move-object v1, p1

    .line 164
    check-cast v1, Landroid/transition/Transition;

    .local v1, "exitTransition":Landroid/transition/Transition;
    move-object v3, p2

    .line 165
    check-cast v3, Landroid/transition/Transition;

    .line 167
    .local v3, "sharedElementTransition":Landroid/transition/Transition;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 168
    move v2, p3

    .line 176
    :cond_0
    if-eqz v2, :cond_4

    .line 178
    new-instance v7, Landroid/transition/TransitionSet;

    invoke-direct {v7}, Landroid/transition/TransitionSet;-><init>()V

    .line 179
    .local v7, "transitionSet":Landroid/transition/TransitionSet;
    if-eqz v0, :cond_1

    .line 180
    invoke-virtual {v7, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 182
    :cond_1
    if-eqz v1, :cond_2

    .line 183
    invoke-virtual {v7, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 185
    :cond_2
    if-eqz v3, :cond_3

    .line 186
    invoke-virtual {v7, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 188
    :cond_3
    move-object v6, v7

    .line 214
    .end local v7    # "transitionSet":Landroid/transition/TransitionSet;
    .local v6, "transition":Landroid/transition/Transition;
    :goto_0
    return-object v6

    .line 192
    .end local v6    # "transition":Landroid/transition/Transition;
    :cond_4
    const/4 v4, 0x0

    .line 193
    .local v4, "staggered":Landroid/transition/Transition;
    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    .line 194
    new-instance v8, Landroid/transition/TransitionSet;

    invoke-direct {v8}, Landroid/transition/TransitionSet;-><init>()V

    invoke-virtual {v8, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    move-result-object v4

    .line 203
    :cond_5
    :goto_1
    if-eqz v3, :cond_9

    .line 204
    new-instance v5, Landroid/transition/TransitionSet;

    invoke-direct {v5}, Landroid/transition/TransitionSet;-><init>()V

    .line 205
    .local v5, "together":Landroid/transition/TransitionSet;
    if-eqz v4, :cond_6

    .line 206
    invoke-virtual {v5, v4}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 208
    :cond_6
    invoke-virtual {v5, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 209
    move-object v6, v5

    .line 210
    .restart local v6    # "transition":Landroid/transition/Transition;
    goto :goto_0

    .line 198
    .end local v5    # "together":Landroid/transition/TransitionSet;
    .end local v6    # "transition":Landroid/transition/Transition;
    :cond_7
    if-eqz v1, :cond_8

    .line 199
    move-object v4, v1

    goto :goto_1

    .line 200
    :cond_8
    if-eqz v0, :cond_5

    .line 201
    move-object v4, v0

    goto :goto_1

    .line 211
    :cond_9
    move-object v6, v4

    .restart local v6    # "transition":Landroid/transition/Transition;
    goto :goto_0
.end method

.method public static removeTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 8
    .param p0, "transitionObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 387
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v5, p0

    check-cast v5, Landroid/transition/Transition;

    .line 388
    .local v5, "transition":Landroid/transition/Transition;
    instance-of v6, v5, Landroid/transition/TransitionSet;

    if-eqz v6, :cond_0

    move-object v3, v5

    .line 389
    check-cast v3, Landroid/transition/TransitionSet;

    .line 390
    .local v3, "set":Landroid/transition/TransitionSet;
    invoke-virtual {v3}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v2

    .line 391
    .local v2, "numTransitions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 392
    invoke-virtual {v3, v1}, Landroid/transition/TransitionSet;->getTransitionAt(I)Landroid/transition/Transition;

    move-result-object v0

    .line 393
    .local v0, "child":Landroid/transition/Transition;
    invoke-static {v0, p1}, Landroid/support/v4/app/FragmentTransitionCompat21;->removeTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 391
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 395
    .end local v0    # "child":Landroid/transition/Transition;
    .end local v1    # "i":I
    .end local v2    # "numTransitions":I
    .end local v3    # "set":Landroid/transition/TransitionSet;
    :cond_0
    invoke-static {v5}, Landroid/support/v4/app/FragmentTransitionCompat21;->hasSimpleTarget(Landroid/transition/Transition;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 396
    invoke-virtual {v5}, Landroid/transition/Transition;->getTargets()Ljava/util/List;

    move-result-object v4

    .line 397
    .local v4, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v6, v7, :cond_1

    invoke-interface {v4, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 400
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 401
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 400
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 405
    .end local v1    # "i":I
    .end local v4    # "targets":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    :cond_1
    return-void
.end method

.method public static setEpicenter(Ljava/lang/Object;Landroid/view/View;)V
    .locals 3
    .param p0, "transitionObject"    # Ljava/lang/Object;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 71
    move-object v1, p0

    check-cast v1, Landroid/transition/Transition;

    .line 72
    .local v1, "transition":Landroid/transition/Transition;
    invoke-static {p1}, Landroid/support/v4/app/FragmentTransitionCompat21;->getBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 74
    .local v0, "epicenter":Landroid/graphics/Rect;
    new-instance v2, Landroid/support/v4/app/FragmentTransitionCompat21$1;

    invoke-direct {v2, v0}, Landroid/support/v4/app/FragmentTransitionCompat21$1;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v2}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 80
    return-void
.end method

.method private static setSharedElementEpicenter(Landroid/transition/Transition;Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;)V
    .locals 1
    .param p0, "transition"    # Landroid/transition/Transition;
    .param p1, "epicenterView"    # Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;

    .prologue
    .line 281
    if-eqz p0, :cond_0

    .line 282
    new-instance v0, Landroid/support/v4/app/FragmentTransitionCompat21$3;

    invoke-direct {v0, p1}, Landroid/support/v4/app/FragmentTransitionCompat21$3;-><init>(Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;)V

    invoke-virtual {p0, v0}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 294
    :cond_0
    return-void
.end method

.method public static setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/Map;Ljava/util/ArrayList;)V
    .locals 6
    .param p0, "transitionObj"    # Ljava/lang/Object;
    .param p1, "nonExistentView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p2, "namedViews":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;"
    .local p3, "sharedElementTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v2, p0

    check-cast v2, Landroid/transition/TransitionSet;

    .line 227
    .local v2, "transition":Landroid/transition/TransitionSet;
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 228
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 230
    invoke-virtual {v2}, Landroid/transition/TransitionSet;->getTargets()Ljava/util/List;

    move-result-object v4

    .line 231
    .local v4, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 232
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 233
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 234
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 235
    .local v3, "view":Landroid/view/View;
    invoke-static {v4, v3}, Landroid/support/v4/app/FragmentTransitionCompat21;->bfsAddViewChildren(Ljava/util/List;Landroid/view/View;)V

    .line 233
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 237
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    invoke-static {v2, p3}, Landroid/support/v4/app/FragmentTransitionCompat21;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 239
    return-void
.end method

.method public static wrapSharedElementTransition(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "transitionObj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 83
    if-nez p0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    move-object v0, p0

    .line 86
    check-cast v0, Landroid/transition/Transition;

    .line 87
    .local v0, "transition":Landroid/transition/Transition;
    if-eqz v0, :cond_0

    .line 90
    new-instance v1, Landroid/transition/TransitionSet;

    invoke-direct {v1}, Landroid/transition/TransitionSet;-><init>()V

    .line 91
    .local v1, "transitionSet":Landroid/transition/TransitionSet;
    invoke-virtual {v1, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    goto :goto_0
.end method
