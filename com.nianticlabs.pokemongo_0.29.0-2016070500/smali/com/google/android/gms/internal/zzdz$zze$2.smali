.class Lcom/google/android/gms/internal/zzdz$zze$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzis$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzdz$zze;->zzdP()Lcom/google/android/gms/internal/zzdz$zzd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzyJ:Lcom/google/android/gms/internal/zzdz$zzd;

.field final synthetic zzyK:Lcom/google/android/gms/internal/zzdz$zze;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdz$zze;Lcom/google/android/gms/internal/zzdz$zzd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdz$zze$2;->zzyK:Lcom/google/android/gms/internal/zzdz$zze;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdz$zze$2;->zzyJ:Lcom/google/android/gms/internal/zzdz$zzd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const-string v0, "Rejecting reference for JS Engine."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdz$zze$2;->zzyJ:Lcom/google/android/gms/internal/zzdz$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdz$zzd;->reject()V

    return-void
.end method
