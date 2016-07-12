.class Lcom/google/android/gms/internal/zzaz$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzaz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzrw:Lcom/google/android/gms/internal/zzaz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaz$7;->zzrw:Lcom/google/android/gms/internal/zzaz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zziz;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zziz;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaz$7;->zzrw:Lcom/google/android/gms/internal/zzaz;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzaz;->zzb(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received request to untrack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaz$7;->zzrw:Lcom/google/android/gms/internal/zzaz;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaz;->zzb(Lcom/google/android/gms/internal/zzaz;)Lcom/google/android/gms/internal/zzax;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzax;->zzbX()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaF(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaz$7;->zzrw:Lcom/google/android/gms/internal/zzaz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaz;->destroy()V

    goto :goto_0
.end method
