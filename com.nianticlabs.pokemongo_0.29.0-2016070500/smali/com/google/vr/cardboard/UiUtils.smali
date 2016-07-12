.class public Lcom/google/vr/cardboard/UiUtils;
.super Ljava/lang/Object;
.source "UiUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/cardboard/UiUtils$ConfigureSettingsDialogFragment;,
        Lcom/google/vr/cardboard/UiUtils$InstallSettingsDialogFragment;
    }
.end annotation


# static fields
.field private static final CARDBOARD_CONFIGURE_ACTION:Ljava/lang/String; = "com.google.vrtoolkit.cardboard.CONFIGURE"

.field private static final CARDBOARD_WEBSITE:Ljava/lang/String; = "http://google.com/cardboard/cfg"

.field private static final INTENT_KEY:Ljava/lang/String; = "intent"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-static {p0}, Lcom/google/vr/cardboard/UiUtils;->showInstallDialog(Landroid/content/Context;)V

    return-void
.end method

.method static launchOrInstallCardboard(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/vr/cardboard/UiUtils;->launchOrInstallCardboard(Landroid/content/Context;Z)V

    .line 76
    return-void
.end method

.method public static launchOrInstallCardboard(Landroid/content/Context;Z)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    const/4 v10, 0x0

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 37
    .local v5, "pm":Landroid/content/pm/PackageManager;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 38
    .local v7, "settingsIntent":Landroid/content/Intent;
    const-string v8, "com.google.vrtoolkit.cardboard.CONFIGURE"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    invoke-virtual {v5, v7, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 42
    .local v6, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v3, "intentsToGoogleCardboard":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 44
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    iget-object v8, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 45
    .local v4, "pkgName":Ljava/lang/String;
    const-string v8, "com.google."

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 46
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 47
    .local v2, "intent":Landroid/content/Intent;
    iget-object v8, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v4, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 52
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "pkgName":Ljava/lang/String;
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 55
    invoke-static {p0}, Lcom/google/vr/cardboard/UiUtils;->showInstallDialog(Landroid/content/Context;)V

    .line 72
    :goto_1
    return-void

    .line 62
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    move-object v2, v8

    .line 64
    .restart local v2    # "intent":Landroid/content/Intent;
    :goto_2
    if-eqz p1, :cond_4

    .line 66
    invoke-static {p0, v2}, Lcom/google/vr/cardboard/UiUtils;->showConfigureDialog(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    move-object v2, v7

    .line 62
    goto :goto_2

    .line 69
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private static showConfigureDialog(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 84
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 85
    .local v2, "fragmentManager":Landroid/app/FragmentManager;
    new-instance v1, Lcom/google/vr/cardboard/UiUtils$ConfigureSettingsDialogFragment;

    invoke-direct {v1}, Lcom/google/vr/cardboard/UiUtils$ConfigureSettingsDialogFragment;-><init>()V

    .line 86
    .local v1, "dialog":Landroid/app/DialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 87
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "intent"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 88
    invoke-virtual {v1, v0}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 89
    const-string v3, "ConfigureCardboardDialog"

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method private static showInstallDialog(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 80
    .local v0, "fragmentManager":Landroid/app/FragmentManager;
    new-instance v1, Lcom/google/vr/cardboard/UiUtils$InstallSettingsDialogFragment;

    invoke-direct {v1}, Lcom/google/vr/cardboard/UiUtils$InstallSettingsDialogFragment;-><init>()V

    const-string v2, "InstallCardboardDialog"

    invoke-virtual {v1, v0, v2}, Lcom/google/vr/cardboard/UiUtils$InstallSettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 81
    return-void
.end method
