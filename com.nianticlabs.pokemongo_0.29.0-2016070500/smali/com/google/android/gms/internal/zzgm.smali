.class public Lcom/google/android/gms/internal/zzgm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzgm$zzb;,
        Lcom/google/android/gms/internal/zzgm$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/google/android/gms/internal/zzhs;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzDE:J


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzDF:Lcom/google/android/gms/internal/zzih;

.field private final zzDG:Lcom/google/android/gms/ads/internal/zzn;

.field private final zzDH:Lcom/google/android/gms/internal/zzbc;

.field private zzDI:Z

.field private zzDJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzDe:Lcom/google/android/gms/internal/zzhs$zza;

.field private zzDv:I

.field private final zzpd:Ljava/lang/Object;

.field private final zzwL:Lcom/google/android/gms/internal/zzan;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/zzgm;->zzDE:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzn;Lcom/google/android/gms/internal/zzbc;Lcom/google/android/gms/internal/zzih;Lcom/google/android/gms/internal/zzan;Lcom/google/android/gms/internal/zzhs$zza;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgm;->zzpd:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgm;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgm;->zzDG:Lcom/google/android/gms/ads/internal/zzn;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzgm;->zzDF:Lcom/google/android/gms/internal/zzih;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzgm;->zzDH:Lcom/google/android/gms/internal/zzbc;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzgm;->zzDe:Lcom/google/android/gms/internal/zzhs$zza;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzgm;->zzwL:Lcom/google/android/gms/internal/zzan;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzgm;->zzDI:Z

    const/4 v0, -0x2

    iput v0, p0, Lcom/google/android/gms/internal/zzgm;->zzDv:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgm;->zzDJ:Ljava/util/List;

    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzbb;Lcom/google/android/gms/internal/zzgm$zza;Lorg/json/JSONObject;)Lcom/google/android/gms/ads/internal/formats/zzh$zza;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzgm;->zzfD()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    const-string v0, "tracking_urls_and_actions"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "impression_tracking_urls"

    invoke-direct {p0, v0, v2}, Lcom/google/android/gms/internal/zzgm;->zzc(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/internal/zzgm;->zzDJ:Ljava/util/List;

    invoke-interface {p2, p0, p3}, Lcom/google/android/gms/internal/zzgm$zza;->zza(Lcom/google/android/gms/internal/zzgm;Lorg/json/JSONObject;)Lcom/google/android/gms/ads/internal/formats/zzh$zza;

    move-result-object v6

    if-nez v6, :cond_2

    const-string v0, "Failed to retrieve ad assets."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/google/android/gms/ads/internal/formats/zzh;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgm;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgm;->zzDG:Lcom/google/android/gms/ads/internal/zzn;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzgm;->zzwL:Lcom/google/android/gms/internal/zzan;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzgm;->zzDe:Lcom/google/android/gms/internal/zzhs$zza;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzhs$zza;->zzHC:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v7, v3, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzqj:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-object v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/formats/zzh;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzn;Lcom/google/android/gms/internal/zzbb;Lcom/google/android/gms/internal/zzan;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/formats/zzh$zza;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    invoke-interface {v6, v0}, Lcom/google/android/gms/ads/internal/formats/zzh$zza;->zza(Lcom/google/android/gms/ads/internal/formats/zzh;)V

    move-object v1, v6

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzgm;)Lcom/google/android/gms/ads/internal/zzn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgm;->zzDG:Lcom/google/android/gms/ads/internal/zzn;

    return-object v0
.end method

.method private zza(Lcom/google/android/gms/ads/internal/formats/zzh$zza;)Lcom/google/android/gms/internal/zzhs;
    .locals 31

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/zzgm;->zzpd:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/gms/internal/zzgm;->zzDv:I

    if-nez p1, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/zzgm;->zzDv:I

    const/4 v4, -0x2

    if-ne v2, v4, :cond_0

    const/4 v6, 0x0

    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x2

    if-eq v6, v2, :cond_1

    const/16 v30, 0x0

    :goto_0
    new-instance v2, Lcom/google/android/gms/internal/zzhs;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/zzgm;->zzDe:Lcom/google/android/gms/internal/zzhs$zza;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzhs$zza;->zzHC:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzEn:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/zzgm;->zzDe:Lcom/google/android/gms/internal/zzhs$zza;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzhs$zza;->zzHD:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzyY:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/zzgm;->zzDe:Lcom/google/android/gms/internal/zzhs$zza;

    iget-object v7, v7, Lcom/google/android/gms/internal/zzhs$zza;->zzHD:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v7, v7, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzyZ:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/zzgm;->zzDJ:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/internal/zzgm;->zzDe:Lcom/google/android/gms/internal/zzhs$zza;

    iget-object v9, v9, Lcom/google/android/gms/internal/zzhs$zza;->zzHD:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget v9, v9, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->orientation:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/internal/zzgm;->zzDe:Lcom/google/android/gms/internal/zzhs$zza;

    iget-object v10, v10, Lcom/google/android/gms/internal/zzhs$zza;->zzHD:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v10, v10, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzzc:J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gms/internal/zzgm;->zzDe:Lcom/google/android/gms/internal/zzhs$zza;

    iget-object v12, v12, Lcom/google/android/gms/internal/zzhs$zza;->zzHC:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v12, v12, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzEq:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgm;->zzDe:Lcom/google/android/gms/internal/zzhs$zza;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhs$zza;->zzqn:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgm;->zzDe:Lcom/google/android/gms/internal/zzhs$zza;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhs$zza;->zzHD:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEJ:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgm;->zzDe:Lcom/google/android/gms/internal/zzhs$zza;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/google/android/gms/internal/zzhs$zza;->zzHz:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgm;->zzDe:Lcom/google/android/gms/internal/zzhs$zza;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/google/android/gms/internal/zzhs$zza;->zzHA:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgm;->zzDe:Lcom/google/android/gms/internal/zzhs$zza;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhs$zza;->zzHD:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEP:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgm;->zzDe:Lcom/google/android/gms/internal/zzhs$zza;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhs$zza;->zzHw:Lorg/json/JSONObject;

    move-object/from16 v29, v0

    invoke-direct/range {v2 .. v30}, Lcom/google/android/gms/internal/zzhs;-><init>(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/zziz;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/zzed;Lcom/google/android/gms/internal/zzen;Ljava/lang/String;Lcom/google/android/gms/internal/zzee;Lcom/google/android/gms/internal/zzeg;JLcom/google/android/gms/ads/internal/client/AdSizeParcel;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/formats/zzh$zza;)V

    return-object v2

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_1
    move-object/from16 v30, p1

    goto/16 :goto_0
.end method

.method private zza(Lorg/json/JSONObject;ZZ)Lcom/google/android/gms/internal/zziq;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "ZZ)",
            "Lcom/google/android/gms/internal/zziq",
            "<",
            "Lcom/google/android/gms/ads/internal/formats/zzc;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v7, 0x0

    if-eqz p2, :cond_0

    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_0
    const-string v0, "scale"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/zzgm;->zza(IZ)V

    new-instance v0, Lcom/google/android/gms/internal/zzio;

    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/zzio;-><init>(Ljava/lang/Object;)V

    :goto_1
    return-object v0

    :cond_0
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzio;

    new-instance v1, Lcom/google/android/gms/ads/internal/formats/zzc;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v7, v2, v4, v5}, Lcom/google/android/gms/ads/internal/formats/zzc;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;D)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzio;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgm;->zzDF:Lcom/google/android/gms/internal/zzih;

    new-instance v1, Lcom/google/android/gms/internal/zzgm$5;

    move-object v2, p0

    move v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzgm$5;-><init>(Lcom/google/android/gms/internal/zzgm;ZDLjava/lang/String;)V

    invoke-virtual {v0, v6, v1}, Lcom/google/android/gms/internal/zzih;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzih$zza;)Lcom/google/android/gms/internal/zziq;

    move-result-object v0

    goto :goto_1
.end method

.method private zza(Lcom/google/android/gms/ads/internal/formats/zzh$zza;Lcom/google/android/gms/internal/zzbb;)V
    .locals 2

    instance-of v0, p1, Lcom/google/android/gms/ads/internal/formats/zzf;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    check-cast p1, Lcom/google/android/gms/ads/internal/formats/zzf;

    new-instance v0, Lcom/google/android/gms/internal/zzgm$zzb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzgm$zzb;-><init>(Lcom/google/android/gms/internal/zzgm;)V

    new-instance v1, Lcom/google/android/gms/internal/zzgm$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzgm$3;-><init>(Lcom/google/android/gms/internal/zzgm;Lcom/google/android/gms/ads/internal/formats/zzf;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/zzgm$zzb;->zzDZ:Lcom/google/android/gms/internal/zzdk;

    const-string v0, "/nativeAdCustomClick"

    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/internal/zzbb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzdk;)V

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzgm;Lcom/google/android/gms/internal/zzcu;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzgm;->zzb(Lcom/google/android/gms/internal/zzcu;Ljava/lang/String;)V

    return-void
.end method

.method private zzb(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4

    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "r"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "g"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "b"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private zzb(Lcom/google/android/gms/internal/zzbb;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzgm;->zzfD()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzin;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzin;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/zzgm$zzb;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzgm$zzb;-><init>(Lcom/google/android/gms/internal/zzgm;)V

    new-instance v2, Lcom/google/android/gms/internal/zzgm$1;

    invoke-direct {v2, p0, p1, v1, v0}, Lcom/google/android/gms/internal/zzgm$1;-><init>(Lcom/google/android/gms/internal/zzgm;Lcom/google/android/gms/internal/zzbb;Lcom/google/android/gms/internal/zzgm$zzb;Lcom/google/android/gms/internal/zzin;)V

    iput-object v2, v1, Lcom/google/android/gms/internal/zzgm$zzb;->zzDZ:Lcom/google/android/gms/internal/zzdk;

    const-string v1, "/nativeAdPreProcess"

    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/internal/zzbb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzdk;)V

    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgm;->zzDe:Lcom/google/android/gms/internal/zzhs$zza;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzhs$zza;->zzHD:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->body:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "google.afma.nativeAds.preProcessJsonGmsg"

    invoke-interface {p1, v2, v1}, Lcom/google/android/gms/internal/zzbb;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V

    sget-wide v2, Lcom/google/android/gms/internal/zzgm;->zzDE:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/internal/zzin;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    goto :goto_0
.end method

.method private zzb(Lcom/google/android/gms/internal/zzcu;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgm;->zzDG:Lcom/google/android/gms/ads/internal/zzn;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzcu;->getCustomTemplateId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzn;->zzr(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzcy;->zza(Lcom/google/android/gms/internal/zzcu;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to call onCustomClick for asset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private zzc(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private static zzd(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/ads/internal/formats/zzc;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/formats/zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/formats/zzc;->zzdv()Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzp(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method static synthetic zze(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/zzgm;->zzd(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private zzfC()Lcom/google/android/gms/internal/zzbb;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/CancellationException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzgm;->zzfD()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v6

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzby;->zzvj:Lcom/google/android/gms/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbu;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgm;->zzDe:Lcom/google/android/gms/internal/zzhs$zza;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzhs$zza;->zzHD:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzBF:Ljava/lang/String;

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "https:"

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgm;->zzDH:Lcom/google/android/gms/internal/zzbc;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgm;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzgm;->zzDe:Lcom/google/android/gms/internal/zzhs$zza;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzhs$zza;->zzHC:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzqj:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzgm;->zzwL:Lcom/google/android/gms/internal/zzan;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/google/android/gms/internal/zzbc;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzan;)Ljava/util/concurrent/Future;

    move-result-object v0

    sget-wide v2, Lcom/google/android/gms/internal/zzgm;->zzDE:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgm;->zzDG:Lcom/google/android/gms/ads/internal/zzn;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgm;->zzDG:Lcom/google/android/gms/ads/internal/zzn;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzgm;->zzDG:Lcom/google/android/gms/ads/internal/zzn;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzgm;->zzDG:Lcom/google/android/gms/ads/internal/zzn;

    const/4 v5, 0x0

    move-object v7, v6

    move-object v8, v6

    move-object v9, v6

    invoke-interface/range {v0 .. v9}, Lcom/google/android/gms/internal/zzbb;->zza(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzg;Lcom/google/android/gms/internal/zzdg;Lcom/google/android/gms/ads/internal/overlay/zzn;ZLcom/google/android/gms/internal/zzdm;Lcom/google/android/gms/internal/zzdo;Lcom/google/android/gms/ads/internal/zze;Lcom/google/android/gms/internal/zzfi;)V

    move-object v6, v0

    goto :goto_0

    :cond_1
    const-string v1, "http:"

    goto :goto_1
.end method


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzgm;->zzfB()Lcom/google/android/gms/internal/zzhs;

    move-result-object v0

    return-object v0
.end method

.method public zzC(I)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgm;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzgm;->zzDI:Z

    iput p1, p0, Lcom/google/android/gms/internal/zzgm;->zzDv:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zza(Lorg/json/JSONObject;Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/zziq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "ZZ)",
            "Lcom/google/android/gms/internal/zziq",
            "<",
            "Lcom/google/android/gms/ads/internal/formats/zzc;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p3, :cond_1

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    invoke-direct {p0, v0, p3, p4}, Lcom/google/android/gms/internal/zzgm;->zza(Lorg/json/JSONObject;ZZ)Lcom/google/android/gms/internal/zziq;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method public zza(Lorg/json/JSONObject;Ljava/lang/String;ZZZ)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "ZZZ)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zziq",
            "<",
            "Lcom/google/android/gms/ads/internal/formats/zzc;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    invoke-virtual {p0, v2, p3}, Lcom/google/android/gms/internal/zzgm;->zza(IZ)V

    move-object v0, v3

    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz p5, :cond_4

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    :goto_2
    move v4, v2

    :goto_3
    if-ge v4, v1, :cond_5

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_3

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :cond_3
    invoke-direct {p0, v2, p3, p4}, Lcom/google/android/gms/internal/zzgm;->zza(Lorg/json/JSONObject;ZZ)Lcom/google/android/gms/internal/zziq;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_3

    :cond_4
    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    move-object v0, v3

    goto :goto_1
.end method

.method public zza(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/gms/ads/internal/formats/zzc;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "require"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    invoke-direct {p0, v0, v1, p3}, Lcom/google/android/gms/internal/zzgm;->zza(Lorg/json/JSONObject;ZZ)Lcom/google/android/gms/internal/zziq;

    move-result-object v0

    return-object v0
.end method

.method public zza(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzgm;->zzC(I)V

    :cond_0
    return-void
.end method

.method protected zzd(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzgm$zza;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzgm;->zzfD()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "template_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgm;->zzDe:Lcom/google/android/gms/internal/zzhs$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhs$zza;->zzHC:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzqB:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgm;->zzDe:Lcom/google/android/gms/internal/zzhs$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhs$zza;->zzHC:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzqB:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;->zzwR:Z

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzgm;->zzDe:Lcom/google/android/gms/internal/zzhs$zza;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzhs$zza;->zzHC:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzqB:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgm;->zzDe:Lcom/google/android/gms/internal/zzhs$zza;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzhs$zza;->zzHC:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzqB:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    iget-boolean v2, v2, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;->zzwT:Z

    :goto_2
    const-string v5, "2"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v1, Lcom/google/android/gms/internal/zzgn;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/zzgn;-><init>(ZZ)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v2, v1

    goto :goto_2

    :cond_3
    const-string v5, "1"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v1, Lcom/google/android/gms/internal/zzgo;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/zzgo;-><init>(ZZ)V

    move-object v0, v1

    goto :goto_0

    :cond_4
    const-string v2, "3"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v1, "custom_template_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzin;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzin;-><init>()V

    sget-object v4, Lcom/google/android/gms/internal/zzid;->zzIE:Landroid/os/Handler;

    new-instance v5, Lcom/google/android/gms/internal/zzgm$2;

    invoke-direct {v5, p0, v2, v1}, Lcom/google/android/gms/internal/zzgm$2;-><init>(Lcom/google/android/gms/internal/zzgm;Lcom/google/android/gms/internal/zzin;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-wide v4, Lcom/google/android/gms/internal/zzgm;->zzDE:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v1}, Lcom/google/android/gms/internal/zzin;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Lcom/google/android/gms/internal/zzgp;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzgp;-><init>(Z)V

    move-object v0, v1

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No handler for custom template: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "custom_template_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->e(Ljava/lang/String;)V

    :goto_3
    move-object v0, v3

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzgm;->zzC(I)V

    goto :goto_3
.end method

.method public zze(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zziq;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/internal/zziq",
            "<",
            "Lcom/google/android/gms/ads/internal/formats/zza;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v3, 0x0

    const-string v0, "attribution"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzio;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzio;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "text"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "text_size"

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    const-string v0, "text_color"

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/zzgm;->zzb(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    const-string v0, "bg_color"

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/zzgm;->zzb(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    const-string v0, "animation_ms"

    const/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    const-string v0, "presentation_ms"

    const/16 v2, 0xfa0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "images"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "images"

    const/4 v5, 0x1

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzgm;->zza(Lorg/json/JSONObject;Ljava/lang/String;ZZZ)Ljava/util/List;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/zzip;->zzh(Ljava/util/List;)Lcom/google/android/gms/internal/zziq;

    move-result-object v12

    new-instance v0, Lcom/google/android/gms/internal/zzgm$4;

    move-object v1, p0

    move-object v2, v8

    move-object v3, v11

    move-object v4, v10

    move v5, v9

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzgm$4;-><init>(Lcom/google/android/gms/internal/zzgm;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;III)V

    invoke-static {v12, v0}, Lcom/google/android/gms/internal/zzip;->zza(Lcom/google/android/gms/internal/zziq;Lcom/google/android/gms/internal/zzip$zza;)Lcom/google/android/gms/internal/zziq;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v2, "image"

    invoke-virtual {p0, v1, v2, v3, v3}, Lcom/google/android/gms/internal/zzgm;->zza(Lorg/json/JSONObject;Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/zziq;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public zzfB()Lcom/google/android/gms/internal/zzhs;
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzgm;->zzfC()Lcom/google/android/gms/internal/zzbb;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzgm;->zzb(Lcom/google/android/gms/internal/zzbb;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzgm;->zzd(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzgm$zza;

    move-result-object v2

    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/gms/internal/zzgm;->zza(Lcom/google/android/gms/internal/zzbb;Lcom/google/android/gms/internal/zzgm$zza;Lorg/json/JSONObject;)Lcom/google/android/gms/ads/internal/formats/zzh$zza;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/zzgm;->zza(Lcom/google/android/gms/ads/internal/formats/zzh$zza;Lcom/google/android/gms/internal/zzbb;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzgm;->zza(Lcom/google/android/gms/ads/internal/formats/zzh$zza;)Lcom/google/android/gms/internal/zzhs;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Malformed native JSON response."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzgm;->zzDI:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzgm;->zzC(I)V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzgm;->zza(Lcom/google/android/gms/ads/internal/formats/zzh$zza;)Lcom/google/android/gms/internal/zzhs;

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Timeout when loading native ad."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method public zzfD()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgm;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzgm;->zzDI:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
