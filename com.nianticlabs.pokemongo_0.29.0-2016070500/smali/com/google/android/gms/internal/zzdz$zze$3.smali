.class Lcom/google/android/gms/internal/zzdz$zze$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzis$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzdz$zze;->zzdS()V
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
        "Lcom/google/android/gms/internal/zzbb;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzyK:Lcom/google/android/gms/internal/zzdz$zze;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdz$zze;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdz$zze$3;->zzyK:Lcom/google/android/gms/internal/zzdz$zze;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzbb;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzdz$zze$3$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzdz$zze$3$1;-><init>(Lcom/google/android/gms/internal/zzdz$zze$3;Lcom/google/android/gms/internal/zzbb;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzid;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic zzc(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzbb;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdz$zze$3;->zza(Lcom/google/android/gms/internal/zzbb;)V

    return-void
.end method
