.class Lcom/google/android/gms/internal/zzdl$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzdl;->zza(Lcom/google/android/gms/internal/zziz;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzwP:Ljava/util/Map;

.field final synthetic zzxB:Lcom/google/android/gms/internal/zziz;

.field final synthetic zzxC:Lcom/google/android/gms/internal/zzdl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdl;Ljava/util/Map;Lcom/google/android/gms/internal/zziz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdl$1;->zzxC:Lcom/google/android/gms/internal/zzdl;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdl$1;->zzwP:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzdl$1;->zzxB:Lcom/google/android/gms/internal/zziz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "Received Http request."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaF(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdl$1;->zzwP:Ljava/util/Map;

    const-string v1, "http_request"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdl$1;->zzxC:Lcom/google/android/gms/internal/zzdl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzdl;->zzX(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Response should not be null."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/zzid;->zzIE:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zzdl$1$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzdl$1$1;-><init>(Lcom/google/android/gms/internal/zzdl$1;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
