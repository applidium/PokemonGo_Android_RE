.class public Lcom/google/android/gms/internal/zzbd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbb;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation


# instance fields
.field private final zzoM:Lcom/google/android/gms/internal/zziz;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzan;)V
    .locals 7

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbw()Lcom/google/android/gms/internal/zzjb;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-direct {v2}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;-><init>()V

    move-object v1, p1

    move v4, v3

    move-object v5, p3

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/zzjb;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZLcom/google/android/gms/internal/zzan;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/internal/zziz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbd;->zzoM:Lcom/google/android/gms/internal/zziz;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbd;->zzoM:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziz;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWillNotDraw(Z)V

    return-void
.end method

.method private runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzl;->zzcF()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzgT()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzid;->zzIE:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbd;)Lcom/google/android/gms/internal/zziz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbd;->zzoM:Lcom/google/android/gms/internal/zziz;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbd;->zzoM:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziz;->destroy()V

    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzg;Lcom/google/android/gms/internal/zzdg;Lcom/google/android/gms/ads/internal/overlay/zzn;ZLcom/google/android/gms/internal/zzdm;Lcom/google/android/gms/internal/zzdo;Lcom/google/android/gms/ads/internal/zze;Lcom/google/android/gms/internal/zzfi;)V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbd;->zzoM:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziz;->zzhe()Lcom/google/android/gms/internal/zzja;

    move-result-object v0

    new-instance v8, Lcom/google/android/gms/ads/internal/zze;

    const/4 v1, 0x0

    invoke-direct {v8, v1}, Lcom/google/android/gms/ads/internal/zze;-><init>(Z)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/internal/zzja;->zzb(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzg;Lcom/google/android/gms/internal/zzdg;Lcom/google/android/gms/ads/internal/overlay/zzn;ZLcom/google/android/gms/internal/zzdm;Lcom/google/android/gms/internal/zzdo;Lcom/google/android/gms/ads/internal/zze;Lcom/google/android/gms/internal/zzfi;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzbb$zza;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbd;->zzoM:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziz;->zzhe()Lcom/google/android/gms/internal/zzja;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzbd$6;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzbd$6;-><init>(Lcom/google/android/gms/internal/zzbd;Lcom/google/android/gms/internal/zzbb$zza;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzja;->zza(Lcom/google/android/gms/internal/zzja$zza;)V

    return-void
.end method

.method public zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzdk;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbd;->zzoM:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziz;->zzhe()Lcom/google/android/gms/internal/zzja;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzja;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzdk;)V

    return-void
.end method

.method public zza(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbd$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzbd$2;-><init>(Lcom/google/android/gms/internal/zzbd;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbd;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zza(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbd$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzbd$1;-><init>(Lcom/google/android/gms/internal/zzbd;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbd;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzdk;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbd;->zzoM:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziz;->zzhe()Lcom/google/android/gms/internal/zzja;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzja;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzdk;)V

    return-void
.end method

.method public zzb(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbd;->zzoM:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zziz;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public zzci()Lcom/google/android/gms/internal/zzbf;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbg;-><init>(Lcom/google/android/gms/internal/zzbe;)V

    return-object v0
.end method

.method public zzs(Ljava/lang/String;)V
    .locals 3

    const-string v0, "<!DOCTYPE html><html><head><script src=\"%s\"></script></head><body></body></html>"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzbd$3;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzbd$3;-><init>(Lcom/google/android/gms/internal/zzbd;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzbd;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zzt(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbd$5;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzbd$5;-><init>(Lcom/google/android/gms/internal/zzbd;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbd;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zzu(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbd$4;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzbd$4;-><init>(Lcom/google/android/gms/internal/zzbd;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbd;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
