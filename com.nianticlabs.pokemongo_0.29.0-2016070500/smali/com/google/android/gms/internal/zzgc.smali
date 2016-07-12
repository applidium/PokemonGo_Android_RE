.class public abstract Lcom/google/android/gms/internal/zzgc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzgh;
.implements Lcom/google/android/gms/internal/zzja$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzgh",
        "<",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/google/android/gms/internal/zzja$zza;"
    }
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final zzDd:Lcom/google/android/gms/internal/zzgg$zza;

.field protected final zzDe:Lcom/google/android/gms/internal/zzhs$zza;

.field protected zzDf:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

.field private zzDg:Ljava/lang/Runnable;

.field protected final zzDh:Ljava/lang/Object;

.field private zzDi:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected final zzoM:Lcom/google/android/gms/internal/zziz;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzhs$zza;Lcom/google/android/gms/internal/zziz;Lcom/google/android/gms/internal/zzgg$zza;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgc;->zzDh:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgc;->zzDi:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgc;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgc;->zzDe:Lcom/google/android/gms/internal/zzhs$zza;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgc;->zzDe:Lcom/google/android/gms/internal/zzhs$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhs$zza;->zzHD:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgc;->zzDf:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzgc;->zzoM:Lcom/google/android/gms/internal/zziz;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzgc;->zzDd:Lcom/google/android/gms/internal/zzgg$zza;

    return-void
.end method

.method private zzA(I)Lcom/google/android/gms/internal/zzhs;
    .locals 31

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzgc;->zzDe:Lcom/google/android/gms/internal/zzhs$zza;

    iget-object v6, v2, Lcom/google/android/gms/internal/zzhs$zza;->zzHC:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    new-instance v2, Lcom/google/android/gms/internal/zzhs;

    iget-object v3, v6, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzEn:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/zzgc;->zzoM:Lcom/google/android/gms/internal/zziz;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/zzgc;->zzDf:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzyY:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/zzgc;->zzDf:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v7, v7, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzyZ:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/zzgc;->zzDf:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v8, v8, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEM:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/internal/zzgc;->zzDf:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget v9, v9, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->orientation:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/internal/zzgc;->zzDf:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v10, v10, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzzc:J

    iget-object v12, v6, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzEq:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgc;->zzDf:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v13, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEK:Z

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgc;->zzDf:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEL:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgc;->zzDe:Lcom/google/android/gms/internal/zzhs$zza;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzhs$zza;->zzqn:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgc;->zzDf:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEJ:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgc;->zzDe:Lcom/google/android/gms/internal/zzhs$zza;

    iget-wide v0, v6, Lcom/google/android/gms/internal/zzhs$zza;->zzHz:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgc;->zzDf:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEO:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgc;->zzDf:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEP:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgc;->zzDe:Lcom/google/android/gms/internal/zzhs$zza;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzhs$zza;->zzHw:Lorg/json/JSONObject;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move/from16 v6, p1

    invoke-direct/range {v2 .. v30}, Lcom/google/android/gms/internal/zzhs;-><init>(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/zziz;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/zzed;Lcom/google/android/gms/internal/zzen;Ljava/lang/String;Lcom/google/android/gms/internal/zzee;Lcom/google/android/gms/internal/zzeg;JLcom/google/android/gms/ads/internal/client/AdSizeParcel;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/formats/zzh$zza;)V

    return-object v2
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzgc;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgc;->zzDi:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgc;->zzDi:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgc;->zzoM:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziz;->stopLoading()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbx()Lcom/google/android/gms/internal/zzie;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgc;->zzoM:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zziz;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzie;->zza(Landroid/webkit/WebView;)Z

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzgc;->zzz(I)V

    sget-object v0, Lcom/google/android/gms/internal/zzid;->zzIE:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgc;->zzDg:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/internal/zziz;Z)V
    .locals 2

    const-string v0, "WebView finished loading."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaF(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgc;->zzDi:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzgc;->zzft()I

    move-result v0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzgc;->zzz(I)V

    sget-object v0, Lcom/google/android/gms/internal/zzid;->zzIE:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgc;->zzDg:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public final zzfr()Ljava/lang/Void;
    .locals 6

    const-string v0, "Webview render task needs to be called on UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzci(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzgc$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzgc$1;-><init>(Lcom/google/android/gms/internal/zzgc;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgc;->zzDg:Ljava/lang/Runnable;

    sget-object v1, Lcom/google/android/gms/internal/zzid;->zzIE:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgc;->zzDg:Ljava/lang/Runnable;

    sget-object v0, Lcom/google/android/gms/internal/zzby;->zzvw:Lcom/google/android/gms/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbu;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzgc;->zzfs()V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract zzfs()V
.end method

.method protected zzft()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public synthetic zzfu()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzgc;->zzfr()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected zzz(I)V
    .locals 4

    const/4 v0, -0x2

    if-eq p1, v0, :cond_0

    new-instance v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgc;->zzDf:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v2, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzzc:J

    invoke-direct {v0, p1, v2, v3}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgc;->zzDf:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgc;->zzDd:Lcom/google/android/gms/internal/zzgg$zza;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzgc;->zzA(I)Lcom/google/android/gms/internal/zzhs;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzgg$zza;->zzb(Lcom/google/android/gms/internal/zzhs;)V

    return-void
.end method
