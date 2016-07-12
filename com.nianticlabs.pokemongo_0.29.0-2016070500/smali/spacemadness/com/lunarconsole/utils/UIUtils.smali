.class public Lspacemadness/com/lunarconsole/utils/UIUtils;
.super Ljava/lang/Object;
.source "UIUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dpToPx(Landroid/content/Context;F)F
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dp"    # F

    .prologue
    .line 68
    invoke-static {p0}, Lspacemadness/com/lunarconsole/utils/UIUtils;->getScreenDensity(Landroid/content/Context;)F

    move-result v0

    mul-float/2addr v0, p1

    return v0
.end method

.method public static getRootLayout(Landroid/app/Activity;)Landroid/widget/FrameLayout;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 47
    invoke-static {p0}, Lspacemadness/com/lunarconsole/utils/UIUtils;->getRootViewGroup(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 48
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    instance-of v1, v0, Landroid/widget/FrameLayout;

    invoke-static {v1}, Lspacemadness/com/lunarconsole/debug/Assert;->IsTrue(Z)V

    .line 50
    const-class v1, Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/utils/ObjectUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    return-object v1
.end method

.method public static getRootViewGroup(Landroid/app/Activity;)Landroid/view/ViewGroup;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 55
    if-nez p0, :cond_0

    .line 57
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Activity is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 61
    .local v0, "rootView":Landroid/view/View;
    instance-of v1, v0, Landroid/view/ViewGroup;

    invoke-static {v1}, Lspacemadness/com/lunarconsole/debug/Assert;->IsTrue(Z)V

    .line 63
    const-class v1, Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/utils/ObjectUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    return-object v1
.end method

.method private static getScreenDensity(Landroid/content/Context;)F
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public static pxToDp(Landroid/content/Context;F)F
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "px"    # F

    .prologue
    .line 73
    invoke-static {p0}, Lspacemadness/com/lunarconsole/utils/UIUtils;->getScreenDensity(Landroid/content/Context;)F

    move-result v0

    div-float v0, p1, v0

    return v0
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-static {p0}, Lspacemadness/com/lunarconsole/debug/Assert;->IsNotNull(Ljava/lang/Object;)V

    .line 38
    if-eqz p0, :cond_0

    .line 40
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 42
    :cond_0
    return-void
.end method
