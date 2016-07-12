.class public Lcom/google/vr/cardboard/UiUtils$InstallSettingsDialogFragment;
.super Landroid/app/DialogFragment;
.source "UiUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/cardboard/UiUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstallSettingsDialogFragment"
.end annotation


# instance fields
.field private final listener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 102
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 103
    new-instance v0, Lcom/google/vr/cardboard/UiUtils$InstallSettingsDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/google/vr/cardboard/UiUtils$InstallSettingsDialogFragment$1;-><init>(Lcom/google/vr/cardboard/UiUtils$InstallSettingsDialogFragment;)V

    iput-object v0, p0, Lcom/google/vr/cardboard/UiUtils$InstallSettingsDialogFragment;->listener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 116
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/vr/cardboard/UiUtils$InstallSettingsDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 117
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v1, "DIALOG_TITLE"

    invoke-static {v1}, Lcom/google/vr/cardboard/Strings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "DIALOG_MESSAGE_NO_CARDBOARD"

    invoke-static {v2}, Lcom/google/vr/cardboard/Strings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "GO_TO_PLAYSTORE_BUTTON"

    invoke-static {v2}, Lcom/google/vr/cardboard/Strings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/vr/cardboard/UiUtils$InstallSettingsDialogFragment;->listener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "CANCEL_BUTTON"

    invoke-static {v2}, Lcom/google/vr/cardboard/Strings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 121
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
