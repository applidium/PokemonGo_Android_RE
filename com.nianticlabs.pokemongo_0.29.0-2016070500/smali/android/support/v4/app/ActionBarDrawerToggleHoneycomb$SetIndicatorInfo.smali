.class Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggleHoneycomb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetIndicatorInfo"
.end annotation


# instance fields
.field public setHomeActionContentDescription:Ljava/lang/reflect/Method;

.field public setHomeAsUpIndicator:Ljava/lang/reflect/Method;

.field public upIndicatorView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 14
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const v13, 0x102002c

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    :try_start_0
    const-class v6, Landroid/app/ActionBar;

    const-string v7, "setHomeAsUpIndicator"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/graphics/drawable/Drawable;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->setHomeAsUpIndicator:Ljava/lang/reflect/Method;

    .line 108
    const-class v6, Landroid/app/ActionBar;

    const-string v7, "setHomeActionContentDescription"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->setHomeActionContentDescription:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v6

    .line 117
    invoke-virtual {p1, v13}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 118
    .local v2, "home":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 123
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 124
    .local v3, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 125
    .local v0, "childCount":I
    const/4 v6, 0x2

    if-ne v0, v6, :cond_0

    .line 130
    invoke-virtual {v3, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 131
    .local v1, "first":Landroid/view/View;
    invoke-virtual {v3, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 132
    .local v4, "second":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v6

    if-ne v6, v13, :cond_1

    move-object v5, v4

    .line 134
    .local v5, "up":Landroid/view/View;
    :goto_1
    instance-of v6, v5, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    .line 136
    check-cast v5, Landroid/widget/ImageView;

    .end local v5    # "up":Landroid/view/View;
    iput-object v5, p0, Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->upIndicatorView:Landroid/widget/ImageView;

    goto :goto_0

    :cond_1
    move-object v5, v1

    .line 132
    goto :goto_1
.end method
