.class public Lcom/google/android/gms/auth/api/proxy/ProxyRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/proxy/ProxyRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zzSL:Ljava/lang/String;

.field private zzSM:I

.field private zzSN:J

.field private zzSO:[B

.field private zzSP:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;->HTTP_METHOD_GET:I

    iput v0, p0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest$Builder;->zzSM:I

    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest$Builder;->zzSN:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest$Builder;->zzSO:[B

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest$Builder;->zzSP:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzcr(Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest$Builder;->zzSL:Ljava/lang/String;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The supplied url [ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is not match Patterns.WEB_URL!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Lcom/google/android/gms/auth/api/proxy/ProxyRequest;
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest$Builder;->zzSO:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest$Builder;->zzSO:[B

    :cond_0
    new-instance v0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest$Builder;->zzSL:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest$Builder;->zzSM:I

    iget-wide v4, p0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest$Builder;->zzSN:J

    iget-object v6, p0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest$Builder;->zzSO:[B

    iget-object v7, p0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest$Builder;->zzSP:Landroid/os/Bundle;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;-><init>(ILjava/lang/String;IJ[BLandroid/os/Bundle;)V

    return-object v0
.end method

.method public putHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/auth/api/proxy/ProxyRequest$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const-string v0, "Header name cannot be null or empty!"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzx;->zzh(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest$Builder;->zzSP:Landroid/os/Bundle;

    if-nez p2, :cond_0

    const-string p2, ""

    .end local p2    # "value":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setBody([B)Lcom/google/android/gms/auth/api/proxy/ProxyRequest$Builder;
    .locals 0
    .param p1, "body"    # [B

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest$Builder;->zzSO:[B

    return-object p0
.end method

.method public setHttpMethod(I)Lcom/google/android/gms/auth/api/proxy/ProxyRequest$Builder;
    .locals 2
    .param p1, "method"    # I

    .prologue
    if-ltz p1, :cond_0

    sget v0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest;->LAST_CODE:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Unrecognized http method code."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    iput p1, p0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest$Builder;->zzSM:I

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTimeoutMillis(J)Lcom/google/android/gms/auth/api/proxy/ProxyRequest$Builder;
    .locals 3
    .param p1, "timeoutMillis"    # J

    .prologue
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "The specified timeout must be non-negative."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    iput-wide p1, p0, Lcom/google/android/gms/auth/api/proxy/ProxyRequest$Builder;->zzSN:J

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
