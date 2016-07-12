.class Lcom/unity3d/player/UnityWebRequest;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final e:[Ljava/lang/String;

.field private static volatile f:Ljavax/net/ssl/SSLSocketFactory;


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "TLSv1.2"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "TLSv1.1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/unity3d/player/UnityWebRequest;->e:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(JLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/unity3d/player/UnityWebRequest;->a:J

    iput-object p5, p0, Lcom/unity3d/player/UnityWebRequest;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/unity3d/player/UnityWebRequest;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/unity3d/player/UnityWebRequest;->d:Ljava/util/Map;

    return-void
.end method

.method private static native contentLengthCallback(JI)V
.end method

.method private static native downloadCallback(JLjava/nio/ByteBuffer;I)Z
.end method

.method private static native errorCallback(JILjava/lang/String;)V
.end method

.method private static getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 10

    const/4 v0, 0x0

    sget-boolean v1, Lcom/unity3d/player/q;->g:Z

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/unity3d/player/UnityWebRequest;->f:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v1, :cond_1

    sget-object v0, Lcom/unity3d/player/UnityWebRequest;->f:Ljavax/net/ssl/SSLSocketFactory;

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/unity3d/player/UnityWebRequest;->e:[Ljava/lang/String;

    monitor-enter v3

    :try_start_0
    sget-object v4, Lcom/unity3d/player/UnityWebRequest;->e:[Ljava/lang/String;

    array-length v5, v4

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_2

    aget-object v6, v4, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v6}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v1, v7, v8, v9}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    sput-object v1, Lcom/unity3d/player/UnityWebRequest;->f:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v3

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v7, 0x5

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "UnityWebRequest: No support for "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " ("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ")"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/unity3d/player/m;->Log(ILjava/lang/String;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private static native headerCallback(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native responseCodeCallback(JI)V
.end method

.method private static native uploadCallback(JLjava/nio/ByteBuffer;)I
.end method


# virtual methods
.method protected badProtocolCallback(Ljava/lang/String;)V
    .locals 3

    iget-wide v0, p0, Lcom/unity3d/player/UnityWebRequest;->a:J

    const/4 v2, 0x4

    invoke-static {v0, v1, v2, p1}, Lcom/unity3d/player/UnityWebRequest;->errorCallback(JILjava/lang/String;)V

    return-void
.end method

.method protected contentLengthCallback(I)V
    .locals 2

    iget-wide v0, p0, Lcom/unity3d/player/UnityWebRequest;->a:J

    invoke-static {v0, v1, p1}, Lcom/unity3d/player/UnityWebRequest;->contentLengthCallback(JI)V

    return-void
.end method

.method protected downloadCallback(Ljava/nio/ByteBuffer;I)Z
    .locals 2

    iget-wide v0, p0, Lcom/unity3d/player/UnityWebRequest;->a:J

    invoke-static {v0, v1, p1, p2}, Lcom/unity3d/player/UnityWebRequest;->downloadCallback(JLjava/nio/ByteBuffer;I)Z

    move-result v0

    return v0
.end method

.method protected errorCallback(Ljava/lang/String;)V
    .locals 3

    iget-wide v0, p0, Lcom/unity3d/player/UnityWebRequest;->a:J

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, p1}, Lcom/unity3d/player/UnityWebRequest;->errorCallback(JILjava/lang/String;)V

    return-void
.end method

.method protected headerCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lcom/unity3d/player/UnityWebRequest;->a:J

    invoke-static {v0, v1, p1, p2}, Lcom/unity3d/player/UnityWebRequest;->headerCallback(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected headerCallback(Ljava/util/Map;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v1, "Status"

    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/unity3d/player/UnityWebRequest;->headerCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected malformattedUrlCallback(Ljava/lang/String;)V
    .locals 3

    iget-wide v0, p0, Lcom/unity3d/player/UnityWebRequest;->a:J

    const/4 v2, 0x5

    invoke-static {v0, v1, v2, p1}, Lcom/unity3d/player/UnityWebRequest;->errorCallback(JILjava/lang/String;)V

    return-void
.end method

.method protected responseCodeCallback(I)V
    .locals 2

    iget-wide v0, p0, Lcom/unity3d/player/UnityWebRequest;->a:J

    invoke-static {v0, v1, p1}, Lcom/unity3d/player/UnityWebRequest;->responseCodeCallback(JI)V

    return-void
.end method

.method public run()V
    .locals 12

    const/4 v5, 0x0

    const v4, 0x8000

    const/16 v6, 0x594

    const/4 v11, -0x1

    :try_start_0
    new-instance v7, Ljava/net/URL;

    iget-object v1, p0, Lcom/unity3d/player/UnityWebRequest;->b:Ljava/lang/String;

    invoke-direct {v7, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    instance-of v1, v2, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/unity3d/player/UnityWebRequest;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v0, v2

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v1, v0

    invoke-virtual {v1, v3}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    invoke-virtual {v7}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string v3, "file"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v7}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "file:// must use an absolute path"

    invoke-virtual {p0, v1}, Lcom/unity3d/player/UnityWebRequest;->malformattedUrlCallback(Ljava/lang/String;)V

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/unity3d/player/UnityWebRequest;->malformattedUrlCallback(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/unity3d/player/UnityWebRequest;->errorCallback(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    instance-of v1, v2, Ljava/net/JarURLConnection;

    if-eqz v1, :cond_2

    const-string v1, "A URL Connection to a Java ARchive (JAR) file or an entry in a JAR file is not supported"

    invoke-virtual {p0, v1}, Lcom/unity3d/player/UnityWebRequest;->badProtocolCallback(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    instance-of v1, v2, Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_3

    :try_start_1
    move-object v0, v2

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    iget-object v3, p0, Lcom/unity3d/player/UnityWebRequest;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V
    :try_end_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_3
    iget-object v1, p0, Lcom/unity3d/player/UnityWebRequest;->d:Ljava/util/Map;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/unity3d/player/UnityWebRequest;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/net/ProtocolException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/unity3d/player/UnityWebRequest;->badProtocolCallback(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v5}, Lcom/unity3d/player/UnityWebRequest;->uploadCallback(Ljava/nio/ByteBuffer;)I

    move-result v1

    if-lez v1, :cond_5

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setDoOutput(Z)V

    const/16 v3, 0x594

    :try_start_2
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-virtual {p0, v3}, Lcom/unity3d/player/UnityWebRequest;->uploadCallback(Ljava/nio/ByteBuffer;)I

    move-result v1

    :goto_2
    if-lez v1, :cond_5

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v10

    invoke-virtual {v8, v9, v10, v1}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {p0, v3}, Lcom/unity3d/player/UnityWebRequest;->uploadCallback(Ljava/nio/ByteBuffer;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result v1

    goto :goto_2

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/unity3d/player/UnityWebRequest;->errorCallback(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    instance-of v1, v2, Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_6

    move-object v1, v2

    check-cast v1, Ljava/net/HttpURLConnection;

    :try_start_3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/unity3d/player/UnityWebRequest;->responseCodeCallback(I)V
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    :cond_6
    :goto_3
    invoke-virtual {v2}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/unity3d/player/UnityWebRequest;->headerCallback(Ljava/util/Map;)V

    if-eqz v1, :cond_7

    const-string v3, "content-length"

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_7
    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentLength()I

    move-result v3

    if-eq v3, v11, :cond_8

    const-string v3, "content-length"

    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentLength()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v3, v8}, Lcom/unity3d/player/UnityWebRequest;->headerCallback(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    if-eqz v1, :cond_9

    const-string v3, "content-type"

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    const-string v1, "content-type"

    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/unity3d/player/UnityWebRequest;->headerCallback(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentLength()I

    move-result v1

    if-lez v1, :cond_b

    invoke-virtual {p0, v1}, Lcom/unity3d/player/UnityWebRequest;->contentLengthCallback(I)V

    :cond_b
    invoke-virtual {v7}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    const-string v7, "file"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    if-nez v1, :cond_d

    move v1, v4

    :goto_4
    move v3, v1

    :goto_5
    :try_start_4
    instance-of v1, v2, Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_f

    move-object v0, v2

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/unity3d/player/UnityWebRequest;->responseCodeCallback(I)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    :goto_6
    if-nez v1, :cond_c

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    :cond_c
    invoke-static {v1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    :goto_7
    if-eq v1, v11, :cond_e

    invoke-virtual {p0, v3, v1}, Lcom/unity3d/player/UnityWebRequest;->downloadCallback(Ljava/nio/ByteBuffer;I)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-interface {v2, v3}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    move-result v1

    goto :goto_7

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/unity3d/player/UnityWebRequest;->unknownHostCallback(Ljava/lang/String;)V

    goto/16 :goto_3

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/unity3d/player/UnityWebRequest;->errorCallback(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_4

    :cond_e
    :try_start_5
    invoke-interface {v2}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_5
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    goto/16 :goto_0

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/unity3d/player/UnityWebRequest;->unknownHostCallback(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_7
    move-exception v1

    invoke-virtual {v1}, Ljavax/net/ssl/SSLHandshakeException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/unity3d/player/UnityWebRequest;->sslCannotConnectCallback(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_8
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/unity3d/player/UnityWebRequest;->errorCallback(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    move-object v1, v5

    goto :goto_6

    :cond_10
    move v3, v6

    goto :goto_5
.end method

.method protected sslCannotConnectCallback(Ljava/lang/String;)V
    .locals 3

    iget-wide v0, p0, Lcom/unity3d/player/UnityWebRequest;->a:J

    const/16 v2, 0x10

    invoke-static {v0, v1, v2, p1}, Lcom/unity3d/player/UnityWebRequest;->errorCallback(JILjava/lang/String;)V

    return-void
.end method

.method protected unknownHostCallback(Ljava/lang/String;)V
    .locals 3

    iget-wide v0, p0, Lcom/unity3d/player/UnityWebRequest;->a:J

    const/4 v2, 0x7

    invoke-static {v0, v1, v2, p1}, Lcom/unity3d/player/UnityWebRequest;->errorCallback(JILjava/lang/String;)V

    return-void
.end method

.method protected uploadCallback(Ljava/nio/ByteBuffer;)I
    .locals 2

    iget-wide v0, p0, Lcom/unity3d/player/UnityWebRequest;->a:J

    invoke-static {v0, v1, p1}, Lcom/unity3d/player/UnityWebRequest;->uploadCallback(JLjava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method
