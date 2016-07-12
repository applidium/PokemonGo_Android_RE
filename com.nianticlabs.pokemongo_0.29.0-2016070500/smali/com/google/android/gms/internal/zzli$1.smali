.class Lcom/google/android/gms/internal/zzli$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzli$zze;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzli;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzacr:Lcom/google/android/gms/internal/zzli;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzli;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzli$1;->zzacr:Lcom/google/android/gms/internal/zzli;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzc(Lcom/google/android/gms/internal/zzli$zzf;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzli$zzf",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli$1;->zzacr:Lcom/google/android/gms/internal/zzli;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzli;->zzacm:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzli$zzf;->zznF()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli$1;->zzacr:Lcom/google/android/gms/internal/zzli;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzli;->zza(Lcom/google/android/gms/internal/zzli;)Lcom/google/android/gms/common/api/zza;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli$1;->zzacr:Lcom/google/android/gms/internal/zzli;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzli;->zza(Lcom/google/android/gms/internal/zzli;)Lcom/google/android/gms/common/api/zza;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzli$zzf;->zznF()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/zza;->remove(I)V

    :cond_0
    return-void
.end method
