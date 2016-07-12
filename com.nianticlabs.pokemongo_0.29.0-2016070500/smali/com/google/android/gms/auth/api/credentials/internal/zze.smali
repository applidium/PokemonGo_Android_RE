.class public final Lcom/google/android/gms/auth/api/credentials/internal/zze;
.super Lcom/google/android/gms/common/internal/zzj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzj",
        "<",
        "Lcom/google/android/gms/auth/api/credentials/internal/zzh;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzSJ:Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 7

    const/16 v3, 0x44

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzj;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    iput-object p4, p0, Lcom/google/android/gms/auth/api/credentials/internal/zze;->zzSJ:Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;

    return-void
.end method


# virtual methods
.method protected synthetic zzW(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/api/credentials/internal/zze;->zzar(Landroid/os/IBinder;)Lcom/google/android/gms/auth/api/credentials/internal/zzh;

    move-result-object v0

    return-object v0
.end method

.method protected zzar(Landroid/os/IBinder;)Lcom/google/android/gms/auth/api/credentials/internal/zzh;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/auth/api/credentials/internal/zzh$zza;->zzat(Landroid/os/IBinder;)Lcom/google/android/gms/auth/api/credentials/internal/zzh;

    move-result-object v0

    return-object v0
.end method

.method protected zzfK()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.credentials.service.START"

    return-object v0
.end method

.method protected zzfL()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.credentials.internal.ICredentialsService"

    return-object v0
.end method

.method protected zzly()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/internal/zze;->zzSJ:Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/internal/zze;->zzSJ:Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;->zzly()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method
