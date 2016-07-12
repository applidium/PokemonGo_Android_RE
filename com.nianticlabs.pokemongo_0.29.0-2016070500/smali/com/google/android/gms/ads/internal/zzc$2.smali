.class Lcom/google/android/gms/ads/internal/zzc$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzc;->zza(Lcom/google/android/gms/internal/zzhs$zza;Lcom/google/android/gms/internal/zzcg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzoB:Lcom/google/android/gms/internal/zzhs$zza;

.field final synthetic zzoC:Lcom/google/android/gms/ads/internal/zzc;

.field final synthetic zzoD:Lcom/google/android/gms/internal/zzcg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzc;Lcom/google/android/gms/internal/zzhs$zza;Lcom/google/android/gms/internal/zzcg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzc$2;->zzoC:Lcom/google/android/gms/ads/internal/zzc;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzc$2;->zzoB:Lcom/google/android/gms/internal/zzhs$zza;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzc$2;->zzoD:Lcom/google/android/gms/internal/zzcg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc$2;->zzoB:Lcom/google/android/gms/internal/zzhs$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhs$zza;->zzHD:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzET:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc$2;->zzoC:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzc;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqC:Lcom/google/android/gms/internal/zzck;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzc$2;->zzoB:Lcom/google/android/gms/internal/zzhs$zza;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzhs$zza;->zzHD:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzBF:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbv()Lcom/google/android/gms/internal/zzid;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzc$2;->zzoB:Lcom/google/android/gms/internal/zzhs$zza;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzhs$zza;->zzHD:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzBF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzid;->zzaz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/zzch;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzc$2;->zzoC:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzc$2;->zzoB:Lcom/google/android/gms/internal/zzhs$zza;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzhs$zza;->zzHD:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->body:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/gms/internal/zzch;-><init>(Lcom/google/android/gms/ads/internal/zzg;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc$2;->zzoC:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzc;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    const/4 v2, 0x1

    iput v2, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqH:I

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc$2;->zzoC:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzc;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqC:Lcom/google/android/gms/internal/zzck;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzck;->zza(Lcom/google/android/gms/internal/zzcj;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call the onCustomRenderedAdLoadedListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    new-instance v0, Lcom/google/android/gms/ads/internal/zze;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/zze;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzc$2;->zzoC:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzc$2;->zzoB:Lcom/google/android/gms/internal/zzhs$zza;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/ads/internal/zzc;->zza(Lcom/google/android/gms/internal/zzhs$zza;Lcom/google/android/gms/ads/internal/zze;)Lcom/google/android/gms/internal/zziz;

    move-result-object v5

    new-instance v1, Lcom/google/android/gms/ads/internal/zze$zzb;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzc$2;->zzoB:Lcom/google/android/gms/internal/zzhs$zza;

    invoke-direct {v1, v2, v5}, Lcom/google/android/gms/ads/internal/zze$zzb;-><init>(Lcom/google/android/gms/internal/zzhs$zza;Lcom/google/android/gms/internal/zziz;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zze;->zza(Lcom/google/android/gms/ads/internal/zze$zza;)V

    new-instance v1, Lcom/google/android/gms/ads/internal/zzc$2$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/ads/internal/zzc$2$1;-><init>(Lcom/google/android/gms/ads/internal/zzc$2;Lcom/google/android/gms/ads/internal/zze;)V

    invoke-interface {v5, v1}, Lcom/google/android/gms/internal/zziz;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Lcom/google/android/gms/ads/internal/zzc$2$2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/ads/internal/zzc$2$2;-><init>(Lcom/google/android/gms/ads/internal/zzc$2;Lcom/google/android/gms/ads/internal/zze;)V

    invoke-interface {v5, v1}, Lcom/google/android/gms/internal/zziz;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc$2;->zzoC:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzc;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/ads/internal/zzq;->zzqH:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc$2;->zzoC:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v9, v0, Lcom/google/android/gms/ads/internal/zzc;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbu()Lcom/google/android/gms/internal/zzgg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzc$2;->zzoC:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzc;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzc$2;->zzoC:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzc$2;->zzoB:Lcom/google/android/gms/internal/zzhs$zza;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzc$2;->zzoC:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzc;->zzot:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzq;->zzqi:Lcom/google/android/gms/internal/zzan;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/zzc$2;->zzoC:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/zzc;->zzox:Lcom/google/android/gms/internal/zzem;

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/zzc$2;->zzoC:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v8, p0, Lcom/google/android/gms/ads/internal/zzc$2;->zzoD:Lcom/google/android/gms/internal/zzcg;

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/internal/zzgg;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/zzhs$zza;Lcom/google/android/gms/internal/zzan;Lcom/google/android/gms/internal/zziz;Lcom/google/android/gms/internal/zzem;Lcom/google/android/gms/internal/zzgg$zza;Lcom/google/android/gms/internal/zzcg;)Lcom/google/android/gms/internal/zzgh;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gms/ads/internal/zzq;->zzqm:Lcom/google/android/gms/internal/zzgh;

    goto :goto_0
.end method
