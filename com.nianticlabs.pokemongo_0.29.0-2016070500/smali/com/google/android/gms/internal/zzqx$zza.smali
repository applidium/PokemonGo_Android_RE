.class public final Lcom/google/android/gms/internal/zzqx$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzqx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# instance fields
.field private zzaSe:Ljava/lang/String;

.field private zzaVd:Z

.field private zzaVe:Z

.field private zzaVf:Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;

.field private zzaVg:Z

.field private zzaVh:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private zzet(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx$zza;->zzaSe:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx$zza;->zzaSe:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v1, "two different server client ids provided"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    return-object p1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public zzCi()Lcom/google/android/gms/internal/zzqx;
    .locals 8

    new-instance v0, Lcom/google/android/gms/internal/zzqx;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzqx$zza;->zzaVd:Z

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzqx$zza;->zzaVe:Z

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqx$zza;->zzaSe:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzqx$zza;->zzaVf:Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;

    iget-boolean v5, p0, Lcom/google/android/gms/internal/zzqx$zza;->zzaVg:Z

    iget-boolean v6, p0, Lcom/google/android/gms/internal/zzqx$zza;->zzaVh:Z

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzqx;-><init>(ZZLjava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;ZZLcom/google/android/gms/internal/zzqx$1;)V

    return-object v0
.end method

.method public zza(Ljava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;)Lcom/google/android/gms/internal/zzqx$zza;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzqx$zza;->zzaVd:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzqx$zza;->zzaVe:Z

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzqx$zza;->zzet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqx$zza;->zzaSe:Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqx$zza;->zzaVf:Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;

    return-object p0
.end method
