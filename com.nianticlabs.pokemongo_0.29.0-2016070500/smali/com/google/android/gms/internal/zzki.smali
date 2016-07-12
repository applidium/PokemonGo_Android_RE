.class public final Lcom/google/android/gms/internal/zzki;
.super Lcom/google/android/gms/common/internal/zzj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzj",
        "<",
        "Lcom/google/android/gms/internal/zzkk;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzSa:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/auth/api/Auth$zza;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 7

    const/16 v3, 0x10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzj;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    if-nez p4, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzki;->zzSa:Landroid/os/Bundle;

    return-void

    :cond_0
    invoke-virtual {p4}, Lcom/google/android/gms/auth/api/Auth$zza;->zzlE()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected synthetic zzW(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzki;->zzau(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzkk;

    move-result-object v0

    return-object v0
.end method

.method protected zzau(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzkk;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzkk$zza;->zzaw(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzkk;

    move-result-object v0

    return-object v0
.end method

.method protected zzfK()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.auth.service.START"

    return-object v0
.end method

.method protected zzfL()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.internal.IAuthService"

    return-object v0
.end method

.method public zzlN()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzki;->zzpa()Lcom/google/android/gms/common/internal/zzf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzf;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/google/android/gms/auth/api/Auth;->PROXY_API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/zzf;->zzb(Lcom/google/android/gms/common/api/Api;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected zzly()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzki;->zzSa:Landroid/os/Bundle;

    return-object v0
.end method
