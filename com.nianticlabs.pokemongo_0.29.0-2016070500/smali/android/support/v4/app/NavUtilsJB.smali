.class Landroid/support/v4/app/NavUtilsJB;
.super Ljava/lang/Object;
.source "NavUtilsJB.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 25
    invoke-virtual {p0}, Landroid/app/Activity;->getParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getParentActivityName(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 37
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public static navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "upIntent"    # Landroid/content/Intent;

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Landroid/app/Activity;->navigateUpTo(Landroid/content/Intent;)Z

    .line 34
    return-void
.end method

.method public static shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "targetIntent"    # Landroid/content/Intent;

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Landroid/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
