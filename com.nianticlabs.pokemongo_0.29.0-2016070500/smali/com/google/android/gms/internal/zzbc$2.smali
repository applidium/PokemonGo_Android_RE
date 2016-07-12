.class Lcom/google/android/gms/internal/zzbc$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbb$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbc;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzin;Lcom/google/android/gms/internal/zzan;)Lcom/google/android/gms/internal/zzbb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzrA:Lcom/google/android/gms/internal/zzin;

.field final synthetic zzrD:Lcom/google/android/gms/internal/zzbc;

.field final synthetic zzrE:Lcom/google/android/gms/internal/zzbb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbc;Lcom/google/android/gms/internal/zzin;Lcom/google/android/gms/internal/zzbb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbc$2;->zzrD:Lcom/google/android/gms/internal/zzbc;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbc$2;->zzrA:Lcom/google/android/gms/internal/zzin;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbc$2;->zzrE:Lcom/google/android/gms/internal/zzbb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzcj()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbc$2;->zzrA:Lcom/google/android/gms/internal/zzin;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbc$2;->zzrE:Lcom/google/android/gms/internal/zzbb;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzin;->zzf(Ljava/lang/Object;)V

    return-void
.end method
