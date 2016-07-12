.class public Lcom/google/android/gms/signin/internal/zzi;
.super Lcom/google/android/gms/common/internal/zzj;

# interfaces
.implements Lcom/google/android/gms/internal/zzqw;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/signin/internal/zzi$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzj",
        "<",
        "Lcom/google/android/gms/signin/internal/zzf;",
        ">;",
        "Lcom/google/android/gms/internal/zzqw;"
    }
.end annotation


# instance fields
.field private final zzaVl:Z

.field private final zzaVm:Ljava/util/concurrent/ExecutorService;

.field private final zzaaT:Lcom/google/android/gms/internal/zzqx;

.field private final zzabI:Lcom/google/android/gms/common/internal/zzf;

.field private zzafj:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ZLcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/internal/zzqx;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/util/concurrent/ExecutorService;)V
    .locals 7

    const/16 v3, 0x2c

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzj;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    iput-boolean p3, p0, Lcom/google/android/gms/signin/internal/zzi;->zzaVl:Z

    iput-object p4, p0, Lcom/google/android/gms/signin/internal/zzi;->zzabI:Lcom/google/android/gms/common/internal/zzf;

    iput-object p5, p0, Lcom/google/android/gms/signin/internal/zzi;->zzaaT:Lcom/google/android/gms/internal/zzqx;

    invoke-virtual {p4}, Lcom/google/android/gms/common/internal/zzf;->zzoR()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/signin/internal/zzi;->zzafj:Ljava/lang/Integer;

    iput-object p8, p0, Lcom/google/android/gms/signin/internal/zzi;->zzaVm:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/zzqx;Ljava/lang/Integer;Ljava/util/concurrent/ExecutorService;)Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.google.android.gms.signin.internal.offlineAccessRequested"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqx;->zzCf()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.google.android.gms.signin.internal.idTokenRequested"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqx;->zzlY()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.google.android.gms.signin.internal.serverClientId"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqx;->zzmb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqx;->zzCg()Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/gms/signin/internal/zzi$zza;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/signin/internal/zzi$zza;-><init>(Lcom/google/android/gms/internal/zzqx;Ljava/util/concurrent/ExecutorService;)V

    invoke-virtual {v1}, Lcom/google/android/gms/signin/internal/zzi$zza;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "com.google.android.gms.signin.internal.signInCallbacks"

    new-instance v3, Lcom/google/android/gms/common/internal/BinderWrapper;

    invoke-direct {v3, v1}, Lcom/google/android/gms/common/internal/BinderWrapper;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    if-eqz p1, :cond_1

    const-string v1, "com.google.android.gms.common.internal.ClientSettings.sessionId"

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    const-string v1, "com.google.android.gms.signin.internal.usePromptModeForAuthCode"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqx;->zzCh()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.google.android.gms.signin.internal.forceCodeForRefreshToken"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqx;->zzma()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method public connect()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/zzj$zzf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/zzj$zzf;-><init>(Lcom/google/android/gms/common/internal/zzj;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/signin/internal/zzi;->zza(Lcom/google/android/gms/common/api/GoogleApiClient$zza;)V

    return-void
.end method

.method public zzCe()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/signin/internal/zzi;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/signin/internal/zzf;

    iget-object v1, p0, Lcom/google/android/gms/signin/internal/zzi;->zzafj:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/signin/internal/zzf;->zzjq(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "SignInClientImpl"

    const-string v1, "Remote service probably died when clearAccountFromSessionStore is called"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected synthetic zzW(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/signin/internal/zzi;->zzdO(Landroid/os/IBinder;)Lcom/google/android/gms/signin/internal/zzf;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/common/internal/zzp;Ljava/util/Set;Lcom/google/android/gms/signin/internal/zze;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/internal/zzp;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;",
            "Lcom/google/android/gms/signin/internal/zze;",
            ")V"
        }
    .end annotation

    const-string v0, "Expecting a valid ISignInCallbacks"

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/signin/internal/zzi;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/signin/internal/zzf;

    new-instance v1, Lcom/google/android/gms/common/internal/AuthAccountRequest;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/common/internal/AuthAccountRequest;-><init>(Lcom/google/android/gms/common/internal/zzp;Ljava/util/Set;)V

    invoke-interface {v0, v1, p3}, Lcom/google/android/gms/signin/internal/zzf;->zza(Lcom/google/android/gms/common/internal/AuthAccountRequest;Lcom/google/android/gms/signin/internal/zze;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SignInClientImpl"

    const-string v2, "Remote service probably died when authAccount is called"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    new-instance v2, Lcom/google/android/gms/signin/internal/AuthAccountResult;

    invoke-direct {v2}, Lcom/google/android/gms/signin/internal/AuthAccountResult;-><init>()V

    invoke-interface {p3, v1, v2}, Lcom/google/android/gms/signin/internal/zze;->zza(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/signin/internal/AuthAccountResult;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v1, "SignInClientImpl"

    const-string v2, "ISignInCallbacks#onAuthAccount should be executed from the same process, unexpected RemoteException."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/common/internal/zzp;Z)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/signin/internal/zzi;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/signin/internal/zzf;

    iget-object v1, p0, Lcom/google/android/gms/signin/internal/zzi;->zzafj:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1, p2}, Lcom/google/android/gms/signin/internal/zzf;->zza(Lcom/google/android/gms/common/internal/zzp;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "SignInClientImpl"

    const-string v1, "Remote service probably died when saveDefaultAccount is called"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/common/internal/zzt;)V
    .locals 4

    const-string v0, "Expecting a valid IResolveAccountCallbacks"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/signin/internal/zzi;->zzabI:Lcom/google/android/gms/common/internal/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzf;->zzoI()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/signin/internal/zzi;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/signin/internal/zzf;

    new-instance v2, Lcom/google/android/gms/common/internal/ResolveAccountRequest;

    iget-object v3, p0, Lcom/google/android/gms/signin/internal/zzi;->zzafj:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/common/internal/ResolveAccountRequest;-><init>(Landroid/accounts/Account;I)V

    invoke-interface {v0, v2, p1}, Lcom/google/android/gms/signin/internal/zzf;->zza(Lcom/google/android/gms/common/internal/ResolveAccountRequest;Lcom/google/android/gms/common/internal/zzt;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SignInClientImpl"

    const-string v2, "Remote service probably died when resolveAccount is called"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    new-instance v1, Lcom/google/android/gms/common/internal/ResolveAccountResponse;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;-><init>(I)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/common/internal/zzt;->zzb(Lcom/google/android/gms/common/internal/ResolveAccountResponse;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v1, "SignInClientImpl"

    const-string v2, "IResolveAccountCallbacks#onAccountResolutionComplete should be executed from the same process, unexpected RemoteException."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected zzdO(Landroid/os/IBinder;)Lcom/google/android/gms/signin/internal/zzf;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/signin/internal/zzf$zza;->zzdN(Landroid/os/IBinder;)Lcom/google/android/gms/signin/internal/zzf;

    move-result-object v0

    return-object v0
.end method

.method protected zzfK()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.signin.service.START"

    return-object v0
.end method

.method protected zzfL()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.signin.internal.ISignInService"

    return-object v0
.end method

.method public zzlN()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/signin/internal/zzi;->zzaVl:Z

    return v0
.end method

.method protected zzly()Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/signin/internal/zzi;->zzaaT:Lcom/google/android/gms/internal/zzqx;

    iget-object v1, p0, Lcom/google/android/gms/signin/internal/zzi;->zzabI:Lcom/google/android/gms/common/internal/zzf;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzf;->zzoR()Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/signin/internal/zzi;->zzaVm:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/signin/internal/zzi;->zza(Lcom/google/android/gms/internal/zzqx;Ljava/lang/Integer;Ljava/util/concurrent/ExecutorService;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/signin/internal/zzi;->zzabI:Lcom/google/android/gms/common/internal/zzf;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzf;->zzoN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/signin/internal/zzi;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.google.android.gms.signin.internal.realClientPackageName"

    iget-object v2, p0, Lcom/google/android/gms/signin/internal/zzi;->zzabI:Lcom/google/android/gms/common/internal/zzf;

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/zzf;->zzoN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method
