.class public Lcom/google/android/gms/internal/zzgo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzgm$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzgm$zza",
        "<",
        "Lcom/google/android/gms/ads/internal/formats/zze;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzEa:Z

.field private final zzEb:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzgo;->zzEa:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzgo;->zzEb:Z

    return-void
.end method


# virtual methods
.method public synthetic zza(Lcom/google/android/gms/internal/zzgm;Lorg/json/JSONObject;)Lcom/google/android/gms/ads/internal/formats/zzh$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzgo;->zzc(Lcom/google/android/gms/internal/zzgm;Lorg/json/JSONObject;)Lcom/google/android/gms/ads/internal/formats/zze;

    move-result-object v0

    return-object v0
.end method

.method public zzc(Lcom/google/android/gms/internal/zzgm;Lorg/json/JSONObject;)Lcom/google/android/gms/ads/internal/formats/zze;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    const-string v2, "images"

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/google/android/gms/internal/zzgo;->zzEa:Z

    iget-boolean v5, p0, Lcom/google/android/gms/internal/zzgo;->zzEb:Z

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzgm;->zza(Lorg/json/JSONObject;Ljava/lang/String;ZZZ)Ljava/util/List;

    move-result-object v0

    const-string v1, "secondary_image"

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzgo;->zzEa:Z

    invoke-virtual {p1, p2, v1, v2, v3}, Lcom/google/android/gms/internal/zzgm;->zza(Lorg/json/JSONObject;Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/zziq;

    move-result-object v4

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzgm;->zze(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zziq;

    move-result-object v7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zziq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziq;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/ads/internal/formats/zze;

    const-string v1, "headline"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "body"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzcm;

    const-string v5, "call_to_action"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "advertiser"

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/ads/internal/formats/zza;

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/ads/internal/formats/zze;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/zzcm;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/formats/zza;Landroid/os/Bundle;)V

    return-object v0
.end method
