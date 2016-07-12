.class public Lcom/google/android/gms/internal/zzbg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbf;


# instance fields
.field private final zzrL:Lcom/google/android/gms/internal/zzbe;

.field private final zzrM:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/util/AbstractMap$SimpleEntry",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzdk;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbe;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbg;->zzrL:Lcom/google/android/gms/internal/zzbe;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbg;->zzrM:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzdk;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbg;->zzrL:Lcom/google/android/gms/internal/zzbe;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzbe;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzdk;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbg;->zzrM:Ljava/util/HashSet;

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {v1, p1, p2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public zza(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbg;->zzrL:Lcom/google/android/gms/internal/zzbe;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzbe;->zza(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public zza(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbg;->zzrL:Lcom/google/android/gms/internal/zzbe;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzbe;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzdk;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbg;->zzrL:Lcom/google/android/gms/internal/zzbe;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzbe;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzdk;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbg;->zzrM:Ljava/util/HashSet;

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {v1, p1, p2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public zzb(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbg;->zzrL:Lcom/google/android/gms/internal/zzbe;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzbe;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public zzck()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbg;->zzrM:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/AbstractMap$SimpleEntry;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unregistering eventhandler: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzdk;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->v(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbg;->zzrL:Lcom/google/android/gms/internal/zzbe;

    invoke-virtual {v0}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdk;

    invoke-interface {v3, v1, v0}, Lcom/google/android/gms/internal/zzbe;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzdk;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbg;->zzrM:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method
