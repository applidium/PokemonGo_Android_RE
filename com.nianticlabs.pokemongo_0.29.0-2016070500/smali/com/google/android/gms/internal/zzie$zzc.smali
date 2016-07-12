.class public Lcom/google/android/gms/internal/zzie$zzc;
.super Lcom/google/android/gms/internal/zzie$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzc"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzie$zzb;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Landroid/net/http/SslError;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzf(Lcom/google/android/gms/internal/zziz;)Landroid/webkit/WebChromeClient;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzjh;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzjh;-><init>(Lcom/google/android/gms/internal/zziz;)V

    return-object v0
.end method
