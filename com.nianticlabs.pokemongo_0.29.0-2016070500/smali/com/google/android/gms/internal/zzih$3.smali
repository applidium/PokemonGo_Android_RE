.class Lcom/google/android/gms/internal/zzih$3;
.super Lcom/google/android/gms/internal/zzab;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzih;->zza(Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/internal/zziq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzJc:Lcom/google/android/gms/internal/zzih;

.field final synthetic zzJd:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzih;Ljava/lang/String;Lcom/google/android/gms/internal/zzm$zzb;Lcom/google/android/gms/internal/zzm$zza;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzih$3;->zzJc:Lcom/google/android/gms/internal/zzih;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzih$3;->zzJd:Ljava/util/Map;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/gms/internal/zzab;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzm$zzb;Lcom/google/android/gms/internal/zzm$zza;)V

    return-void
.end method


# virtual methods
.method public getHeaders()Ljava/util/Map;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zza;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzih$3;->zzJd:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzab;->getHeaders()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzih$3;->zzJd:Ljava/util/Map;

    goto :goto_0
.end method
