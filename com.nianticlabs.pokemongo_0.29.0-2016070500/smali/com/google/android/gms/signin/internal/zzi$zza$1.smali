.class Lcom/google/android/gms/signin/internal/zzi$zza$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/signin/internal/zzi$zza;->zza(Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/signin/internal/zzf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaVn:Ljava/util/List;

.field final synthetic zzaVo:Ljava/lang/String;

.field final synthetic zzaVp:Lcom/google/android/gms/signin/internal/zzf;

.field final synthetic zzaVq:Lcom/google/android/gms/signin/internal/zzi$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/signin/internal/zzi$zza;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/signin/internal/zzf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/signin/internal/zzi$zza$1;->zzaVq:Lcom/google/android/gms/signin/internal/zzi$zza;

    iput-object p2, p0, Lcom/google/android/gms/signin/internal/zzi$zza$1;->zzaVn:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/signin/internal/zzi$zza$1;->zzaVo:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/signin/internal/zzi$zza$1;->zzaVp:Lcom/google/android/gms/signin/internal/zzf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/signin/internal/zzi$zza$1;->zzaVq:Lcom/google/android/gms/signin/internal/zzi$zza;

    invoke-static {v0}, Lcom/google/android/gms/signin/internal/zzi$zza;->zza(Lcom/google/android/gms/signin/internal/zzi$zza;)Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/google/android/gms/signin/internal/zzi$zza$1;->zzaVn:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/signin/internal/zzi$zza$1;->zzaVo:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;->onCheckServerAuthorization(Ljava/lang/String;Ljava/util/Set;)Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks$CheckResult;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/signin/internal/CheckServerAuthResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks$CheckResult;->zznD()Z

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks$CheckResult;->zznE()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/signin/internal/CheckServerAuthResult;-><init>(ZLjava/util/Set;)V

    iget-object v0, p0, Lcom/google/android/gms/signin/internal/zzi$zza$1;->zzaVp:Lcom/google/android/gms/signin/internal/zzf;

    invoke-interface {v0, v1}, Lcom/google/android/gms/signin/internal/zzf;->zza(Lcom/google/android/gms/signin/internal/CheckServerAuthResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SignInClientImpl"

    const-string v2, "RemoteException thrown when processing checkServerAuthorization callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
