.class final Lcom/google/android/gms/internal/zzgt$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzgt;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzdz;Lcom/google/android/gms/internal/zzbr;Lcom/google/android/gms/internal/zzgs;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic zzFE:Lcom/google/android/gms/internal/zzgv;

.field final synthetic zzFF:Lcom/google/android/gms/internal/zzce;

.field final synthetic zzFG:Ljava/lang/String;

.field final synthetic zzFJ:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

.field final synthetic zzFK:Lcom/google/android/gms/internal/zzbr;

.field final synthetic zzoD:Lcom/google/android/gms/internal/zzcg;

.field final synthetic zzry:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/internal/zzgv;Lcom/google/android/gms/internal/zzcg;Lcom/google/android/gms/internal/zzce;Ljava/lang/String;Lcom/google/android/gms/internal/zzbr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgt$2;->zzry:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgt$2;->zzFJ:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzgt$2;->zzFE:Lcom/google/android/gms/internal/zzgv;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzgt$2;->zzoD:Lcom/google/android/gms/internal/zzcg;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzgt$2;->zzFF:Lcom/google/android/gms/internal/zzce;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzgt$2;->zzFG:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzgt$2;->zzFK:Lcom/google/android/gms/internal/zzbr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbw()Lcom/google/android/gms/internal/zzjb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgt$2;->zzry:Landroid/content/Context;

    new-instance v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-direct {v2}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;-><init>()V

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/zzgt$2;->zzFJ:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v6, v4, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzqj:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/zzjb;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZLcom/google/android/gms/internal/zzan;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/internal/zziz;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzby()Lcom/google/android/gms/internal/zzhu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzhu;->zzgu()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v7}, Lcom/google/android/gms/internal/zziz;->clearCache(Z)V

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/zziz;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/webkit/WebView;->setWillNotDraw(Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgt$2;->zzFE:Lcom/google/android/gms/internal/zzgv;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzgv;->zze(Lcom/google/android/gms/internal/zziz;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgt$2;->zzoD:Lcom/google/android/gms/internal/zzcg;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgt$2;->zzFF:Lcom/google/android/gms/internal/zzce;

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "rwc"

    aput-object v5, v4, v3

    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/internal/zzcg;->zza(Lcom/google/android/gms/internal/zzce;[Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgt$2;->zzoD:Lcom/google/android/gms/internal/zzcg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcg;->zzdn()Lcom/google/android/gms/internal/zzce;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgt$2;->zzFG:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzgt$2;->zzoD:Lcom/google/android/gms/internal/zzcg;

    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/zzgt;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzcg;Lcom/google/android/gms/internal/zzce;)Lcom/google/android/gms/internal/zzja$zza;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziz;->zzhe()Lcom/google/android/gms/internal/zzja;

    move-result-object v2

    const-string v3, "/invalidRequest"

    iget-object v4, p0, Lcom/google/android/gms/internal/zzgt$2;->zzFE:Lcom/google/android/gms/internal/zzgv;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzgv;->zzFR:Lcom/google/android/gms/internal/zzdk;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzja;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzdk;)V

    const-string v3, "/loadAdURL"

    iget-object v4, p0, Lcom/google/android/gms/internal/zzgt$2;->zzFE:Lcom/google/android/gms/internal/zzgv;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzgv;->zzFS:Lcom/google/android/gms/internal/zzdk;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzja;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzdk;)V

    const-string v3, "/log"

    sget-object v4, Lcom/google/android/gms/internal/zzdj;->zzxv:Lcom/google/android/gms/internal/zzdk;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzja;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzdk;)V

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzja;->zza(Lcom/google/android/gms/internal/zzja$zza;)V

    const-string v1, "Loading the JS library."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaF(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgt$2;->zzFK:Lcom/google/android/gms/internal/zzbr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbr;->zzdc()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zziz;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
