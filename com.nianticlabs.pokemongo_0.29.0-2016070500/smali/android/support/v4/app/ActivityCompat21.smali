.class Landroid/support/v4/app/ActivityCompat21;
.super Ljava/lang/Object;
.source "ActivityCompat21.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/ActivityCompat21$SharedElementCallbackImpl;,
        Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method

.method private static createCallback(Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;)Landroid/app/SharedElementCallback;
    .locals 1
    .param p0, "callback"    # Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;

    .prologue
    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, "newListener":Landroid/app/SharedElementCallback;
    if-eqz p0, :cond_0

    .line 75
    new-instance v0, Landroid/support/v4/app/ActivityCompat21$SharedElementCallbackImpl;

    .end local v0    # "newListener":Landroid/app/SharedElementCallback;
    invoke-direct {v0, p0}, Landroid/support/v4/app/ActivityCompat21$SharedElementCallbackImpl;-><init>(Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;)V

    .line 77
    .restart local v0    # "newListener":Landroid/app/SharedElementCallback;
    :cond_0
    return-object v0
.end method

.method public static finishAfterTransition(Landroid/app/Activity;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 35
    invoke-virtual {p0}, Landroid/app/Activity;->finishAfterTransition()V

    .line 36
    return-void
.end method

.method public static postponeEnterTransition(Landroid/app/Activity;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->postponeEnterTransition()V

    .line 50
    return-void
.end method

.method public static setEnterSharedElementCallback(Landroid/app/Activity;Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "callback"    # Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;

    .prologue
    .line 40
    invoke-static {p1}, Landroid/support/v4/app/ActivityCompat21;->createCallback(Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;)Landroid/app/SharedElementCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V

    .line 41
    return-void
.end method

.method public static setExitSharedElementCallback(Landroid/app/Activity;Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "callback"    # Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;

    .prologue
    .line 45
    invoke-static {p1}, Landroid/support/v4/app/ActivityCompat21;->createCallback(Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;)Landroid/app/SharedElementCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V

    .line 46
    return-void
.end method

.method public static startPostponedEnterTransition(Landroid/app/Activity;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->startPostponedEnterTransition()V

    .line 54
    return-void
.end method
