.class Lcom/google/android/gms/internal/zzkn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/auth/api/proxy/ProxyApi$ProxyResult;


# instance fields
.field private zzSC:Lcom/google/android/gms/common/api/Status;

.field private zzST:Lcom/google/android/gms/auth/api/proxy/ProxyResponse;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/auth/api/proxy/ProxyResponse;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkn;->zzST:Lcom/google/android/gms/auth/api/proxy/ProxyResponse;

    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzabb:Lcom/google/android/gms/common/api/Status;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzkn;->zzSC:Lcom/google/android/gms/common/api/Status;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkn;->zzSC:Lcom/google/android/gms/common/api/Status;

    return-void
.end method


# virtual methods
.method public getResponse()Lcom/google/android/gms/auth/api/proxy/ProxyResponse;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkn;->zzST:Lcom/google/android/gms/auth/api/proxy/ProxyResponse;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkn;->zzSC:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
