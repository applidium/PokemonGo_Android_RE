.class Lcom/google/android/gms/internal/zzgt$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzis$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzgt$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzis$zzc",
        "<",
        "Lcom/google/android/gms/internal/zzbe;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzFH:Lcom/google/android/gms/internal/zzce;

.field final synthetic zzFI:Lcom/google/android/gms/internal/zzgt$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzgt$1;Lcom/google/android/gms/internal/zzce;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgt$1$1;->zzFI:Lcom/google/android/gms/internal/zzgt$1;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgt$1$1;->zzFH:Lcom/google/android/gms/internal/zzce;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/internal/zzbe;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgt$1$1;->zzFI:Lcom/google/android/gms/internal/zzgt$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgt$1;->zzoD:Lcom/google/android/gms/internal/zzcg;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgt$1$1;->zzFH:Lcom/google/android/gms/internal/zzce;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "jsf"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcg;->zza(Lcom/google/android/gms/internal/zzce;[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgt$1$1;->zzFI:Lcom/google/android/gms/internal/zzgt$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgt$1;->zzoD:Lcom/google/android/gms/internal/zzcg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcg;->zzdo()V

    const-string v0, "/invalidRequest"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgt$1$1;->zzFI:Lcom/google/android/gms/internal/zzgt$1;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzgt$1;->zzFE:Lcom/google/android/gms/internal/zzgv;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzgv;->zzFR:Lcom/google/android/gms/internal/zzdk;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzbe;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzdk;)V

    const-string v0, "/loadAdURL"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgt$1$1;->zzFI:Lcom/google/android/gms/internal/zzgt$1;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzgt$1;->zzFE:Lcom/google/android/gms/internal/zzgv;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzgv;->zzFS:Lcom/google/android/gms/internal/zzdk;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzbe;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzdk;)V

    :try_start_0
    const-string v0, "AFMA_buildAdURL"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgt$1$1;->zzFI:Lcom/google/android/gms/internal/zzgt$1;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzgt$1;->zzFG:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzbe;->zza(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Error requesting an ad url"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public synthetic zzc(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzbe;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzgt$1$1;->zzb(Lcom/google/android/gms/internal/zzbe;)V

    return-void
.end method
