.class public final Lcom/google/android/gms/internal/zzgu;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation


# static fields
.field private static final zzFN:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/google/android/gms/internal/zzgu;->zzFN:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private static zzI(I)Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "#%06x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0xffffff

    and-int/2addr v4, p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Ljava/lang/String;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
    .locals 34

    :try_start_0
    new-instance v28, Lorg/json/JSONObject;

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "ad_base_url"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v4, "ad_url"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v4, "ad_size"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz p1, :cond_1

    move-object/from16 v0, p1

    iget v4, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzEt:I

    if-eqz v4, :cond_1

    const/16 v27, 0x1

    :goto_0
    if-eqz v27, :cond_2

    const-string v4, "ad_json"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    const-wide/16 v20, -0x1

    const-string v4, "debug_dialog"

    const/4 v8, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v4, "interstitial_timeout"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "interstitial_timeout"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    const-wide v10, 0x408f400000000000L    # 1000.0

    mul-double/2addr v8, v10

    double-to-long v0, v8

    move-wide/from16 v16, v0

    :goto_2
    const-string v4, "orientation"

    const/4 v8, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v18, -0x1

    const-string v8, "portrait"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbx()Lcom/google/android/gms/internal/zzie;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzie;->zzgH()I

    move-result v18

    :cond_0
    :goto_3
    const/4 v4, 0x0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_17

    const-string v4, "Could not parse the mediation config: Missing required ad_base_url field"

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaH(Ljava/lang/String;)V

    new-instance v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    :goto_4
    return-object v4

    :cond_1
    const/16 v27, 0x0

    goto :goto_0

    :cond_2
    const-string v4, "ad_html"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_3
    const-wide/16 v16, -0x1

    goto :goto_2

    :cond_4
    const-string v8, "landscape"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbx()Lcom/google/android/gms/internal/zzie;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzie;->zzgG()I

    move-result v18

    goto :goto_3

    :cond_5
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzqj:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v6, v4, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzJu:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p0

    invoke-static/range {v4 .. v12}, Lcom/google/android/gms/internal/zzgt;->zza(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzgx;Lcom/google/android/gms/internal/zzcg;Lcom/google/android/gms/internal/zzgs;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-result-object v4

    iget-object v6, v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzBF:Ljava/lang/String;

    iget-object v7, v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->body:Ljava/lang/String;

    iget-wide v0, v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEO:J

    move-wide/from16 v20, v0

    move-object v10, v4

    :goto_5
    const-string v4, "click_urls"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    if-nez v10, :cond_9

    const/4 v4, 0x0

    :goto_6
    if-eqz v8, :cond_16

    if-nez v4, :cond_6

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    :cond_6
    const/4 v5, 0x0

    :goto_7
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v5, v9, :cond_a

    invoke-virtual {v8, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not parse the mediation config: Missing required "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v27, :cond_8

    const-string v4, "ad_json"

    :goto_8
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " or "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ad_url"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " field."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaH(Ljava/lang/String;)V

    new-instance v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not parse the mediation config: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaH(Ljava/lang/String;)V

    new-instance v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    goto/16 :goto_4

    :cond_8
    :try_start_1
    const-string v4, "ad_html"

    goto :goto_8

    :cond_9
    iget-object v4, v10, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzyY:Ljava/util/List;

    goto :goto_6

    :cond_a
    move-object v8, v4

    :goto_9
    const-string v4, "impression_urls"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    if-nez v10, :cond_c

    const/4 v4, 0x0

    :goto_a
    if-eqz v9, :cond_15

    if-nez v4, :cond_b

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    :cond_b
    const/4 v5, 0x0

    :goto_b
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v5, v11, :cond_d

    invoke-virtual {v9, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_c
    iget-object v4, v10, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzyZ:Ljava/util/List;

    goto :goto_a

    :cond_d
    move-object v9, v4

    :goto_c
    const-string v4, "manual_impression_urls"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    if-nez v10, :cond_f

    const/4 v4, 0x0

    :goto_d
    if-eqz v11, :cond_14

    if-nez v4, :cond_e

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    :cond_e
    const/4 v5, 0x0

    :goto_e
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v5, v12, :cond_10

    invoke-virtual {v11, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_f
    iget-object v4, v10, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEM:Ljava/util/List;

    goto :goto_d

    :cond_10
    move-object v15, v4

    :goto_f
    if-eqz v10, :cond_13

    iget v4, v10, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->orientation:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_11

    iget v0, v10, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->orientation:I

    move/from16 v18, v0

    :cond_11
    iget-wide v4, v10, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEJ:J

    const-wide/16 v12, 0x0

    cmp-long v4, v4, v12

    if-lez v4, :cond_13

    iget-wide v10, v10, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEJ:J

    :goto_10
    const-string v4, "active_view"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const/16 v24, 0x0

    const-string v4, "ad_is_javascript"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v23

    if-eqz v23, :cond_12

    const-string v4, "ad_passback_url"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    :cond_12
    const-string v4, "mediation"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v12

    const-string v4, "custom_render_allowed"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v26

    const-string v4, "content_url_opted_out"

    const/4 v5, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v29

    const-string v4, "prefetch"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v30

    const-string v4, "oauth2_token_status"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v31

    const-string v4, "refresh_interval_milliseconds"

    const-wide/16 v16, -0x1

    move-object/from16 v0, v28

    move-wide/from16 v1, v16

    invoke-virtual {v0, v4, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v16

    const-string v4, "mediation_config_cache_time_milliseconds"

    const-wide/16 v32, -0x1

    move-object/from16 v0, v28

    move-wide/from16 v1, v32

    invoke-virtual {v0, v4, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v13

    const-string v4, "gws_query_id"

    const-string v5, ""

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    const-string v4, "height"

    const-string v5, "fluid"

    const-string v33, ""

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    new-instance v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzEv:Z

    move/from16 v28, v0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v33}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZZZILjava/lang/String;Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    :cond_13
    move-wide/from16 v10, v16

    goto/16 :goto_10

    :cond_14
    move-object v15, v4

    goto/16 :goto_f

    :cond_15
    move-object v9, v4

    goto/16 :goto_c

    :cond_16
    move-object v8, v4

    goto/16 :goto_9

    :cond_17
    move-object v10, v4

    move-object v7, v5

    goto/16 :goto_5
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/internal/zzgy;Lcom/google/android/gms/internal/zzhb$zza;Landroid/location/Location;Lcom/google/android/gms/internal/zzbr;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lorg/json/JSONObject;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;",
            "Lcom/google/android/gms/internal/zzgy;",
            "Lcom/google/android/gms/internal/zzhb$zza;",
            "Landroid/location/Location;",
            "Lcom/google/android/gms/internal/zzbr;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    :try_start_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "eid"

    const-string v3, ","

    move-object/from16 v0, p8

    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzEm:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    const-string v2, "ad_pos"

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzEm:Landroid/os/Bundle;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzEn:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    invoke-static {v4, v2}, Lcom/google/android/gms/internal/zzgu;->zza(Ljava/util/HashMap;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V

    const-string v2, "format"

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzqn:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzte:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzqn:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget v2, v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->width:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    const-string v2, "smart_w"

    const-string v3, "full"

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzqn:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget v2, v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->height:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_3

    const-string v2, "smart_h"

    const-string v3, "auto"

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzqn:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-boolean v2, v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzti:Z

    if-eqz v2, :cond_4

    const-string v2, "fluid"

    const-string v3, "height"

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzqn:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zztg:[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    if-eqz v2, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzqn:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v6, v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zztg:[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    array-length v7, v6

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v7, :cond_8

    aget-object v8, v6, v3

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "|"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget v2, v8, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->width:I

    const/4 v9, -0x1

    if-ne v2, v9, :cond_6

    iget v2, v8, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->widthPixels:I

    int-to-float v2, v2

    iget v9, p2, Lcom/google/android/gms/internal/zzgy;->zzEz:F

    div-float/2addr v2, v9

    float-to-int v2, v2

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->height:I

    const/4 v9, -0x2

    if-ne v2, v9, :cond_7

    iget v2, v8, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->heightPixels:I

    int-to-float v2, v2

    iget v8, p2, Lcom/google/android/gms/internal/zzgy;->zzEz:F

    div-float/2addr v2, v8

    float-to-int v2, v2

    :goto_2
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_6
    iget v2, v8, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->width:I

    goto :goto_1

    :cond_7
    iget v2, v8, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->height:I

    goto :goto_2

    :cond_8
    const-string v2, "sz"

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    iget v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzEt:I

    if-eqz v2, :cond_a

    const-string v2, "native_version"

    iget v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzEt:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "native_templates"

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzqD:Ljava/util/List;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "native_image_orientation"

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzqB:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzgu;->zzc(Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzEE:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "native_custom_templates"

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzEE:Ljava/util/List;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    const-string v2, "slotname"

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzqh:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "pn"

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzEo:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_b

    const-string v2, "vc"

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzEo:Landroid/content/pm/PackageInfo;

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    const-string v2, "ms"

    move-object/from16 v0, p7

    invoke-virtual {v4, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "seq_num"

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzEq:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "session_id"

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzEr:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "js"

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzqj:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzJu:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4, p2, p3}, Lcom/google/android/gms/internal/zzgu;->zza(Ljava/util/HashMap;Lcom/google/android/gms/internal/zzgy;Lcom/google/android/gms/internal/zzhb$zza;)V

    const-string v2, "fdz"

    invoke-virtual {p5}, Lcom/google/android/gms/internal/zzbr;->zzdd()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "platform"

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "submodel"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzEn:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget v2, v2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->versionCode:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_c

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzEn:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsJ:Landroid/location/Location;

    if-eqz v2, :cond_c

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzEn:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsJ:Landroid/location/Location;

    invoke-static {v4, v2}, Lcom/google/android/gms/internal/zzgu;->zza(Ljava/util/HashMap;Landroid/location/Location;)V

    :cond_c
    iget v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_d

    const-string v2, "quality_signals"

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzEs:Landroid/os/Bundle;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    iget v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/4 v3, 0x4

    if-lt v2, v3, :cond_e

    iget-boolean v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzEv:Z

    if-eqz v2, :cond_e

    const-string v2, "forceHttps"

    iget-boolean v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzEv:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    iget v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/4 v3, 0x4

    if-lt v2, v3, :cond_15

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzEu:Landroid/os/Bundle;

    if-eqz v2, :cond_15

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzEu:Landroid/os/Bundle;

    :goto_3
    invoke-static {p0, p1, v2}, Lcom/google/android/gms/internal/zzgu;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Landroid/os/Bundle;)V

    const-string v3, "content_info"

    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_16

    const-string v2, "u_sd"

    iget v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzEz:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sh"

    iget v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzEy:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sw"

    iget v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzEx:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    iget v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/4 v3, 0x6

    if-lt v2, v3, :cond_10

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzEA:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_f

    :try_start_1
    const-string v2, "view_hierarchy"

    new-instance v3, Lorg/json/JSONObject;

    iget-object v5, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzEA:Ljava/lang/String;

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_f
    :goto_5
    :try_start_2
    const-string v2, "correlation_id"

    iget-wide v6, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzEB:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    iget v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/4 v3, 0x7

    if-lt v2, v3, :cond_11

    const-string v2, "request_id"

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzEC:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    iget v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_12

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzEG:Lcom/google/android/gms/ads/internal/request/CapabilityParcel;

    if-eqz v2, :cond_12

    const-string v2, "capability"

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzEG:Lcom/google/android/gms/ads/internal/request/CapabilityParcel;

    invoke-virtual {v3}, Lcom/google/android/gms/ads/internal/request/CapabilityParcel;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    move-object/from16 v0, p6

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/zzgu;->zza(Ljava/util/HashMap;Ljava/lang/String;)V

    iget v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/16 v3, 0xc

    if-lt v2, v3, :cond_13

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzEH:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string v2, "anchor"

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzEH:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzN(I)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbv()Lcom/google/android/gms/internal/zzid;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/zzid;->zzz(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ad Request JSON: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/zzb;->v(Ljava/lang/String;)V

    :cond_14
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbv()Lcom/google/android/gms/internal/zzid;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/zzid;->zzz(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    :goto_6
    return-object v2

    :cond_15
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem serializing ad request to JSON: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaH(Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_6

    :cond_16
    :try_start_3
    const-string v2, "u_sd"

    iget v3, p2, Lcom/google/android/gms/internal/zzgy;->zzEz:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sh"

    iget v3, p2, Lcom/google/android/gms/internal/zzgy;->zzEy:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sw"

    iget v3, p2, Lcom/google/android/gms/internal/zzgy;->zzEx:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :catch_1
    move-exception v2

    const-string v3, "Problem serializing view hierarchy to JSON"

    invoke-static {v3, v2}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_5
.end method

.method static zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Landroid/os/Bundle;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzby;->zzuZ:Lcom/google/android/gms/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbu;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "App index is not enabled"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaG(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/zzmm;->zzjA()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Not on service, return"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaG(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzl;->zzcF()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzgT()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Cannot invoked on UI thread"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaG(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzEo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_4

    :cond_3
    const-string v0, "Invalid ad request info"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaH(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzEo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "Fail to get package name"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaH(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    :try_start_0
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zzgu;->zzd(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/UsageInfo;

    move-result-object v1

    invoke-static {v1, v0, p2}, Lcom/google/android/gms/internal/zzgu;->zza(Lcom/google/android/gms/appdatasearch/UsageInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "Fail to add app index to content info"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaG(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static zza(Lcom/google/android/gms/appdatasearch/UsageInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/appdatasearch/UsageInfo;->zzlu()Lcom/google/android/gms/appdatasearch/DocumentContents;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/appdatasearch/UsageInfo;->zzlu()Lcom/google/android/gms/appdatasearch/DocumentContents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/appdatasearch/DocumentContents;->zzln()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "web_url"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :try_start_0
    const-string v1, "intent_data"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/appdatasearch/DocumentContents;->zzbw(Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/DocumentSection;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/appdatasearch/DocumentSection;->zzQj:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/appdatasearch/DocumentSection;->zzQj:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/appindexing/AndroidAppUri;->newAndroidAppUri(Ljava/lang/String;Landroid/net/Uri;)Lcom/google/android/gms/appindexing/AndroidAppUri;

    move-result-object v0

    const-string v1, "app_uri"

    invoke-virtual {v0}, Lcom/google/android/gms/appindexing/AndroidAppUri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "Failed to parse the third-party Android App URI"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaH(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static zza(Ljava/util/HashMap;Landroid/location/Location;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/location/Location;",
            ")V"
        }
    .end annotation

    const-wide v6, 0x416312d000000000L    # 1.0E7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "radius"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lat"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "long"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "time"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "uule"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static zza(Ljava/util/HashMap;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/ads/internal/client/AdRequestParcel;",
            ")V"
        }
    .end annotation

    const/4 v6, -0x1

    invoke-static {}, Lcom/google/android/gms/internal/zzhy;->zzgy()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "abf"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-wide v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsB:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const-string v0, "cust_age"

    sget-object v1, Lcom/google/android/gms/internal/zzgu;->zzFN:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsB:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    const-string v0, "extras"

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->extras:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsC:I

    if-eq v0, v6, :cond_3

    const-string v0, "cust_gender"

    iget v1, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsC:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsD:Ljava/util/List;

    if-eqz v0, :cond_4

    const-string v0, "kw"

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsD:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsF:I

    if-eq v0, v6, :cond_5

    const-string v0, "tag_for_child_directed_treatment"

    iget v1, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsF:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-boolean v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsE:Z

    if-eqz v0, :cond_6

    const-string v0, "adtest"

    const-string v1, "on"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->versionCode:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_9

    iget-boolean v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsG:Z

    if-eqz v0, :cond_7

    const-string v0, "d_imp_hdr"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "ppid"

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsH:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsI:Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsI:Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zzgu;->zza(Ljava/util/HashMap;Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;)V

    :cond_9
    iget v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->versionCode:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_a

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsK:Ljava/lang/String;

    if-eqz v0, :cond_a

    const-string v0, "url"

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsK:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    iget v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->versionCode:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_d

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsM:Landroid/os/Bundle;

    if-eqz v0, :cond_b

    const-string v0, "custom_targeting"

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsM:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsN:Ljava/util/List;

    if-eqz v0, :cond_c

    const-string v0, "category_exclusions"

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsN:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsO:Ljava/lang/String;

    if-eqz v0, :cond_d

    const-string v0, "request_agent"

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsO:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    iget v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->versionCode:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_e

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsP:Ljava/lang/String;

    if-eqz v0, :cond_e

    const-string v0, "request_pkg"

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsP:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    return-void
.end method

.method private static zza(Ljava/util/HashMap;Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    iget v1, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zztP:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "acolor"

    iget v2, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zztP:I

    invoke-static {v2}, Lcom/google/android/gms/internal/zzgu;->zzI(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget v1, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->backgroundColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "bgcolor"

    iget v2, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->backgroundColor:I

    invoke-static {v2}, Lcom/google/android/gms/internal/zzgu;->zzI(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget v1, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zztQ:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zztR:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "gradientto"

    iget v2, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zztQ:I

    invoke-static {v2}, Lcom/google/android/gms/internal/zzgu;->zzI(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gradientfrom"

    iget v2, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zztR:I

    invoke-static {v2}, Lcom/google/android/gms/internal/zzgu;->zzI(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget v1, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zztS:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "bcolor"

    iget v2, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zztS:I

    invoke-static {v2}, Lcom/google/android/gms/internal/zzgu;->zzI(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v1, "bthick"

    iget v2, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zztT:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zztU:I

    packed-switch v1, :pswitch_data_0

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_4

    const-string v2, "btype"

    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget v1, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zztV:I

    packed-switch v1, :pswitch_data_1

    :goto_1
    if-eqz v0, :cond_5

    const-string v1, "callbuttoncolor"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zztW:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string v0, "channel"

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zztW:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget v0, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zztX:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "dcolor"

    iget v1, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zztX:I

    invoke-static {v1}, Lcom/google/android/gms/internal/zzgu;->zzI(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zztY:Ljava/lang/String;

    if-eqz v0, :cond_8

    const-string v0, "font"

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zztY:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget v0, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zztZ:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "hcolor"

    iget v1, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zztZ:I

    invoke-static {v1}, Lcom/google/android/gms/internal/zzgu;->zzI(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    const-string v0, "headersize"

    iget v1, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzua:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzub:Ljava/lang/String;

    if-eqz v0, :cond_a

    const-string v0, "q"

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzub:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    return-void

    :pswitch_0
    const-string v1, "none"

    goto :goto_0

    :pswitch_1
    const-string v1, "dashed"

    goto :goto_0

    :pswitch_2
    const-string v1, "dotted"

    goto :goto_0

    :pswitch_3
    const-string v1, "solid"

    goto :goto_0

    :pswitch_4
    const-string v0, "dark"

    goto :goto_1

    :pswitch_5
    const-string v0, "light"

    goto :goto_1

    :pswitch_6
    const-string v0, "medium"

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method

.method private static zza(Ljava/util/HashMap;Lcom/google/android/gms/internal/zzgy;Lcom/google/android/gms/internal/zzhb$zza;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/zzgy;",
            "Lcom/google/android/gms/internal/zzhb$zza;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x1

    const-string v0, "am"

    iget v1, p1, Lcom/google/android/gms/internal/zzgy;->zzGs:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cog"

    iget-boolean v1, p1, Lcom/google/android/gms/internal/zzgy;->zzGt:Z

    invoke-static {v1}, Lcom/google/android/gms/internal/zzgu;->zzx(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "coh"

    iget-boolean v1, p1, Lcom/google/android/gms/internal/zzgy;->zzGu:Z

    invoke-static {v1}, Lcom/google/android/gms/internal/zzgu;->zzx(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzgy;->zzGv:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "carrier"

    iget-object v1, p1, Lcom/google/android/gms/internal/zzgy;->zzGv:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "gl"

    iget-object v1, p1, Lcom/google/android/gms/internal/zzgy;->zzGw:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzgy;->zzGx:Z

    if-eqz v0, :cond_1

    const-string v0, "simulator"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzgy;->zzGy:Z

    if-eqz v0, :cond_2

    const-string v0, "is_sidewinder"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v0, "ma"

    iget-boolean v1, p1, Lcom/google/android/gms/internal/zzgy;->zzGz:Z

    invoke-static {v1}, Lcom/google/android/gms/internal/zzgu;->zzx(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sp"

    iget-boolean v1, p1, Lcom/google/android/gms/internal/zzgy;->zzGA:Z

    invoke-static {v1}, Lcom/google/android/gms/internal/zzgu;->zzx(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "hl"

    iget-object v1, p1, Lcom/google/android/gms/internal/zzgy;->zzGB:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzgy;->zzGC:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "mv"

    iget-object v1, p1, Lcom/google/android/gms/internal/zzgy;->zzGC:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v0, "muv"

    iget v1, p1, Lcom/google/android/gms/internal/zzgy;->zzGD:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p1, Lcom/google/android/gms/internal/zzgy;->zzGE:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_4

    const-string v0, "cnt"

    iget v1, p1, Lcom/google/android/gms/internal/zzgy;->zzGE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v0, "gnt"

    iget v1, p1, Lcom/google/android/gms/internal/zzgy;->zzGF:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pt"

    iget v1, p1, Lcom/google/android/gms/internal/zzgy;->zzGG:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "rm"

    iget v1, p1, Lcom/google/android/gms/internal/zzgy;->zzGH:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "riv"

    iget v1, p1, Lcom/google/android/gms/internal/zzgy;->zzGI:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "build"

    iget-object v2, p1, Lcom/google/android/gms/internal/zzgy;->zzGN:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "is_charging"

    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzgy;->zzGK:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "battery_level"

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzgy;->zzGJ:D

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v2, "battery"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "active_network_state"

    iget v3, p1, Lcom/google/android/gms/internal/zzgy;->zzGM:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "active_network_metered"

    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzgy;->zzGL:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz p2, :cond_5

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "predicted_latency_micros"

    iget v4, p2, Lcom/google/android/gms/internal/zzhb$zza;->zzGS:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "predicted_down_throughput_bps"

    iget-wide v4, p2, Lcom/google/android/gms/internal/zzhb$zza;->zzGT:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "predicted_up_throughput_bps"

    iget-wide v4, p2, Lcom/google/android/gms/internal/zzhb$zza;->zzGU:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "predictions"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_5
    const-string v2, "network"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v1, "device"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static zza(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "token"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pan"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static zzc(Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    iget v0, p0, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;->zzwS:I

    :goto_0
    packed-switch v0, :pswitch_data_0

    const-string v0, "any"

    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    const-string v0, "portrait"

    goto :goto_1

    :pswitch_1
    const-string v0, "landscape"

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static zzd(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/UsageInfo;
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/google/android/gms/appdatasearch/zza;->zzPV:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    new-instance v0, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request$zza;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request$zza;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request$zza;->zzL(Z)Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request$zza;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request$zza;->zzby(Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request$zza;->zzlr()Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/appdatasearch/zza;->zzPW:Lcom/google/android/gms/appdatasearch/zzk;

    invoke-interface {v3, v2, v0}, Lcom/google/android/gms/appdatasearch/zzk;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    const-wide/16 v4, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v3}, Lcom/google/android/gms/common/api/PendingResult;->await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Response;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Response;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    const-string v0, "Fail to obtain recent context call"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaG(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    :try_start_2
    iget-object v3, v0, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Response;->zzQB:Ljava/util/List;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Response;->zzQB:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    const-string v0, "Fail to obtain recent context"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaG(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    goto :goto_0

    :cond_4
    :try_start_3
    iget-object v0, v0, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Response;->zzQB:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/appdatasearch/UsageInfo;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    :cond_5
    :goto_1
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    :try_start_4
    const-string v2, "Fail to get recent context"

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaH(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_3
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    :cond_6
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v0, v2

    goto :goto_2

    :cond_7
    move-object v0, v1

    goto :goto_1
.end method

.method private static zzx(Z)Ljava/lang/Integer;
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
