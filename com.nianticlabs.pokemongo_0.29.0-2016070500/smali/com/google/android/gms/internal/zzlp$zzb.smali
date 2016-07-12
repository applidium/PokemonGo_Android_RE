.class Lcom/google/android/gms/internal/zzlp$zzb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzlp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zzb"
.end annotation


# instance fields
.field final synthetic zzacT:Lcom/google/android/gms/internal/zzlp;

.field private final zzacU:I

.field private final zzacV:Lcom/google/android/gms/common/ConnectionResult;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzlp;ILcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlp$zzb;->zzacT:Lcom/google/android/gms/internal/zzlp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/zzlp$zzb;->zzacU:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzlp$zzb;->zzacV:Lcom/google/android/gms/common/ConnectionResult;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp$zzb;->zzacT:Lcom/google/android/gms/internal/zzlp;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlp;->zza(Lcom/google/android/gms/internal/zzlp;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp$zzb;->zzacT:Lcom/google/android/gms/internal/zzlp;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlp;->zzb(Lcom/google/android/gms/internal/zzlp;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp$zzb;->zzacT:Lcom/google/android/gms/internal/zzlp;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzlp;->zza(Lcom/google/android/gms/internal/zzlp;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp$zzb;->zzacT:Lcom/google/android/gms/internal/zzlp;

    iget v1, p0, Lcom/google/android/gms/internal/zzlp$zzb;->zzacU:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzlp;->zza(Lcom/google/android/gms/internal/zzlp;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp$zzb;->zzacT:Lcom/google/android/gms/internal/zzlp;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp$zzb;->zzacV:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzlp;->zza(Lcom/google/android/gms/internal/zzlp;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp$zzb;->zzacV:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp$zzb;->zzacT:Lcom/google/android/gms/internal/zzlp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzlp;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp$zzb;->zzacT:Lcom/google/android/gms/internal/zzlp;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp$zzb;->zzacV:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlp$zzb;->zzacT:Lcom/google/android/gms/internal/zzlp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzlp;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/common/ConnectionResult;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp$zzb;->zzacT:Lcom/google/android/gms/internal/zzlp;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlp;->zzc(Lcom/google/android/gms/internal/zzlp;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/zzlp;->zzol()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp$zzb;->zzacV:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isUserResolvableError(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp$zzb;->zzacV:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp$zzb;->zzacT:Lcom/google/android/gms/internal/zzlp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzlp;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlp$zzb;->zzacT:Lcom/google/android/gms/internal/zzlp;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/android/gms/internal/zzlp$zzb;->zzacT:Lcom/google/android/gms/internal/zzlp;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->showErrorDialogFragment(ILandroid/app/Activity;Landroid/support/v4/app/Fragment;ILandroid/content/DialogInterface$OnCancelListener;)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp$zzb;->zzacV:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_4

    invoke-static {}, Lcom/google/android/gms/internal/zzlp;->zzol()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp$zzb;->zzacT:Lcom/google/android/gms/internal/zzlp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzlp;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlp$zzb;->zzacT:Lcom/google/android/gms/internal/zzlp;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->zza(Landroid/app/Activity;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp$zzb;->zzacT:Lcom/google/android/gms/internal/zzlp;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlp$zzb;->zzacT:Lcom/google/android/gms/internal/zzlp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzlp;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/zzlp$zzb$1;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/zzlp$zzb$1;-><init>(Lcom/google/android/gms/internal/zzlp$zzb;Landroid/app/Dialog;)V

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzll;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzll;)Lcom/google/android/gms/internal/zzll;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzlp;->zza(Lcom/google/android/gms/internal/zzlp;Lcom/google/android/gms/internal/zzll;)Lcom/google/android/gms/internal/zzll;

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp$zzb;->zzacT:Lcom/google/android/gms/internal/zzlp;

    iget v1, p0, Lcom/google/android/gms/internal/zzlp$zzb;->zzacU:I

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlp$zzb;->zzacV:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzlp;->zza(Lcom/google/android/gms/internal/zzlp;ILcom/google/android/gms/common/ConnectionResult;)V

    goto/16 :goto_0
.end method
