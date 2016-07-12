.class public Lcom/google/android/gms/common/SupportErrorDialogFragment;
.super Landroid/support/v4/app/DialogFragment;


# instance fields
.field private mDialog:Landroid/app/Dialog;

.field private zzaaa:Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/SupportErrorDialogFragment;->mDialog:Landroid/app/Dialog;

    iput-object v0, p0, Lcom/google/android/gms/common/SupportErrorDialogFragment;->zzaaa:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method public static newInstance(Landroid/app/Dialog;)Lcom/google/android/gms/common/SupportErrorDialogFragment;
    .locals 1
    .param p0, "dialog"    # Landroid/app/Dialog;

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/common/SupportErrorDialogFragment;->newInstance(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lcom/google/android/gms/common/SupportErrorDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lcom/google/android/gms/common/SupportErrorDialogFragment;
    .locals 3
    .param p0, "dialog"    # Landroid/app/Dialog;
    .param p1, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    const/4 v2, 0x0

    new-instance v1, Lcom/google/android/gms/common/SupportErrorDialogFragment;

    invoke-direct {v1}, Lcom/google/android/gms/common/SupportErrorDialogFragment;-><init>()V

    const-string v0, "Cannot display null dialog"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iput-object v0, v1, Lcom/google/android/gms/common/SupportErrorDialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_0

    iput-object p1, v1, Lcom/google/android/gms/common/SupportErrorDialogFragment;->zzaaa:Landroid/content/DialogInterface$OnCancelListener;

    :cond_0
    return-object v1
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/SupportErrorDialogFragment;->zzaaa:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/SupportErrorDialogFragment;->zzaaa:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/SupportErrorDialogFragment;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/SupportErrorDialogFragment;->setShowsDialog(Z)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/SupportErrorDialogFragment;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "manager"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
