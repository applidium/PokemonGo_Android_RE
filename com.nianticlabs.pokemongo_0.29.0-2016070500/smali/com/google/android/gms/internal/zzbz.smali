.class public Lcom/google/android/gms/internal/zzbz;
.super Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field private zzqV:Ljava/lang/String;

.field private zzvA:Z

.field private zzvB:Ljava/lang/String;

.field private zzvC:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbz;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbz;->zzqV:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbz;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbz;->zzqV:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzby;->zzuQ:Lcom/google/android/gms/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbu;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbz;->zzvA:Z

    sget-object v0, Lcom/google/android/gms/internal/zzby;->zzuR:Lcom/google/android/gms/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbu;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbz;->zzvB:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbz;->zzvC:Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbz;->zzvC:Ljava/util/Map;

    const-string v1, "s"

    const-string v2, "gmob_sdk"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbz;->zzvC:Ljava/util/Map;

    const-string v1, "v"

    const-string v2, "3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbz;->zzvC:Ljava/util/Map;

    const-string v1, "os"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbz;->zzvC:Ljava/util/Map;

    const-string v1, "sdk"

    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbz;->zzvC:Ljava/util/Map;

    const-string v1, "device"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbv()Lcom/google/android/gms/internal/zzid;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzid;->zzgE()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbz;->zzvC:Ljava/util/Map;

    const-string v2, "app"

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbB()Lcom/google/android/gms/internal/zzgz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbz;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzgz;->zzC(Landroid/content/Context;)Lcom/google/android/gms/internal/zzgy;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbz;->zzvC:Ljava/util/Map;

    const-string v2, "network_coarse"

    iget v3, v0, Lcom/google/android/gms/internal/zzgy;->zzGE:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbz;->zzvC:Ljava/util/Map;

    const-string v2, "network_fine"

    iget v0, v0, Lcom/google/android/gms/internal/zzgy;->zzGF:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbz;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method zzbV()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbz;->zzqV:Ljava/lang/String;

    return-object v0
.end method

.method zzdg()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbz;->zzvA:Z

    return v0
.end method

.method zzdh()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbz;->zzvB:Ljava/lang/String;

    return-object v0
.end method

.method zzdi()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbz;->zzvC:Ljava/util/Map;

    return-object v0
.end method
