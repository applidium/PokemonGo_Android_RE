.class public final Lcrittercism/android/r;
.super Ljava/net/HttpURLConnection;


# instance fields
.field private a:Lcrittercism/android/e;

.field private b:Ljava/net/HttpURLConnection;

.field private c:Lcrittercism/android/c;

.field private d:Lcrittercism/android/d;

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Ljava/net/HttpURLConnection;Lcrittercism/android/e;Lcrittercism/android/d;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    .line 69
    iput-boolean v1, p0, Lcrittercism/android/r;->e:Z

    .line 70
    iput-boolean v1, p0, Lcrittercism/android/r;->f:Z

    .line 79
    iput-object p1, p0, Lcrittercism/android/r;->b:Ljava/net/HttpURLConnection;

    .line 80
    iput-object p2, p0, Lcrittercism/android/r;->a:Lcrittercism/android/e;

    .line 81
    iput-object p3, p0, Lcrittercism/android/r;->d:Lcrittercism/android/d;

    .line 82
    new-instance v0, Lcrittercism/android/c;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-direct {v0, v1}, Lcrittercism/android/c;-><init>(Ljava/net/URL;)V

    iput-object v0, p0, Lcrittercism/android/r;->c:Lcrittercism/android/c;

    .line 83
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 87
    :try_start_0
    iget-boolean v0, p0, Lcrittercism/android/r;->f:Z

    if-nez v0, :cond_0

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcrittercism/android/r;->f:Z

    .line 89
    iget-object v0, p0, Lcrittercism/android/r;->c:Lcrittercism/android/c;

    iget-object v1, p0, Lcrittercism/android/r;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcrittercism/android/c;->f:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcrittercism/android/r;->c:Lcrittercism/android/c;

    invoke-virtual {v0}, Lcrittercism/android/c;->b()V

    .line 91
    iget-object v0, p0, Lcrittercism/android/r;->c:Lcrittercism/android/c;

    iget-object v1, p0, Lcrittercism/android/r;->d:Lcrittercism/android/d;

    invoke-virtual {v1}, Lcrittercism/android/d;->a()Lcrittercism/android/b;

    move-result-object v1

    iput-object v1, v0, Lcrittercism/android/c;->j:Lcrittercism/android/b;

    .line 92
    invoke-static {}, Lcrittercism/android/bc;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcrittercism/android/r;->c:Lcrittercism/android/c;

    invoke-static {}, Lcrittercism/android/bc;->a()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcrittercism/android/c;->a(Landroid/location/Location;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    throw v0

    .line 98
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 110
    :try_start_0
    iget-boolean v0, p0, Lcrittercism/android/r;->e:Z

    if-eqz v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 114
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcrittercism/android/r;->e:Z

    .line 116
    iget-object v0, p0, Lcrittercism/android/r;->c:Lcrittercism/android/c;

    invoke-virtual {v0}, Lcrittercism/android/c;->c()V

    .line 117
    iget-object v0, p0, Lcrittercism/android/r;->c:Lcrittercism/android/c;

    invoke-virtual {v0, p1}, Lcrittercism/android/c;->a(Ljava/lang/Throwable;)V

    .line 118
    iget-object v0, p0, Lcrittercism/android/r;->a:Lcrittercism/android/e;

    iget-object v1, p0, Lcrittercism/android/r;->c:Lcrittercism/android/c;

    invoke-virtual {v0, v1}, Lcrittercism/android/e;->a(Lcrittercism/android/c;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    throw v0

    .line 122
    :catch_1
    move-exception v0

    invoke-static {p1}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private b()V
    .locals 8

    .prologue
    const-wide v6, 0x7fffffffffffffffL

    const/4 v1, 0x1

    .line 129
    const/4 v0, 0x0

    :try_start_0
    iget-boolean v2, p0, Lcrittercism/android/r;->e:Z

    if-nez v2, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcrittercism/android/r;->e:Z

    iget-object v2, p0, Lcrittercism/android/r;->c:Lcrittercism/android/c;

    invoke-virtual {v2}, Lcrittercism/android/c;->c()V

    iget-object v2, p0, Lcrittercism/android/r;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v2, Lcrittercism/android/p;

    iget-object v3, p0, Lcrittercism/android/r;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v3}, Lcrittercism/android/p;-><init>(Ljava/util/Map;)V

    const-string v3, "Content-Length"

    invoke-virtual {v2, v3}, Lcrittercism/android/p;->b(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    iget-object v0, p0, Lcrittercism/android/r;->c:Lcrittercism/android/c;

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

    iget-object v1, p0, Lcrittercism/android/r;->c:Lcrittercism/android/c;

    invoke-virtual {v1, v4, v5}, Lcrittercism/android/c;->e(J)V

    iget-object v1, p0, Lcrittercism/android/r;->c:Lcrittercism/android/c;

    invoke-virtual {v1, v2, v3}, Lcrittercism/android/c;->f(J)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcrittercism/android/r;->c:Lcrittercism/android/c;

    iget-object v2, p0, Lcrittercism/android/r;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    iput v2, v1, Lcrittercism/android/c;->e:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    if-eqz v0, :cond_2

    :try_start_2
    iget-object v0, p0, Lcrittercism/android/r;->a:Lcrittercism/android/e;

    iget-object v1, p0, Lcrittercism/android/r;->c:Lcrittercism/android/c;

    invoke-virtual {v0, v1}, Lcrittercism/android/e;->a(Lcrittercism/android/c;)V
    :try_end_2
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 135
    :cond_2
    :goto_1
    return-void

    .line 130
    :catch_0
    move-exception v0

    throw v0

    .line 132
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
    .line 319
    iget-object v0, p0, Lcrittercism/android/r;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method public final connect()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcrittercism/android/r;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 208
    return-void
.end method

.method public final disconnect()V
    .locals 2

    .prologue
    .line 490
    iget-object v0, p0, Lcrittercism/android/r;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 493
    :try_start_0
    iget-boolean v0, p0, Lcrittercism/android/r;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcrittercism/android/r;->c:Lcrittercism/android/c;

    iget-boolean v0, v0, Lcrittercism/android/c;->b:Z

    if-nez v0, :cond_0

    .line 494
    iget-object v0, p0, Lcrittercism/android/r;->a:Lcrittercism/android/e;

    iget-object v1, p0, Lcrittercism/android/r;->c:Lcrittercism/android/c;

    invoke-virtual {v0, v1}, Lcrittercism/android/e;->a(Lcrittercism/android/c;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 496
    :catch_0
    move-exception v0

    throw v0

    .line 498
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 595
    iget-object v0, p0, Lcrittercism/android/r;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final getAllowUserInteraction()Z
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcrittercism/android/r;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getAllowUserInteraction()Z

    move-result v0

    return v0
.end method

.method public final getConnectTimeout()I
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcrittercism/android/r;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getConnectTimeout()I

    move-result v0

    return v0
.end method

.method public final getContent()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 217
    .line 219
    invoke-direct {p0}, Lcrittercism/android/r;->a()V

    .line 222
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/r;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContent()Ljava/lang/Object;

    move-result-object v0

    .line 223
    invoke-direct {p0}, Lcrittercism/android/r;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    return-object v0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    invoke-direct {p0, v0}, Lcrittercism/android/r;->a(Ljava/lang/Throwable;)V

    .line 226
    throw v0
.end method

.method public final getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "types"    # [Ljava/lang/Class;

    .prologue
    .line 235
    .line 237
    invoke-direct {p0}, Lcrittercism/android/r;->a()V

    .line 240
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/r;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 241
    invoke-direct {p0}, Lcrittercism/android/r;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    return-object v0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    invoke-direct {p0, v0}, Lcrittercism/android/r;->a(Ljava/lang/Throwable;)V

    .line 244
    throw v0
.end method

.method public final getContentEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    invoke-direct {p0}, Lcrittercism/android/r;->a()V

    .line 253
    iget-object v0, p0, Lcrittercism/android/r;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-direct {p0}, Lcrittercism/android/r;->b()V

    .line 255
    return-object v0
.end method

.method public final getContentLength()I
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcrittercism/android/r;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    return v0
.end method

.method public final getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    invoke-direct {p0}, Lcrittercism/android/r;->a()V

    .line 266
    iget-object v0, p0, Lcrittercism/android/r;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 267
    invoke-direct {p0}, Lcrittercism/android/r;->b()V

    .line 268
    return-object v0
.end method

.method public final getDate()J
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcrittercism/android/r;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getDefaultUseCaches()Z
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcrittercism/android/r;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public final getDoInput()Z
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcrittercism/android/r;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDoInput()Z

    move-result v0

    return v0
.end method

.method public final getDoOutput()Z
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcrittercism/android/r;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDoOutput()Z

    move-result v0

    return v0
.end method

.method public final getErrorStream()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 510
    invoke-direct {p0}, Lcrittercism/android/r;->a()V

    .line 513
    iget-object v0, p0, Lcrittercism/android/r;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    .line 514
    invoke-direct {p0}, Lcrittercism/android/r;->b()V

    .line 516
    if-eqz v1, :cond_0

    .line 518
    :try_start_0
    new-instance v0, Lcrittercism/android/t;

    iget-object v2, p0, Lcrittercism/android/r;->a:Lcrittercism/android/e;

    iget-object v3, p0, Lcrittercism/android/r;->c:Lcrittercism/android/c;

    invoke-direct {v0, v1, v2, v3}, Lcrittercism/android/t;-><init>(Ljava/io/InputStream;Lcrittercism/android/e;Lcrittercism/android/c;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 526
    :goto_0
    return-object v0

    .line 519
    :catch_0
    move-exception v0

    throw v0

    .line 521
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
    .line 293
    iget-object v0, p0, Lcrittercism/android/r;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getExpiration()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getHeaderField(I)Ljava/lang/String;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 298
    invoke-direct {p0}, Lcrittercism/android/r;->a()V

    .line 299
    iget-object v0, p0, Lcrittercism/android/r;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    .line 300
    invoke-direct {p0}, Lcrittercism/android/r;->b()V

    .line 301
    return-object v0
.end method

.method public final getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 324
    invoke-direct {p0}, Lcrittercism/android/r;->a()V

    .line 325
    iget-object v0, p0, Lcrittercism/android/r;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 326
    invoke-direct {p0}, Lcrittercism/android/r;->b()V

    .line 327
    return-object v0
.end method

.method public final getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 2
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 332
    invoke-direct {p0}, Lcrittercism/android/r;->a()V

    .line 333
    iget-object v0, p0, Lcrittercism/android/r;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/HttpURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    .line 334
    invoke-direct {p0}, Lcrittercism/android/r;->b()V

    .line 335
    return-wide v0
.end method

.method public final getHeaderFieldInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 340
    invoke-direct {p0}, Lcrittercism/android/r;->a()V

    .line 341
    iget-object v0, p0, Lcrittercism/android/r;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v0

    .line 342
    invoke-direct {p0}, Lcrittercism/android/r;->b()V

    .line 343
    return v0
.end method

.method public final getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1
    .param p1, "posn"    # I

    .prologue
    .line 348
    invoke-direct {p0}, Lcrittercism/android/r;->a()V

    .line 349
    iget-object v0, p0, Lcrittercism/android/r;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v0

    .line 350
    invoke-direct {p0}, Lcrittercism/android/r;->b()V

    .line 351
    return-object v0
.end method

.method public final getHeaderFields()Ljava/util/Map;
    .locals 1

    .prologue
    .line 306
    invoke-direct {p0}, Lcrittercism/android/r;->a()V

    .line 307
    iget-object v0, p0, Lcrittercism/android/r;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    .line 308
    invoke-direct {p0}, Lcrittercism/android/r;->b()V

    .line 309
    return-object v0
.end method

.method public final getIfModifiedSince()J
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcrittercism/android/r;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getIfModifiedSince()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 361
    .line 363
    invoke-direct {p0}, Lcrittercism/android/r;->a()V

    .line 366
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/r;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 367
    invoke-direct {p0}, Lcrittercism/android/r;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    if-eqz v1, :cond_0

    .line 375
    :try_start_1
    new-instance v0, Lcrittercism/android/t;

    iget-object v2, p0, Lcrittercism/android/r;->a:Lcrittercism/android/e;

    iget-object v3, p0, Lcrittercism/android/r;->c:Lcrittercism/android/c;

    invoke-direct {v0, v1, v2, v3}, Lcrittercism/android/t;-><init>(Ljava/io/InputStream;Lcrittercism/android/e;Lcrittercism/android/c;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 383
    :goto_0
    return-object v0

    .line 368
    :catch_0
    move-exception v0

    .line 369
    invoke-direct {p0, v0}, Lcrittercism/android/r;->a(Ljava/lang/Throwable;)V

    .line 370
    throw v0

    .line 376
    :catch_1
    move-exception v0

    throw v0

    .line 378
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
    .line 575
    iget-object v0, p0, Lcrittercism/android/r;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInstanceFollowRedirects()Z

    move-result v0

    return v0
.end method

.method public final getLastModified()J
    .locals 2

    .prologue
    .line 388
    iget-object v0, p0, Lcrittercism/android/r;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 3

    .prologue
    .line 393
    iget-object v0, p0, Lcrittercism/android/r;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 395
    if-eqz v1, :cond_0

    .line 397
    :try_start_0
    new-instance v0, Lcrittercism/android/u;

    iget-object v2, p0, Lcrittercism/android/r;->c:Lcrittercism/android/c;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/u;-><init>(Ljava/io/OutputStream;Lcrittercism/android/c;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 405
    :goto_0
    return-object v0

    .line 398
    :catch_0
    move-exception v0

    throw v0

    .line 400
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final getPermission()Ljava/security/Permission;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcrittercism/android/r;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getPermission()Ljava/security/Permission;

    move-result-object v0

    return-object v0
.end method

.method public final getReadTimeout()I
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcrittercism/android/r;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public final getRequestMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcrittercism/android/r;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestProperties()Ljava/util/Map;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcrittercism/android/r;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    .line 415
    iget-object v0, p0, Lcrittercism/android/r;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getResponseCode()I
    .locals 1

    .prologue
    .line 536
    .line 538
    invoke-direct {p0}, Lcrittercism/android/r;->a()V

    .line 541
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/r;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 542
    invoke-direct {p0}, Lcrittercism/android/r;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    return v0

    .line 543
    :catch_0
    move-exception v0

    .line 544
    invoke-direct {p0, v0}, Lcrittercism/android/r;->a(Ljava/lang/Throwable;)V

    .line 545
    throw v0
.end method

.method public final getResponseMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 553
    .line 555
    invoke-direct {p0}, Lcrittercism/android/r;->a()V

    .line 558
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/r;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    .line 559
    invoke-direct {p0}, Lcrittercism/android/r;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    return-object v0

    .line 560
    :catch_0
    move-exception v0

    .line 561
    invoke-direct {p0, v0}, Lcrittercism/android/r;->a(Ljava/lang/Throwable;)V

    .line 562
    throw v0
.end method

.method public final getURL()Ljava/net/URL;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcrittercism/android/r;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public final getUseCaches()Z
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcrittercism/android/r;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcrittercism/android/r;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final setAllowUserInteraction(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    .prologue
    .line 430
    iget-object v0, p0, Lcrittercism/android/r;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    .line 431
    return-void
.end method

.method public final setChunkedStreamingMode(I)V
    .locals 1
    .param p1, "chunkLength"    # I

    .prologue
    .line 590
    iget-object v0, p0, Lcrittercism/android/r;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 591
    return-void
.end method

.method public final setConnectTimeout(I)V
    .locals 1
    .param p1, "timeoutMillis"    # I

    .prologue
    .line 465
    iget-object v0, p0, Lcrittercism/android/r;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 466
    return-void
.end method

.method public final setDefaultUseCaches(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    .prologue
    .line 435
    iget-object v0, p0, Lcrittercism/android/r;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    .line 436
    return-void
.end method

.method public final setDoInput(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    .prologue
    .line 440
    iget-object v0, p0, Lcrittercism/android/r;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 441
    return-void
.end method

.method public final setDoOutput(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    .prologue
    .line 445
    iget-object v0, p0, Lcrittercism/android/r;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 446
    return-void
.end method

.method public final setFixedLengthStreamingMode(I)V
    .locals 1
    .param p1, "contentLength"    # I

    .prologue
    .line 585
    iget-object v0, p0, Lcrittercism/android/r;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 586
    return-void
.end method

.method public final setIfModifiedSince(J)V
    .locals 1
    .param p1, "newValue"    # J

    .prologue
    .line 450
    iget-object v0, p0, Lcrittercism/android/r;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setIfModifiedSince(J)V

    .line 451
    return-void
.end method

.method public final setInstanceFollowRedirects(Z)V
    .locals 1
    .param p1, "followRedirects"    # Z

    .prologue
    .line 580
    iget-object v0, p0, Lcrittercism/android/r;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 581
    return-void
.end method

.method public final setReadTimeout(I)V
    .locals 1
    .param p1, "timeoutMillis"    # I

    .prologue
    .line 475
    iget-object v0, p0, Lcrittercism/android/r;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 476
    return-void
.end method

.method public final setRequestMethod(Ljava/lang/String;)V
    .locals 1
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 570
    iget-object v0, p0, Lcrittercism/android/r;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 571
    return-void
.end method

.method public final setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 455
    iget-object v0, p0, Lcrittercism/android/r;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    return-void
.end method

.method public final setUseCaches(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    .prologue
    .line 460
    iget-object v0, p0, Lcrittercism/android/r;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 461
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcrittercism/android/r;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final usingProxy()Z
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcrittercism/android/r;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->usingProxy()Z

    move-result v0

    return v0
.end method
