.class public Lcom/google/android/gms/ads/purchase/InAppPurchaseActivity;
.super Landroid/app/Activity;


# static fields
.field public static final CLASS_NAME:Ljava/lang/String; = "com.google.android.gms.ads.purchase.InAppPurchaseActivity"

.field public static final SIMPLE_CLASS_NAME:Ljava/lang/String; = "InAppPurchaseActivity"


# instance fields
.field private zzKR:Lcom/google/android/gms/internal/zzft;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/purchase/InAppPurchaseActivity;->zzKR:Lcom/google/android/gms/internal/zzft;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/purchase/InAppPurchaseActivity;->zzKR:Lcom/google/android/gms/internal/zzft;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzft;->onActivityResult(IILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not forward onActivityResult to in-app purchase manager:"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/google/android/gms/internal/zzfy;->zze(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzft;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/purchase/InAppPurchaseActivity;->zzKR:Lcom/google/android/gms/internal/zzft;

    iget-object v0, p0, Lcom/google/android/gms/ads/purchase/InAppPurchaseActivity;->zzKR:Lcom/google/android/gms/internal/zzft;

    if-nez v0, :cond_0

    const-string v0, "Could not create in-app purchase manager."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaH(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/purchase/InAppPurchaseActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/purchase/InAppPurchaseActivity;->zzKR:Lcom/google/android/gms/internal/zzft;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzft;->onCreate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not forward onCreate to in-app purchase manager:"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/purchase/InAppPurchaseActivity;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/purchase/InAppPurchaseActivity;->zzKR:Lcom/google/android/gms/internal/zzft;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/purchase/InAppPurchaseActivity;->zzKR:Lcom/google/android/gms/internal/zzft;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzft;->onDestroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not forward onDestroy to in-app purchase manager:"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
