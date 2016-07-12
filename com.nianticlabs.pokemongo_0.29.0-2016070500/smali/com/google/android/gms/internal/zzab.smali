.class public Lcom/google/android/gms/internal/zzab;
.super Lcom/google/android/gms/internal/zzk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzk",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzaG:Lcom/google/android/gms/internal/zzm$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzm$zzb",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/google/android/gms/internal/zzm$zzb;Lcom/google/android/gms/internal/zzm$zza;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzm$zzb",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/zzm$zza;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/gms/internal/zzk;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/zzm$zza;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/zzab;->zzaG:Lcom/google/android/gms/internal/zzm$zzb;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzm$zzb;Lcom/google/android/gms/internal/zzm$zza;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzm$zzb",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/zzm$zza;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzab;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/zzm$zzb;Lcom/google/android/gms/internal/zzm$zza;)V

    return-void
.end method


# virtual methods
.method protected zza(Lcom/google/android/gms/internal/zzi;)Lcom/google/android/gms/internal/zzm;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzi;",
            ")",
            "Lcom/google/android/gms/internal/zzm",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzi;->data:[B

    iget-object v2, p1, Lcom/google/android/gms/internal/zzi;->zzA:Ljava/util/Map;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzx;->zza(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzx;->zzb(Lcom/google/android/gms/internal/zzi;)Lcom/google/android/gms/internal/zzb$zza;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzm;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzb$zza;)Lcom/google/android/gms/internal/zzm;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzi;->data:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method protected synthetic zza(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzab;->zzi(Ljava/lang/String;)V

    return-void
.end method

.method protected zzi(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzab;->zzaG:Lcom/google/android/gms/internal/zzm$zzb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzm$zzb;->zzb(Ljava/lang/Object;)V

    return-void
.end method
