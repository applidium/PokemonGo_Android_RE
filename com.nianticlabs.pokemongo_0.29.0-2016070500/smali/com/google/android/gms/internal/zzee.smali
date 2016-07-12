.class public final Lcom/google/android/gms/internal/zzee;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation


# instance fields
.field public final zzyW:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzed;",
            ">;"
        }
    .end annotation
.end field

.field public final zzyX:J

.field public final zzyY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzyZ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzza:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzzb:Ljava/lang/String;

.field public final zzzc:J

.field public final zzzd:Ljava/lang/String;

.field public final zzze:I

.field public zzzf:I

.field public zzzg:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v6, 0x2

    const-wide/16 v4, -0x1

    const/4 v10, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzN(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mediation Response JSON: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->v(Ljava/lang/String;)V

    :cond_0
    const-string v0, "ad_networks"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, -0x1

    move v2, v0

    move v0, v1

    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v0, v8, :cond_2

    new-instance v8, Lcom/google/android/gms/internal/zzed;

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/android/gms/internal/zzed;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-gez v2, :cond_1

    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/zzee;->zza(Lcom/google/android/gms/internal/zzed;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v2, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iput v2, p0, Lcom/google/android/gms/internal/zzee;->zzzf:I

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzee;->zzzg:I

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzee;->zzyW:Ljava/util/List;

    const-string v0, "qdata"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzee;->zzzb:Ljava/lang/String;

    const-string v0, "settings"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v2, "ad_network_timeout_millis"

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzee;->zzyX:J

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbH()Lcom/google/android/gms/internal/zzej;

    move-result-object v2

    const-string v3, "click_urls"

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/zzej;->zza(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzee;->zzyY:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbH()Lcom/google/android/gms/internal/zzej;

    move-result-object v2

    const-string v3, "imp_urls"

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/zzej;->zza(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzee;->zzyZ:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbH()Lcom/google/android/gms/internal/zzej;

    move-result-object v2

    const-string v3, "nofill_urls"

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/zzej;->zza(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzee;->zzza:Ljava/util/List;

    const-string v2, "refresh"

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    :goto_1
    iput-wide v2, p0, Lcom/google/android/gms/internal/zzee;->zzzc:J

    const-string v2, "rewards"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_5

    :cond_3
    iput-object v10, p0, Lcom/google/android/gms/internal/zzee;->zzzd:Ljava/lang/String;

    iput v1, p0, Lcom/google/android/gms/internal/zzee;->zzze:I

    :goto_2
    return-void

    :cond_4
    move-wide v2, v4

    goto :goto_1

    :cond_5
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "rb_type"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzee;->zzzd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "rb_amount"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzee;->zzze:I

    goto :goto_2

    :cond_6
    iput-wide v4, p0, Lcom/google/android/gms/internal/zzee;->zzyX:J

    iput-object v10, p0, Lcom/google/android/gms/internal/zzee;->zzyY:Ljava/util/List;

    iput-object v10, p0, Lcom/google/android/gms/internal/zzee;->zzyZ:Ljava/util/List;

    iput-object v10, p0, Lcom/google/android/gms/internal/zzee;->zzza:Ljava/util/List;

    iput-wide v4, p0, Lcom/google/android/gms/internal/zzee;->zzzc:J

    iput-object v10, p0, Lcom/google/android/gms/internal/zzee;->zzzd:Ljava/lang/String;

    iput v1, p0, Lcom/google/android/gms/internal/zzee;->zzze:I

    goto :goto_2
.end method

.method private zza(Lcom/google/android/gms/internal/zzed;)Z
    .locals 3

    iget-object v0, p1, Lcom/google/android/gms/internal/zzed;->zzyO:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
