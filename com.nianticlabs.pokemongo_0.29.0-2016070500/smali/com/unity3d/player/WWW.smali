.class Lcom/unity3d/player/WWW;
.super Ljava/lang/Thread;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:[B

.field private e:Ljava/util/Map;


# direct methods
.method constructor <init>(ILjava/lang/String;[BLjava/util/Map;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput p1, p0, Lcom/unity3d/player/WWW;->b:I

    iput-object p2, p0, Lcom/unity3d/player/WWW;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/unity3d/player/WWW;->d:[B

    iput-object p4, p0, Lcom/unity3d/player/WWW;->e:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lcom/unity3d/player/WWW;->a:I

    return-void
.end method

.method private static native doneCallback(I)V
.end method

.method private static native errorCallback(ILjava/lang/String;)V
.end method

.method private static native headerCallback(ILjava/lang/String;)Z
.end method

.method private static native progressCallback(IFFDI)V
.end method

.method private static native readCallback(I[BI)Z
.end method


# virtual methods
.method protected headerCallback(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\r"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/unity3d/player/WWW;->b:I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/unity3d/player/WWW;->headerCallback(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected headerCallback(Ljava/util/Map;)Z
    .locals 6

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "Status: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\r\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/unity3d/player/WWW;->b:I

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity3d/player/WWW;->headerCallback(ILjava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method protected progressCallback(IIIIJJ)V
    .locals 11

    if-lez p4, :cond_3

    int-to-float v0, p3

    int-to-float v1, p4

    div-float v3, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-int v0, p4, p3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const-wide v4, 0x408f400000000000L    # 1000.0

    int-to-double v6, p3

    mul-double/2addr v4, v6

    sub-long v6, p5, p7

    long-to-double v6, v6

    const-wide v8, 0x3fb999999999999aL    # 0.1

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    div-double/2addr v4, v6

    int-to-double v0, v0

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const-wide/16 v0, 0x0

    :cond_1
    move-wide v4, v0

    :goto_0
    iget v1, p0, Lcom/unity3d/player/WWW;->b:I

    move v6, p4

    invoke-static/range {v1 .. v6}, Lcom/unity3d/player/WWW;->progressCallback(IFFDI)V

    :cond_2
    return-void

    :cond_3
    if-lez p2, :cond_2

    const/4 v3, 0x0

    div-int v0, p1, p2

    int-to-float v2, v0

    const-wide/16 v4, 0x0

    goto :goto_0
.end method

.method protected readCallback([BI)Z
    .locals 1

    iget v0, p0, Lcom/unity3d/player/WWW;->b:I

    invoke-static {v0, p1, p2}, Lcom/unity3d/player/WWW;->readCallback(I[BI)Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/unity3d/player/WWW;->runSafe()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget v1, p0, Lcom/unity3d/player/WWW;->b:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/unity3d/player/WWW;->errorCallback(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public runSafe()V
    .locals 15

    iget v2, p0, Lcom/unity3d/player/WWW;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/unity3d/player/WWW;->a:I

    const/4 v3, 0x5

    if-le v2, v3, :cond_0

    iget v2, p0, Lcom/unity3d/player/WWW;->b:I

    const-string v3, "Too many redirects"

    invoke-static {v2, v3}, Lcom/unity3d/player/WWW;->errorCallback(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v14, Ljava/net/URL;

    iget-object v2, p0, Lcom/unity3d/player/WWW;->c:Ljava/lang/String;

    invoke-direct {v14, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v12

    invoke-virtual {v14}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v14}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v14}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/unity3d/player/WWW;->b:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not an absolute path!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unity3d/player/WWW;->errorCallback(ILjava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v2

    iget v3, p0, Lcom/unity3d/player/WWW;->b:I

    invoke-virtual {v2}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/unity3d/player/WWW;->errorCallback(ILjava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v2

    iget v3, p0, Lcom/unity3d/player/WWW;->b:I

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/unity3d/player/WWW;->errorCallback(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/unity3d/player/WWW;->e:Ljava/util/Map;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/unity3d/player/WWW;->e:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v12, v3, v2}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/16 v13, 0x594

    iget-object v2, p0, Lcom/unity3d/player/WWW;->d:[B

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Ljava/net/URLConnection;->setDoOutput(Z)V

    :try_start_1
    invoke-virtual {v12}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    const/4 v4, 0x0

    :goto_2
    iget-object v3, p0, Lcom/unity3d/player/WWW;->d:[B

    array-length v3, v3

    if-ge v4, v3, :cond_3

    const/16 v3, 0x594

    iget-object v5, p0, Lcom/unity3d/player/WWW;->d:[B

    array-length v5, v5

    sub-int/2addr v5, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v5, p0, Lcom/unity3d/player/WWW;->d:[B

    invoke-virtual {v2, v5, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v4, v3

    iget-object v3, p0, Lcom/unity3d/player/WWW;->d:[B

    array-length v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v11}, Lcom/unity3d/player/WWW;->progressCallback(IIIIJJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    iget v3, p0, Lcom/unity3d/player/WWW;->b:I

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/unity3d/player/WWW;->errorCallback(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    instance-of v2, v12, Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_5

    move-object v2, v12

    check-cast v2, Ljava/net/HttpURLConnection;

    :try_start_2
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-result v3

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_5

    const/16 v5, 0x12d

    if-eq v3, v5, :cond_4

    const/16 v5, 0x12e

    if-ne v3, v5, :cond_5

    :cond_4
    const-string v3, "Location"

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v2, 0x0

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/unity3d/player/WWW;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/unity3d/player/WWW;->run()V

    goto/16 :goto_0

    :catch_3
    move-exception v2

    iget v3, p0, Lcom/unity3d/player/WWW;->b:I

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/unity3d/player/WWW;->errorCallback(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v12}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/unity3d/player/WWW;->headerCallback(Ljava/util/Map;)Z

    move-result v2

    if-eqz v3, :cond_6

    const-string v4, "content-length"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    :cond_6
    invoke-virtual {v12}, Ljava/net/URLConnection;->getContentLength()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_8

    if-nez v2, :cond_7

    const-string v2, "content-length"

    invoke-virtual {v12}, Ljava/net/URLConnection;->getContentLength()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/unity3d/player/WWW;->headerCallback(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_7
    const/4 v2, 0x1

    :cond_8
    :goto_3
    if-eqz v3, :cond_9

    const-string v4, "content-type"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    :cond_9
    invoke-virtual {v12}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    if-nez v2, :cond_a

    const-string v2, "content-type"

    invoke-virtual {v12}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/unity3d/player/WWW;->headerCallback(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_a
    const/4 v2, 0x1

    :cond_b
    :goto_4
    if-eqz v2, :cond_e

    iget v2, p0, Lcom/unity3d/player/WWW;->b:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/unity3d/player/WWW;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " aborted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unity3d/player/WWW;->errorCallback(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    const/4 v2, 0x0

    goto :goto_3

    :cond_d
    const/4 v2, 0x0

    goto :goto_4

    :cond_e
    invoke-virtual {v12}, Ljava/net/URLConnection;->getContentLength()I

    move-result v2

    if-lez v2, :cond_10

    invoke-virtual {v12}, Ljava/net/URLConnection;->getContentLength()I

    move-result v7

    :goto_5
    invoke-virtual {v14}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual {v14}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    const-string v3, "jar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_f
    if-nez v7, :cond_11

    const v2, 0x8000

    :goto_6
    const/4 v6, 0x0

    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    new-array v14, v2, [B

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v2, ""

    instance-of v5, v12, Ljava/net/HttpURLConnection;

    if-eqz v5, :cond_17

    move-object v0, v12

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ": "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v13, v2

    move-object v2, v4

    :goto_7
    if-nez v2, :cond_16

    invoke-virtual {v12}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    const/4 v2, 0x0

    move-object v12, v3

    :goto_8
    const/4 v3, 0x0

    :goto_9
    const/4 v4, -0x1

    if-eq v3, v4, :cond_14

    invoke-virtual {p0, v14, v3}, Lcom/unity3d/player/WWW;->readCallback([BI)Z

    move-result v4

    if-eqz v4, :cond_12

    iget v2, p0, Lcom/unity3d/player/WWW;->b:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/unity3d/player/WWW;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " aborted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unity3d/player/WWW;->errorCallback(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v2

    iget v3, p0, Lcom/unity3d/player/WWW;->b:I

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/unity3d/player/WWW;->errorCallback(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    const/4 v7, 0x0

    goto/16 :goto_5

    :cond_11
    const v2, 0x8000

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_6

    :cond_12
    if-nez v2, :cond_13

    add-int/2addr v6, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object v3, p0

    invoke-virtual/range {v3 .. v11}, Lcom/unity3d/player/WWW;->progressCallback(IIIIJJ)V

    :cond_13
    invoke-virtual {v12, v14}, Ljava/io/InputStream;->read([B)I

    move-result v3

    goto :goto_9

    :cond_14
    if-eqz v2, :cond_15

    iget v2, p0, Lcom/unity3d/player/WWW;->b:I

    invoke-static {v2, v13}, Lcom/unity3d/player/WWW;->errorCallback(ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :cond_15
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move-object v3, p0

    move v7, v6

    invoke-virtual/range {v3 .. v11}, Lcom/unity3d/player/WWW;->progressCallback(IIIIJJ)V

    iget v2, p0, Lcom/unity3d/player/WWW;->b:I

    invoke-static {v2}, Lcom/unity3d/player/WWW;->doneCallback(I)V

    goto/16 :goto_0

    :cond_16
    move-object v12, v2

    move v2, v3

    goto :goto_8

    :cond_17
    move-object v13, v2

    move-object v2, v4

    goto :goto_7

    :cond_18
    move v2, v13

    goto/16 :goto_6
.end method
