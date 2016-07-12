.class public final Lcom/google/android/gms/ads/internal/purchase/zzg;
.super Lcom/google/android/gms/internal/zzfv$zza;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field zzCD:Lcom/google/android/gms/ads/internal/purchase/zzb;

.field private zzCJ:Ljava/lang/String;

.field private zzCN:Lcom/google/android/gms/ads/internal/purchase/zzf;

.field private zzCT:Z

.field private zzCU:I

.field private zzCV:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZILandroid/content/Intent;Lcom/google/android/gms/ads/internal/purchase/zzf;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfv$zza;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->zzCT:Z

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->zzCJ:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->zzCU:I

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->zzCV:Landroid/content/Intent;

    iput-boolean p3, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->zzCT:Z

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->mContext:Landroid/content/Context;

    iput-object p6, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->zzCN:Lcom/google/android/gms/ads/internal/purchase/zzf;

    return-void
.end method


# virtual methods
.method public finishPurchase()V
    .locals 4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbF()Lcom/google/android/gms/ads/internal/purchase/zzi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->zzCV:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/purchase/zzi;->zzd(Landroid/content/Intent;)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->zzCU:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/ads/internal/purchase/zzb;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/purchase/zzb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->zzCD:Lcom/google/android/gms/ads/internal/purchase/zzb;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/gms/common/stats/zzb;->zzqh()Lcom/google/android/gms/common/stats/zzb;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, p0, v3}, Lcom/google/android/gms/common/stats/zzb;->zza(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->zzCJ:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseData()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->zzCV:Landroid/content/Intent;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->zzCU:I

    return v0
.end method

.method public isVerified()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->zzCT:Z

    return v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const-string v0, "In-app billing service connected."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaG(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->zzCD:Lcom/google/android/gms/ads/internal/purchase/zzb;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/internal/purchase/zzb;->zzN(Landroid/os/IBinder;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbF()Lcom/google/android/gms/ads/internal/purchase/zzi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->zzCV:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/purchase/zzi;->zze(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbF()Lcom/google/android/gms/ads/internal/purchase/zzi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/purchase/zzi;->zzap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->zzCD:Lcom/google/android/gms/ads/internal/purchase/zzb;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/ads/internal/purchase/zzb;->zzi(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/purchase/zzh;->zzw(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/purchase/zzh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->zzCN:Lcom/google/android/gms/ads/internal/purchase/zzf;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/purchase/zzh;->zza(Lcom/google/android/gms/ads/internal/purchase/zzf;)V

    :cond_1
    invoke-static {}, Lcom/google/android/gms/common/stats/zzb;->zzqh()Lcom/google/android/gms/common/stats/zzb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/common/stats/zzb;->zza(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->zzCD:Lcom/google/android/gms/ads/internal/purchase/zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/purchase/zzb;->destroy()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const-string v0, "In-app billing service disconnected."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaG(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/zzg;->zzCD:Lcom/google/android/gms/ads/internal/purchase/zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/purchase/zzb;->destroy()V

    return-void
.end method
