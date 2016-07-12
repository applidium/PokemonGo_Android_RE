.class Lcom/google/vr/cardboard/UiUtils$InstallSettingsDialogFragment$1;
.super Ljava/lang/Object;
.source "UiUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/cardboard/UiUtils$InstallSettingsDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/cardboard/UiUtils$InstallSettingsDialogFragment;


# direct methods
.method constructor <init>(Lcom/google/vr/cardboard/UiUtils$InstallSettingsDialogFragment;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/vr/cardboard/UiUtils$InstallSettingsDialogFragment$1;->this$0:Lcom/google/vr/cardboard/UiUtils$InstallSettingsDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 106
    :try_start_0
    iget-object v1, p0, Lcom/google/vr/cardboard/UiUtils$InstallSettingsDialogFragment$1;->this$0:Lcom/google/vr/cardboard/UiUtils$InstallSettingsDialogFragment;

    invoke-virtual {v1}, Lcom/google/vr/cardboard/UiUtils$InstallSettingsDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "http://google.com/cardboard/cfg"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    iget-object v1, p0, Lcom/google/vr/cardboard/UiUtils$InstallSettingsDialogFragment$1;->this$0:Lcom/google/vr/cardboard/UiUtils$InstallSettingsDialogFragment;

    invoke-virtual {v1}, Lcom/google/vr/cardboard/UiUtils$InstallSettingsDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "NO_BROWSER_TEXT"

    invoke-static {v2}, Lcom/google/vr/cardboard/Strings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
