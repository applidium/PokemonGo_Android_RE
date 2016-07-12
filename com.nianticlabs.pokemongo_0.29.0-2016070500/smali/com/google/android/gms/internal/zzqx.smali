.class public final Lcom/google/android/gms/internal/zzqx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$Optional;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzqx$1;,
        Lcom/google/android/gms/internal/zzqx$zza;
    }
.end annotation


# static fields
.field public static final zzaUZ:Lcom/google/android/gms/internal/zzqx;


# instance fields
.field private final zzTi:Z

.field private final zzTk:Z

.field private final zzTl:Ljava/lang/String;

.field private final zzaVa:Z

.field private final zzaVb:Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;

.field private final zzaVc:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzqx$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzqx$zza;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqx$zza;->zzCi()Lcom/google/android/gms/internal/zzqx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzqx;->zzaUZ:Lcom/google/android/gms/internal/zzqx;

    return-void
.end method

.method private constructor <init>(ZZLjava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzqx;->zzaVa:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzqx;->zzTi:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/zzqx;->zzTl:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzqx;->zzaVb:Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzqx;->zzaVc:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/zzqx;->zzTk:Z

    return-void
.end method

.method synthetic constructor <init>(ZZLjava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;ZZLcom/google/android/gms/internal/zzqx$1;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/internal/zzqx;-><init>(ZZLjava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;ZZ)V

    return-void
.end method


# virtual methods
.method public zzCf()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqx;->zzaVa:Z

    return v0
.end method

.method public zzCg()Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx;->zzaVb:Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;

    return-object v0
.end method

.method public zzCh()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqx;->zzaVc:Z

    return v0
.end method

.method public zzlY()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqx;->zzTi:Z

    return v0
.end method

.method public zzma()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqx;->zzTk:Z

    return v0
.end method

.method public zzmb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx;->zzTl:Ljava/lang/String;

    return-object v0
.end method
