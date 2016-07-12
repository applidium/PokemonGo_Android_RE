.class public final Lcrittercism/android/s;
.super Ljavax/net/ssl/HttpsURLConnection;


# instance fields
.field private a:Lcrittercism/android/e;

.field private b:Ljavax/net/ssl/HttpsURLConnection;

.field private c:Lcrittercism/android/c;

.field private d:Lcrittercism/android/d;

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Ljavax/net/ssl/HttpsURLConnection;Lcrittercism/android/e;Lcrittercism/android/d;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 47
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;-><init>(Ljava/net/URL;)V

    .line 30
    iput-object v1, p0, Lcrittercism/android/s;->a:Lcrittercism/android/e;

    .line 32
    iput-object v1, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    .line 34
    iput-object v1, p0, Lcrittercism/android/s;->c:Lcrittercism/android/c;

    .line 36
    iput-object v1, p0, Lcrittercism/android/s;->d:Lcrittercism/android/d;

    .line 38
    iput-boolean v2, p0, Lcrittercism/android/s;->e:Z

    .line 39
    iput-boolean v2, p0, Lcrittercism/android/s;->f:Z

    .line 48
    iput-object p2, p0, Lcrittercism/android/s;->a:Lcrittercism/android/e;

    .line 49
    iput-object p1, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    .line 50
    iput-object p3, p0, Lcrittercism/android/s;->d:Lcrittercism/android/d;

    .line 51
    new-instance v0, Lcrittercism/android/c;

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-direct {v0, v1}, Lcrittercism/android/c;-><init>(Ljava/net/URL;)V

    iput-object v0, p0, Lcrittercism/android/s;->c:Lcrittercism/android/c;

    .line 53
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 54
    instance-of v1, v0, Lcrittercism/android/ab;

    if-eqz v1, :cond_0

    .line 55
    check-cast v0, Lcrittercism/android/ab;

    .line 56
    iget-object v1, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Lcrittercism/android/ab;->a()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 58
    :cond_0
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 62
    :try_start_0
    iget-boolean v0, p0, Lcrittercism/android/s;->f:Z

    if-nez v0, :cond_0

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcrittercism/android/s;->f:Z

    .line 64
    iget-object v0, p0, Lcrittercism/android/s;->c:Lcrittercism/android/c;

    iget-object v1, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcrittercism/android/c;->f:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcrittercism/android/s;->c:Lcrittercism/android/c;

    invoke-virtual {v0}, Lcrittercism/android/c;->b()V

    .line 66
    iget-object v0, p0, Lcrittercism/android/s;->c:Lcrittercism/android/c;

    iget-object v1, p0, Lcrittercism/android/s;->d:Lcrittercism/android/d;

    invoke-virtual {v1}, Lcrittercism/android/d;->a()Lcrittercism/android/b;

    move-result-object v1

    iput-object v1, v0, Lcrittercism/android/c;->j:Lcrittercism/android/b;

    .line 67
    invoke-static {}, Lcrittercism/android/bc;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcrittercism/android/s;->c:Lcrittercism/android/c;

    invoke-static {}, Lcrittercism/android/bc;->a()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcrittercism/android/c;->a(Landroid/location/Location;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    throw v0

    .line 73
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 85
    :try_start_0
    iget-boolean v0, p0, Lcrittercism/android/s;->e:Z

    if-eqz v0, :cond_0

    .line 99
    :goto_0
    return-void

    .line 89
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcrittercism/android/s;->e:Z

    .line 91
    iget-object v0, p0, Lcrittercism/android/s;->c:Lcrittercism/android/c;

    invoke-virtual {v0}, Lcrittercism/android/c;->c()V

    .line 92
    iget-object v0, p0, Lcrittercism/android/s;->c:Lcrittercism/android/c;

    invoke-virtual {v0, p1}, Lcrittercism/android/c;->a(Ljava/lang/Throwable;)V

    .line 93
    iget-object v0, p0, Lcrittercism/android/s;->a:Lcrittercism/android/e;

    iget-object v1, p0, Lcrittercism/android/s;->c:Lcrittercism/android/c;

    invoke-virtual {v0, v1}, Lcrittercism/android/e;->a(Lcrittercism/android/c;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    throw v0

    .line 96
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private b()V
    .locals 8

    .prologue
    const-wide v6, 0x7fffffffffffffffL

    const/4 v1, 0x1

    .line 103
    const/4 v0, 0x0

    :try_start_0
    iget-boolean v2, p0, Lcrittercism/android/s;->e:Z

    if-nez v2, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcrittercism/android/s;->e:Z

    iget-object v2, p0, Lcrittercism/android/s;->c:Lcrittercism/android/c;

    invoke-virtual {v2}, Lcrittercism/android/c;->c()V

    iget-object v2, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v2, Lcrittercism/android/p;

    iget-object v3, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v3}, Lcrittercism/android/p;-><init>(Ljava/util/Map;)V

    const-string v3, "Content-Length"

    invoke-virtual {v2, v3}, Lcrittercism/android/p;->b(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    iget-object v0, p0, Lcrittercism/android/s;->c:Lcrittercism/android/c;

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Lcrittercism/android/c;->b(J)V

    move v0, v1

    :cond_0
    const-string v1, "X-Android-Sent-Millis"

    invoke-virtual {v2, v1}, Lcrittercism/android/p;->a(Ljava/lang/String;)J

    move-result-wide v4

    const-string v1, "X-Android-Received-Millis"

    invoke-virtual {v2, v1}, Lcrittercism/android/p;->a(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    cmp-long v1, v2, v6

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcrittercism/android/s;->c:Lcrittercism/android/c;

    invoke-virtual {v1, v4, v5}, Lcrittercism/android/c;->e(J)V

    iget-object v1, p0, Lcrittercism/android/s;->c:Lcrittercism/android/c;

    invoke-virtual {v1, v2, v3}, Lcrittercism/android/c;->f(J)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcrittercism/android/s;->c:Lcrittercism/android/c;

    iget-object v2, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v2

    iput v2, v1, Lcrittercism/android/c;->e:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    if-eqz v0, :cond_2

    :try_start_2
    iget-object v0, p0, Lcrittercism/android/s;->a:Lcrittercism/android/e;

    iget-object v1, p0, Lcrittercism/android/s;->c:Lcrittercism/android/c;

    invoke-virtual {v0, v1}, Lcrittercism/android/e;->a(Lcrittercism/android/c;)V
    :try_end_2
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 109
    :cond_2
    :goto_1
    return-void

    .line 104
    :catch_0
    move-exception v0

    throw v0

    .line 106
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 363
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    return-void
.end method

.method public final connect()V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 369
    return-void
.end method

.method public final disconnect()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 245
    :try_start_0
    iget-boolean v0, p0, Lcrittercism/android/s;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcrittercism/android/s;->c:Lcrittercism/android/c;

    iget-boolean v0, v0, Lcrittercism/android/c;->b:Z

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Lcrittercism/android/s;->a:Lcrittercism/android/e;

    iget-object v1, p0, Lcrittercism/android/s;->c:Lcrittercism/android/c;

    invoke-virtual {v0, v1}, Lcrittercism/android/e;->a(Lcrittercism/android/c;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 248
    :catch_0
    move-exception v0

    throw v0

    .line 250
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 634
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final getAllowUserInteraction()Z
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getAllowUserInteraction()Z

    move-result v0

    return v0
.end method

.method public final getCipherSuite()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getConnectTimeout()I
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getConnectTimeout()I

    move-result v0

    return v0
.end method

.method public final getContent()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 383
    .line 385
    invoke-direct {p0}, Lcrittercism/android/s;->a()V

    .line 388
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getContent()Ljava/lang/Object;

    move-result-object v0

    .line 389
    invoke-direct {p0}, Lcrittercism/android/s;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    return-object v0

    .line 390
    :catch_0
    move-exception v0

    .line 391
    invoke-direct {p0, v0}, Lcrittercism/android/s;->a(Ljava/lang/Throwable;)V

    .line 392
    throw v0
.end method

.method public final getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "types"    # [Ljava/lang/Class;

    .prologue
    .line 401
    .line 403
    invoke-direct {p0}, Lcrittercism/android/s;->a()V

    .line 406
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 407
    invoke-direct {p0}, Lcrittercism/android/s;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    return-object v0

    .line 408
    :catch_0
    move-exception v0

    .line 409
    invoke-direct {p0, v0}, Lcrittercism/android/s;->a(Ljava/lang/Throwable;)V

    .line 410
    throw v0
.end method

.method public final getContentEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 418
    invoke-direct {p0}, Lcrittercism/android/s;->a()V

    .line 419
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    .line 420
    invoke-direct {p0}, Lcrittercism/android/s;->b()V

    .line 421
    return-object v0
.end method

.method public final getContentLength()I
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getContentLength()I

    move-result v0

    return v0
.end method

.method public final getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 431
    invoke-direct {p0}, Lcrittercism/android/s;->a()V

    .line 432
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 433
    invoke-direct {p0}, Lcrittercism/android/s;->b()V

    .line 434
    return-object v0
.end method

.method public final getDate()J
    .locals 2

    .prologue
    .line 439
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getDate()J

    move-result-wide v0

    .line 440
    return-wide v0
.end method

.method public final getDefaultUseCaches()Z
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public final getDoInput()Z
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getDoInput()Z

    move-result v0

    return v0
.end method

.method public final getDoOutput()Z
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getDoOutput()Z

    move-result v0

    return v0
.end method

.method public final getErrorStream()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 257
    invoke-direct {p0}, Lcrittercism/android/s;->a()V

    .line 261
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    .line 263
    invoke-direct {p0}, Lcrittercism/android/s;->b()V

    .line 265
    if-eqz v1, :cond_0

    .line 267
    :try_start_0
    new-instance v0, Lcrittercism/android/t;

    iget-object v2, p0, Lcrittercism/android/s;->a:Lcrittercism/android/e;

    iget-object v3, p0, Lcrittercism/android/s;->c:Lcrittercism/android/c;

    invoke-direct {v0, v1, v2, v3}, Lcrittercism/android/t;-><init>(Ljava/io/InputStream;Lcrittercism/android/e;Lcrittercism/android/c;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 275
    :goto_0
    return-object v0

    .line 268
    :catch_0
    move-exception v0

    throw v0

    .line 270
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final getExpiration()J
    .locals 2

    .prologue
    .line 460
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getExpiration()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getHeaderField(I)Ljava/lang/String;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 465
    invoke-direct {p0}, Lcrittercism/android/s;->a()V

    .line 466
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    .line 467
    invoke-direct {p0}, Lcrittercism/android/s;->b()V

    .line 468
    return-object v0
.end method

.method public final getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 473
    invoke-direct {p0}, Lcrittercism/android/s;->a()V

    .line 474
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 475
    invoke-direct {p0}, Lcrittercism/android/s;->b()V

    .line 476
    return-object v0
.end method

.method public final getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 2
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 280
    invoke-direct {p0}, Lcrittercism/android/s;->a()V

    .line 281
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    .line 282
    invoke-direct {p0}, Lcrittercism/android/s;->b()V

    .line 284
    return-wide v0
.end method

.method public final getHeaderFieldInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 481
    invoke-direct {p0}, Lcrittercism/android/s;->a()V

    .line 482
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v0

    .line 483
    invoke-direct {p0}, Lcrittercism/android/s;->b()V

    .line 484
    return v0
.end method

.method public final getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1
    .param p1, "posn"    # I

    .prologue
    .line 489
    invoke-direct {p0}, Lcrittercism/android/s;->a()V

    .line 490
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v0

    .line 491
    invoke-direct {p0}, Lcrittercism/android/s;->b()V

    .line 492
    return-object v0
.end method

.method public final getHeaderFields()Ljava/util/Map;
    .locals 1

    .prologue
    .line 497
    invoke-direct {p0}, Lcrittercism/android/s;->a()V

    .line 498
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    .line 499
    invoke-direct {p0}, Lcrittercism/android/s;->b()V

    .line 500
    return-object v0
.end method

.method public final getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    return-object v0
.end method

.method public final getIfModifiedSince()J
    .locals 2

    .prologue
    .line 505
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getIfModifiedSince()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 510
    .line 512
    invoke-direct {p0}, Lcrittercism/android/s;->a()V

    .line 515
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 516
    invoke-direct {p0}, Lcrittercism/android/s;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    if-eqz v1, :cond_0

    .line 524
    :try_start_1
    new-instance v0, Lcrittercism/android/t;

    iget-object v2, p0, Lcrittercism/android/s;->a:Lcrittercism/android/e;

    iget-object v3, p0, Lcrittercism/android/s;->c:Lcrittercism/android/c;

    invoke-direct {v0, v1, v2, v3}, Lcrittercism/android/t;-><init>(Ljava/io/InputStream;Lcrittercism/android/e;Lcrittercism/android/c;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 532
    :goto_0
    return-object v0

    .line 517
    :catch_0
    move-exception v0

    .line 518
    invoke-direct {p0, v0}, Lcrittercism/android/s;->a(Ljava/lang/Throwable;)V

    .line 519
    throw v0

    .line 525
    :catch_1
    move-exception v0

    throw v0

    .line 527
    :catch_2
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final getInstanceFollowRedirects()Z
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInstanceFollowRedirects()Z

    move-result v0

    return v0
.end method

.method public final getLastModified()J
    .locals 2

    .prologue
    .line 537
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public final getLocalPrincipal()Ljava/security/Principal;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 3

    .prologue
    .line 542
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 544
    if-eqz v1, :cond_0

    .line 546
    :try_start_0
    new-instance v0, Lcrittercism/android/u;

    iget-object v2, p0, Lcrittercism/android/s;->c:Lcrittercism/android/c;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/u;-><init>(Ljava/io/OutputStream;Lcrittercism/android/c;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 554
    :goto_0
    return-object v0

    .line 547
    :catch_0
    move-exception v0

    throw v0

    .line 549
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final getPeerPrincipal()Ljava/security/Principal;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public final getPermission()Ljava/security/Permission;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getPermission()Ljava/security/Permission;

    move-result-object v0

    return-object v0
.end method

.method public final getReadTimeout()I
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public final getRequestMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestProperties()Ljava/util/Map;
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    .line 569
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getResponseCode()I
    .locals 1

    .prologue
    .line 304
    .line 306
    invoke-direct {p0}, Lcrittercism/android/s;->a()V

    .line 309
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v0

    .line 310
    invoke-direct {p0}, Lcrittercism/android/s;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    return v0

    .line 311
    :catch_0
    move-exception v0

    .line 312
    invoke-direct {p0, v0}, Lcrittercism/android/s;->a(Ljava/lang/Throwable;)V

    .line 313
    throw v0
.end method

.method public final getResponseMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    .line 323
    invoke-direct {p0}, Lcrittercism/android/s;->a()V

    .line 326
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    .line 327
    invoke-direct {p0}, Lcrittercism/android/s;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    return-object v0

    .line 328
    :catch_0
    move-exception v0

    .line 329
    invoke-direct {p0, v0}, Lcrittercism/android/s;->a(Ljava/lang/Throwable;)V

    .line 330
    throw v0
.end method

.method public final getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public final getServerCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getServerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public final getURL()Ljava/net/URL;
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public final getUseCaches()Z
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final setAllowUserInteraction(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    .prologue
    .line 584
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setAllowUserInteraction(Z)V

    .line 585
    return-void
.end method

.method public final setChunkedStreamingMode(I)V
    .locals 1
    .param p1, "chunkLength"    # I

    .prologue
    .line 338
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setChunkedStreamingMode(I)V

    .line 339
    return-void
.end method

.method public final setConnectTimeout(I)V
    .locals 1
    .param p1, "timeoutMillis"    # I

    .prologue
    .line 589
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 590
    return-void
.end method

.method public final setDefaultUseCaches(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    .prologue
    .line 594
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultUseCaches(Z)V

    .line 595
    return-void
.end method

.method public final setDoInput(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    .prologue
    .line 599
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 600
    return-void
.end method

.method public final setDoOutput(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    .prologue
    .line 604
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 605
    return-void
.end method

.method public final setFixedLengthStreamingMode(I)V
    .locals 1
    .param p1, "contentLength"    # I

    .prologue
    .line 343
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setFixedLengthStreamingMode(I)V

    .line 344
    return-void
.end method

.method public final setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 1
    .param p1, "v"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    .line 213
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 214
    return-void
.end method

.method public final setIfModifiedSince(J)V
    .locals 1
    .param p1, "newValue"    # J

    .prologue
    .line 609
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->setIfModifiedSince(J)V

    .line 610
    return-void
.end method

.method public final setInstanceFollowRedirects(Z)V
    .locals 1
    .param p1, "followRedirects"    # Z

    .prologue
    .line 348
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setInstanceFollowRedirects(Z)V

    .line 349
    return-void
.end method

.method public final setReadTimeout(I)V
    .locals 1
    .param p1, "timeoutMillis"    # I

    .prologue
    .line 614
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 615
    return-void
.end method

.method public final setRequestMethod(Ljava/lang/String;)V
    .locals 1
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 353
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method public final setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 619
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    return-void
.end method

.method public final setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 2
    .param p1, "sf"    # Ljavax/net/ssl/SSLSocketFactory;

    .prologue
    .line 220
    .line 222
    :try_start_0
    instance-of v1, p1, Lcrittercism/android/ab;

    if-eqz v1, :cond_0

    .line 227
    move-object v0, p1

    check-cast v0, Lcrittercism/android/ab;

    move-object v1, v0

    .line 228
    invoke-virtual {v1}, Lcrittercism/android/ab;->a()Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p1

    .line 237
    .end local p1    # "sf":Ljavax/net/ssl/SSLSocketFactory;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v1, p1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 238
    return-void

    .line 231
    .restart local p1    # "sf":Ljavax/net/ssl/SSLSocketFactory;
    :catch_0
    move-exception v1

    throw v1

    .line 233
    :catch_1
    move-exception v1

    invoke-static {v1}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final setUseCaches(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    .prologue
    .line 624
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    .line 625
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final usingProxy()Z
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcrittercism/android/s;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->usingProxy()Z

    move-result v0

    return v0
.end method
