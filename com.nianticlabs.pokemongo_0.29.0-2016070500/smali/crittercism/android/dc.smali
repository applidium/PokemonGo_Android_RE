.class public final Lcrittercism/android/dc;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljavax/net/ssl/SSLSocketFactory;


# instance fields
.field private b:Ljava/net/URL;

.field private c:Ljava/util/Map;

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 37
    sput-object v4, Lcrittercism/android/dc;->a:Ljavax/net/ssl/SSLSocketFactory;

    .line 42
    :try_start_0
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 43
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 44
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    instance-of v1, v0, Lcrittercism/android/ab;

    if-eqz v1, :cond_1

    .line 47
    check-cast v0, Lcrittercism/android/ab;

    invoke-virtual {v0}, Lcrittercism/android/ab;->a()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    sput-object v0, Lcrittercism/android/dc;->a:Ljavax/net/ssl/SSLSocketFactory;

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    sput-object v0, Lcrittercism/android/dc;->a:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    sput-object v4, Lcrittercism/android/dc;->a:Ljavax/net/ssl/SSLSocketFactory;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcrittercism/android/dc;->c:Ljava/util/Map;

    .line 61
    iput v4, p0, Lcrittercism/android/dc;->d:I

    .line 62
    iput-boolean v5, p0, Lcrittercism/android/dc;->e:Z

    .line 63
    iput-boolean v5, p0, Lcrittercism/android/dc;->f:Z

    .line 64
    const-string v0, "POST"

    iput-object v0, p0, Lcrittercism/android/dc;->g:Ljava/lang/String;

    .line 65
    iput-boolean v4, p0, Lcrittercism/android/dc;->h:Z

    .line 66
    const/16 v0, 0x9c4

    iput v0, p0, Lcrittercism/android/dc;->i:I

    .line 81
    iput-object p1, p0, Lcrittercism/android/dc;->b:Ljava/net/URL;

    .line 84
    iget-object v0, p0, Lcrittercism/android/dc;->c:Ljava/util/Map;

    const-string v1, "User-Agent"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "5.0.8"

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcrittercism/android/dc;->c:Ljava/util/Map;

    const-string v1, "Content-Type"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "application/json"

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcrittercism/android/dc;->c:Ljava/util/Map;

    const-string v1, "Accept"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "text/plain"

    aput-object v3, v2, v4

    const-string v3, "application/json"

    aput-object v3, v2, v5

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-void
.end method


# virtual methods
.method public final a()Ljava/net/HttpURLConnection;
    .locals 6

    .prologue
    .line 91
    iget-object v0, p0, Lcrittercism/android/dc;->b:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 93
    iget-object v1, p0, Lcrittercism/android/dc;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 94
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 95
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 96
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_1
    iget v1, p0, Lcrittercism/android/dc;->i:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 101
    iget v1, p0, Lcrittercism/android/dc;->i:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 102
    iget-boolean v1, p0, Lcrittercism/android/dc;->e:Z

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 103
    iget-boolean v1, p0, Lcrittercism/android/dc;->f:Z

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 105
    iget-boolean v1, p0, Lcrittercism/android/dc;->h:Z

    if-eqz v1, :cond_2

    .line 106
    iget v1, p0, Lcrittercism/android/dc;->d:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 109
    :cond_2
    iget-object v1, p0, Lcrittercism/android/dc;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 119
    instance-of v1, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_3

    move-object v1, v0

    .line 120
    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    .line 121
    sget-object v2, Lcrittercism/android/dc;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v2, :cond_4

    .line 122
    sget-object v2, Lcrittercism/android/dc;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 128
    :cond_3
    return-object v0

    .line 124
    :cond_4
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-direct {v0}, Ljava/security/GeneralSecurityException;-><init>()V

    throw v0
.end method
