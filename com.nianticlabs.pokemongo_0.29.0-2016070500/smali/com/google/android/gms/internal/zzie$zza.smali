.class public Lcom/google/android/gms/internal/zzie$zza;
.super Lcom/google/android/gms/internal/zzie;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzie;-><init>(Lcom/google/android/gms/internal/zzie$1;)V

    return-void
.end method


# virtual methods
.method public zza(Landroid/app/DownloadManager$Request;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/DownloadManager$Request;->setShowRunningNotification(Z)Landroid/app/DownloadManager$Request;

    return v0
.end method

.method public zzgG()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public zzgH()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method
