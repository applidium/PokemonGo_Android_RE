.class public Lcom/google/android/gms/auth/api/signin/internal/zzg;
.super Lcom/google/android/gms/common/internal/zzj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzj",
        "<",
        "Lcom/google/android/gms/auth/api/signin/internal/zze;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzTq:Lcom/google/android/gms/auth/api/signin/zzg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/auth/api/signin/zzg;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 7

    const/16 v3, 0x57

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzj;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    invoke-static {p4}, Lcom/google/android/gms/common/internal/zzx;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/signin/zzg;

    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzg;->zzTq:Lcom/google/android/gms/auth/api/signin/zzg;

    return-void
.end method


# virtual methods
.method protected synthetic zzW(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/api/signin/internal/zzg;->zzax(Landroid/os/IBinder;)Lcom/google/android/gms/auth/api/signin/internal/zze;

    move-result-object v0

    return-object v0
.end method

.method protected zzax(Landroid/os/IBinder;)Lcom/google/android/gms/auth/api/signin/internal/zze;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/internal/zze$zza;->zzaz(Landroid/os/IBinder;)Lcom/google/android/gms/auth/api/signin/internal/zze;

    move-result-object v0

    return-object v0
.end method

.method protected zzfK()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.signin.service.START"

    return-object v0
.end method

.method protected zzfL()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.signin.internal.ISignInService"

    return-object v0
.end method
