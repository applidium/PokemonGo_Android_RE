.class public Lcom/nianticlabs/nia/network/NiaNet;
.super Ljava/lang/Object;
.source "NiaNet.java"


# static fields
.field private static final CHUNK_SIZE:I = 0x8000

.field private static final HTTP_BAD_REQUEST:I = 0x190

.field private static final HTTP_OK:I = 0xc8

.field private static final IF_MODIFIED_SINCE:Ljava/lang/String; = "If-Modified-Since"

.field private static final METHOD_DELETE:I = 0x4

.field private static final METHOD_GET:I = 0x0

.field private static final METHOD_HEAD:I = 0x1

.field private static final METHOD_OPTIONS:I = 0x5

.field private static final METHOD_POST:I = 0x2

.field private static final METHOD_PUT:I = 0x3

.field private static final METHOD_TRACE:I = 0x6

.field private static final NETWORK_TIMEOUT_MS:I = 0x3a98

.field private static final POOL_THREAD_NUM:I = 0x6

.field private static final TAG:Ljava/lang/String; = "NiaNet"

.field private static final executor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static pendingRequestIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static readBuffer:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private static final threadChunk:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 32
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x6

    const/16 v3, 0xc

    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lcom/nianticlabs/nia/network/NiaNet;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/nianticlabs/nia/network/NiaNet;->pendingRequestIds:Ljava/util/Set;

    .line 51
    new-instance v0, Lcom/nianticlabs/nia/network/NiaNet$1;

    invoke-direct {v0}, Lcom/nianticlabs/nia/network/NiaNet$1;-><init>()V

    sput-object v0, Lcom/nianticlabs/nia/network/NiaNet;->threadChunk:Ljava/lang/ThreadLocal;

    .line 62
    new-instance v0, Lcom/nianticlabs/nia/network/NiaNet$2;

    invoke-direct {v0}, Lcom/nianticlabs/nia/network/NiaNet$2;-><init>()V

    sput-object v0, Lcom/nianticlabs/nia/network/NiaNet;->readBuffer:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    return-void
.end method

.method static synthetic access$000(JILjava/lang/String;ILjava/lang/String;Ljava/nio/ByteBuffer;II)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # I
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # Ljava/nio/ByteBuffer;
    .param p7, "x6"    # I
    .param p8, "x7"    # I

    .prologue
    .line 23
    invoke-static/range {p0 .. p8}, Lcom/nianticlabs/nia/network/NiaNet;->doSyncRequest(JILjava/lang/String;ILjava/lang/String;Ljava/nio/ByteBuffer;II)V

    return-void
.end method

.method public static cancel(I)V
    .locals 3
    .param p0, "request_id"    # I

    .prologue
    .line 85
    sget-object v1, Lcom/nianticlabs/nia/network/NiaNet;->pendingRequestIds:Ljava/util/Set;

    monitor-enter v1

    .line 86
    :try_start_0
    sget-object v0, Lcom/nianticlabs/nia/network/NiaNet;->pendingRequestIds:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 87
    monitor-exit v1

    .line 88
    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static doSyncRequest(JILjava/lang/String;ILjava/lang/String;Ljava/nio/ByteBuffer;II)V
    .locals 22
    .param p0, "object"    # J
    .param p2, "request_id"    # I
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "method"    # I
    .param p5, "headers"    # Ljava/lang/String;
    .param p6, "body"    # Ljava/nio/ByteBuffer;
    .param p7, "bodyOffset"    # I
    .param p8, "bodyCount"    # I

    .prologue
    .line 166
    sget-object v3, Lcom/nianticlabs/nia/network/NiaNet;->pendingRequestIds:Ljava/util/Set;

    monitor-enter v3

    .line 167
    :try_start_0
    sget-object v2, Lcom/nianticlabs/nia/network/NiaNet;->pendingRequestIds:Ljava/util/Set;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v20, 0x1

    .line 168
    .local v20, "isCancelled":Z
    :goto_0
    if-eqz v20, :cond_1

    .line 169
    monitor-exit v3

    .line 226
    :goto_1
    return-void

    .line 167
    .end local v20    # "isCancelled":Z
    :cond_0
    const/16 v20, 0x0

    goto :goto_0

    .line 171
    .restart local v20    # "isCancelled":Z
    :cond_1
    sget-object v2, Lcom/nianticlabs/nia/network/NiaNet;->pendingRequestIds:Ljava/util/Set;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 172
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    const/16 v18, 0x0

    .line 175
    .local v18, "conn":Ljava/net/HttpURLConnection;
    const/16 v4, 0x190

    .line 176
    .local v4, "responseCode":I
    const/4 v5, 0x0

    .line 177
    .local v5, "responseHeaders":Ljava/lang/String;
    const/4 v8, 0x0

    .line 179
    .local v8, "responseSize":I
    :try_start_1
    new-instance v2, Ljava/net/URL;

    move-object/from16 v0, p3

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    move-object v0, v2

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object/from16 v18, v0

    .line 180
    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Lcom/nianticlabs/nia/network/NiaNet;->setHeaders(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    .line 181
    const/16 v2, 0x3a98

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 183
    const-string v2, "Connection"

    const-string v3, "Keep-Alive"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 189
    invoke-static/range {p4 .. p4}, Lcom/nianticlabs/nia/network/NiaNet;->getMethodString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 190
    if-eqz p6, :cond_3

    if-lez p8, :cond_3

    .line 191
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 192
    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v21

    .line 194
    .local v21, "os":Ljava/io/OutputStream;
    :try_start_2
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 195
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    add-int v3, v3, p7

    move-object/from16 v0, v21

    move/from16 v1, p8

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 205
    :cond_2
    :try_start_3
    invoke-virtual/range {v21 .. v21}, Ljava/io/OutputStream;->close()V

    .line 208
    .end local v21    # "os":Ljava/io/OutputStream;
    :cond_3
    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 209
    invoke-static/range {v18 .. v18}, Lcom/nianticlabs/nia/network/NiaNet;->joinHeaders(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v5

    .line 210
    invoke-static/range {v18 .. v18}, Lcom/nianticlabs/nia/network/NiaNet;->readDataSteam(Ljava/net/HttpURLConnection;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v8

    .line 215
    if-eqz v18, :cond_4

    .line 216
    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 220
    :cond_4
    :goto_2
    if-lez v8, :cond_7

    .line 221
    sget-object v2, Lcom/nianticlabs/nia/network/NiaNet;->readBuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    .line 222
    .local v6, "buffer":Ljava/nio/ByteBuffer;
    const/4 v7, 0x0

    move-wide/from16 v2, p0

    invoke-static/range {v2 .. v8}, Lcom/nianticlabs/nia/network/NiaNet;->nativeCallback(JILjava/lang/String;Ljava/nio/ByteBuffer;II)V

    goto/16 :goto_1

    .line 172
    .end local v4    # "responseCode":I
    .end local v5    # "responseHeaders":Ljava/lang/String;
    .end local v6    # "buffer":Ljava/nio/ByteBuffer;
    .end local v8    # "responseSize":I
    .end local v18    # "conn":Ljava/net/HttpURLConnection;
    .end local v20    # "isCancelled":Z
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 197
    .restart local v4    # "responseCode":I
    .restart local v5    # "responseHeaders":Ljava/lang/String;
    .restart local v8    # "responseSize":I
    .restart local v18    # "conn":Ljava/net/HttpURLConnection;
    .restart local v20    # "isCancelled":Z
    .restart local v21    # "os":Ljava/io/OutputStream;
    :cond_5
    :try_start_5
    sget-object v2, Lcom/nianticlabs/nia/network/NiaNet;->threadChunk:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [B

    .line 198
    .local v17, "chunk":[B
    :goto_3
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 199
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    move-object/from16 v0, v17

    array-length v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 200
    .local v9, "bytesToRead":I
    const/4 v2, 0x0

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2, v9}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 201
    const/4 v2, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2, v9}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    .line 205
    .end local v9    # "bytesToRead":I
    .end local v17    # "chunk":[B
    :catchall_1
    move-exception v2

    :try_start_6
    invoke-virtual/range {v21 .. v21}, Ljava/io/OutputStream;->close()V

    throw v2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 211
    .end local v21    # "os":Ljava/io/OutputStream;
    :catch_0
    move-exception v19

    .line 212
    .local v19, "e":Ljava/io/IOException;
    :try_start_7
    const-string v2, "NiaNet"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Network op failed: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 213
    const/4 v8, 0x0

    .line 215
    if-eqz v18, :cond_4

    .line 216
    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    .line 215
    .end local v19    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v2

    if-eqz v18, :cond_6

    .line 216
    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    throw v2

    .line 224
    :cond_7
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-wide/from16 v10, p0

    move v12, v4

    move-object v13, v5

    invoke-static/range {v10 .. v16}, Lcom/nianticlabs/nia/network/NiaNet;->nativeCallback(JILjava/lang/String;Ljava/nio/ByteBuffer;II)V

    goto/16 :goto_1
.end method

.method private static getMethodString(I)Ljava/lang/String;
    .locals 3
    .param p0, "method"    # I

    .prologue
    .line 229
    packed-switch p0, :pswitch_data_0

    .line 241
    const-string v0, "NiaNet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported HTTP method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", using GET."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const-string v0, "GET"

    :goto_0
    return-object v0

    .line 231
    :pswitch_0
    const-string v0, "GET"

    goto :goto_0

    .line 233
    :pswitch_1
    const-string v0, "HEAD"

    goto :goto_0

    .line 235
    :pswitch_2
    const-string v0, "POST"

    goto :goto_0

    .line 237
    :pswitch_3
    const-string v0, "PUT"

    goto :goto_0

    .line 239
    :pswitch_4
    const-string v0, "DELETE"

    goto :goto_0

    .line 229
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static joinHeaders(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 5
    .param p0, "conn"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 276
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    .local v2, "headers":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "fieldKey":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 279
    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "field":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 285
    .end local v0    # "field":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 286
    const/4 v4, 0x0

    .line 288
    :goto_1
    return-object v4

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private static native nativeCallback(JILjava/lang/String;Ljava/nio/ByteBuffer;II)V
.end method

.method private static parseHttpDateTime(Ljava/lang/String;)J
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 294
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss zzz"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 295
    .local v0, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    return-wide v2
.end method

.method private static readDataSteam(Ljava/net/HttpURLConnection;)I
    .locals 19
    .param p0, "conn"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-virtual/range {p0 .. p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v17

    const/16 v18, 0xc8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    .line 97
    .local v12, "is":Ljava/io/InputStream;
    :goto_0
    if-nez v12, :cond_1

    .line 98
    const/16 v17, 0x0

    .line 160
    :goto_1
    return v17

    .line 95
    .end local v12    # "is":Ljava/io/InputStream;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v12

    goto :goto_0

    .line 101
    .restart local v12    # "is":Ljava/io/InputStream;
    :cond_1
    sget-object v17, Lcom/nianticlabs/nia/network/NiaNet;->readBuffer:Ljava/lang/ThreadLocal;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    .line 104
    .local v4, "buffer":Ljava/nio/ByteBuffer;
    const/4 v11, 0x0

    .line 106
    .local v11, "chunkSize":I
    :try_start_0
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    .line 107
    .local v10, "chunk":[B
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    .line 108
    .local v5, "bufferOffset":I
    move/from16 v16, v5

    .line 110
    .local v16, "offset":I
    const/4 v13, 0x1

    .line 115
    .local v13, "keepReading":Z
    :cond_2
    invoke-virtual {v12}, Ljava/io/InputStream;->available()I

    move-result v3

    .line 118
    .local v3, "available":I
    array-length v0, v10

    move/from16 v17, v0

    add-int v18, v3, v16

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_4

    .line 121
    const/4 v2, 0x2

    .line 122
    .local v2, "BUFFER_SCALE_FACTOR":I
    add-int v17, v3, v16

    sub-int v6, v17, v5

    .line 123
    .local v6, "bytesNeeded":I
    mul-int/lit8 v17, v6, 0x2

    invoke-static/range {v17 .. v17}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 125
    .local v14, "newBuffer":Ljava/nio/ByteBuffer;
    sub-int v9, v16, v5

    .line 126
    .local v9, "bytesToCopy":I
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v15

    .line 128
    .local v15, "newBufferOffset":I
    if-lez v9, :cond_3

    .line 129
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v10, v5, v0, v15, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    :cond_3
    move v5, v15

    .line 133
    add-int v16, v9, v15

    .line 134
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    .line 136
    move-object v4, v14

    .line 137
    sget-object v17, Lcom/nianticlabs/nia/network/NiaNet;->readBuffer:Ljava/lang/ThreadLocal;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 142
    .end local v2    # "BUFFER_SCALE_FACTOR":I
    .end local v6    # "bytesNeeded":I
    .end local v9    # "bytesToCopy":I
    .end local v14    # "newBuffer":Ljava/nio/ByteBuffer;
    .end local v15    # "newBufferOffset":I
    :cond_4
    array-length v0, v10

    move/from16 v17, v0

    sub-int v7, v17, v16

    .line 148
    .local v7, "bytesOfferedToRead":I
    move/from16 v0, v16

    invoke-virtual {v12, v10, v0, v7}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 150
    .local v8, "bytesRead":I
    if-ltz v8, :cond_5

    .line 151
    add-int v16, v16, v8

    .line 156
    :goto_2
    if-nez v13, :cond_2

    .line 158
    sub-int v17, v16, v5

    .line 160
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    goto :goto_1

    .line 154
    :cond_5
    const/4 v13, 0x0

    goto :goto_2

    .line 160
    .end local v3    # "available":I
    .end local v5    # "bufferOffset":I
    .end local v7    # "bytesOfferedToRead":I
    .end local v8    # "bytesRead":I
    .end local v10    # "chunk":[B
    .end local v13    # "keepReading":Z
    .end local v16    # "offset":I
    :catchall_0
    move-exception v17

    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    throw v17
.end method

.method public static request(JILjava/lang/String;ILjava/lang/String;Ljava/nio/ByteBuffer;II)V
    .locals 12
    .param p0, "object"    # J
    .param p2, "request_id"    # I
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "method"    # I
    .param p5, "headers"    # Ljava/lang/String;
    .param p6, "body"    # Ljava/nio/ByteBuffer;
    .param p7, "bodyOffset"    # I
    .param p8, "bodySize"    # I

    .prologue
    .line 73
    sget-object v1, Lcom/nianticlabs/nia/network/NiaNet;->pendingRequestIds:Ljava/util/Set;

    monitor-enter v1

    .line 74
    :try_start_0
    sget-object v0, Lcom/nianticlabs/nia/network/NiaNet;->pendingRequestIds:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    sget-object v0, Lcom/nianticlabs/nia/network/NiaNet;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/nianticlabs/nia/network/NiaNet$3;

    move-wide v2, p0

    move v4, p2

    move-object v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lcom/nianticlabs/nia/network/NiaNet$3;-><init>(JILjava/lang/String;ILjava/lang/String;Ljava/nio/ByteBuffer;II)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 82
    return-void

    .line 75
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static setHeaders(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .locals 9
    .param p0, "conn"    # Ljava/net/HttpURLConnection;
    .param p1, "headers"    # Ljava/lang/String;

    .prologue
    .line 247
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    const/4 v4, 0x0

    .line 252
    .local v4, "start":I
    :cond_2
    const/16 v6, 0xa

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 253
    .local v3, "newLine":I
    if-gez v3, :cond_3

    .line 254
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 256
    :cond_3
    const/16 v6, 0x3a

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 257
    .local v0, "colon":I
    if-gez v0, :cond_4

    .line 258
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 260
    :cond_4
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, "key":Ljava/lang/String;
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 262
    .local v5, "value":Ljava/lang/String;
    const-string v6, "If-Modified-Since"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 264
    :try_start_0
    invoke-static {v5}, Lcom/nianticlabs/nia/network/NiaNet;->parseHttpDateTime(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Ljava/net/HttpURLConnection;->setIfModifiedSince(J)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :goto_1
    add-int/lit8 v4, v3, 0x1

    .line 272
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v4, v6, :cond_2

    goto :goto_0

    .line 265
    :catch_0
    move-exception v1

    .line 266
    .local v1, "e":Ljava/text/ParseException;
    const-string v6, "NiaNet"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "If-Modified-Since Date/Time parse failed. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 269
    .end local v1    # "e":Ljava/text/ParseException;
    :cond_5
    invoke-virtual {p0, v2, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
