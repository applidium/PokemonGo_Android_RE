.class Lcom/google/android/gms/internal/zzbc$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbc;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzan;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzrA:Lcom/google/android/gms/internal/zzin;

.field final synthetic zzrB:Lcom/google/android/gms/internal/zzan;

.field final synthetic zzrC:Ljava/lang/String;

.field final synthetic zzrD:Lcom/google/android/gms/internal/zzbc;

.field final synthetic zzry:Landroid/content/Context;

.field final synthetic zzrz:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbc;Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzin;Lcom/google/android/gms/internal/zzan;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbc$1;->zzrD:Lcom/google/android/gms/internal/zzbc;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbc$1;->zzry:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbc$1;->zzrz:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbc$1;->zzrA:Lcom/google/android/gms/internal/zzin;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzbc$1;->zzrB:Lcom/google/android/gms/internal/zzan;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzbc$1;->zzrC:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbc$1;->zzrD:Lcom/google/android/gms/internal/zzbc;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbc$1;->zzry:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbc$1;->zzrz:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbc$1;->zzrA:Lcom/google/android/gms/internal/zzin;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbc$1;->zzrB:Lcom/google/android/gms/internal/zzan;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzbc;->zza(Lcom/google/android/gms/internal/zzbc;Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzin;Lcom/google/android/gms/internal/zzan;)Lcom/google/android/gms/internal/zzbb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbc$1;->zzrC:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbb;->zzt(Ljava/lang/String;)V

    return-void
.end method
