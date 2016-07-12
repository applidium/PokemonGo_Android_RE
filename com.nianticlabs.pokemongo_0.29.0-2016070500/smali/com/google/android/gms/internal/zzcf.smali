.class public Lcom/google/android/gms/internal/zzcf;
.super Ljava/lang/Object;


# instance fields
.field private final zzoo:Lcom/google/android/gms/internal/zzcg;

.field private final zzvQ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzce;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzcg;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcf;->zzoo:Lcom/google/android/gms/internal/zzcg;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcf;->zzvQ:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzce;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcf;->zzvQ:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public zza(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcf;->zzoo:Lcom/google/android/gms/internal/zzcg;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcf;->zzvQ:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzce;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v0, p3, p4, v2}, Lcom/google/android/gms/internal/zzcc;->zza(Lcom/google/android/gms/internal/zzcg;Lcom/google/android/gms/internal/zzce;J[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcf;->zzvQ:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcf;->zzoo:Lcom/google/android/gms/internal/zzcg;

    invoke-static {v1, p3, p4}, Lcom/google/android/gms/internal/zzcc;->zza(Lcom/google/android/gms/internal/zzcg;J)Lcom/google/android/gms/internal/zzce;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public zzdm()Lcom/google/android/gms/internal/zzcg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcf;->zzoo:Lcom/google/android/gms/internal/zzcg;

    return-object v0
.end method
