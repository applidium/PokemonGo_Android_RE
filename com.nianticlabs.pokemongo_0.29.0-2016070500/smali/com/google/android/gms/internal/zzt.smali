.class public Lcom/google/android/gms/internal/zzt;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzf;


# static fields
.field protected static final DEBUG:Z

.field private static zzao:I

.field private static zzap:I


# instance fields
.field protected final zzaq:Lcom/google/android/gms/internal/zzy;

.field protected final zzar:Lcom/google/android/gms/internal/zzu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/zzs;->DEBUG:Z

    sput-boolean v0, Lcom/google/android/gms/internal/zzt;->DEBUG:Z

    const/16 v0, 0xbb8

    sput v0, Lcom/google/android/gms/internal/zzt;->zzao:I

    const/16 v0, 0x1000

    sput v0, Lcom/google/android/gms/internal/zzt;->zzap:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzy;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzu;

    sget v1, Lcom/google/android/gms/internal/zzt;->zzap:I

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzu;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzt;-><init>(Lcom/google/android/gms/internal/zzy;Lcom/google/android/gms/internal/zzu;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzy;Lcom/google/android/gms/internal/zzu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzt;->zzaq:Lcom/google/android/gms/internal/zzy;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzt;->zzar:Lcom/google/android/gms/internal/zzu;

    return-void
.end method

.method protected static zza([Lorg/apache/http/Header;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/http/Header;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/TreeMap;

    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-object v2, p0, v0

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p0, v0

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private zza(JLcom/google/android/gms/internal/zzk;[BLorg/apache/http/StatusLine;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/google/android/gms/internal/zzk",
            "<*>;[B",
            "Lorg/apache/http/StatusLine;",
            ")V"
        }
    .end annotation

    sget-boolean v0, Lcom/google/android/gms/internal/zzt;->DEBUG:Z

    if-nez v0, :cond_0

    sget v0, Lcom/google/android/gms/internal/zzt;->zzao:I

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    const-string v1, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, v2, v0

    const/4 v0, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x2

    if-eqz p4, :cond_2

    array-length v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x3

    invoke-interface {p5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzk;->zzu()Lcom/google/android/gms/internal/zzo;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzo;->zze()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzs;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    const-string v0, "null"

    goto :goto_0
.end method

.method private static zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzk;Lcom/google/android/gms/internal/zzr;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzk",
            "<*>;",
            "Lcom/google/android/gms/internal/zzr;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzr;
        }
    .end annotation

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzk;->zzu()Lcom/google/android/gms/internal/zzo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzk;->zzt()I

    move-result v1

    :try_start_0
    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/zzo;->zza(Lcom/google/android/gms/internal/zzr;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzr; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "%s-retry [timeout=%s]"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzk;->zzc(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    const-string v2, "%s-timeout-giveup [timeout=%s]"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzk;->zzc(Ljava/lang/String;)V

    throw v0
.end method

.method private zza(Ljava/util/Map;Lcom/google/android/gms/internal/zzb$zza;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/zzb$zza;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p2, Lcom/google/android/gms/internal/zzb$zza;->zzb:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "If-None-Match"

    iget-object v1, p2, Lcom/google/android/gms/internal/zzb$zza;->zzb:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-wide v0, p2, Lcom/google/android/gms/internal/zzb$zza;->zzd:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    new-instance v0, Ljava/util/Date;

    iget-wide v2, p2, Lcom/google/android/gms/internal/zzb$zza;->zzd:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    const-string v1, "If-Modified-Since"

    invoke-static {v0}, Lorg/apache/http/impl/cookie/DateUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private zza(Lorg/apache/http/HttpEntity;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/internal/zzp;
        }
    .end annotation

    const/4 v6, 0x0

    new-instance v2, Lcom/google/android/gms/internal/zzaa;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzt;->zzar:Lcom/google/android/gms/internal/zzu;

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    long-to-int v1, v4

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/zzaa;-><init>(Lcom/google/android/gms/internal/zzu;I)V

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzp;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/zzt;->zzar:Lcom/google/android/gms/internal/zzu;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/zzu;->zza([B)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaa;->close()V

    throw v0

    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/google/android/gms/internal/zzt;->zzar:Lcom/google/android/gms/internal/zzu;

    const/16 v4, 0x400

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzu;->zzb(I)[B

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Lcom/google/android/gms/internal/zzaa;->write([BII)V

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaa;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    :try_start_3
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_2
    iget-object v3, p0, Lcom/google/android/gms/internal/zzt;->zzar:Lcom/google/android/gms/internal/zzu;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/zzu;->zza([B)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaa;->close()V

    return-object v0

    :catch_0
    move-exception v3

    const-string v3, "Error occured when calling consumingContent"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/zzs;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :catch_1
    move-exception v3

    const-string v3, "Error occured when calling consumingContent"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/zzs;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzk;)Lcom/google/android/gms/internal/zzi;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzk",
            "<*>;)",
            "Lcom/google/android/gms/internal/zzi;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzr;
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    :goto_0
    const/4 v3, 0x0

    const/4 v14, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6

    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/zzk;->zzi()Lcom/google/android/gms/internal/zzb$zza;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/google/android/gms/internal/zzt;->zza(Ljava/util/Map;Lcom/google/android/gms/internal/zzb$zza;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/zzt;->zzaq:Lcom/google/android/gms/internal/zzy;

    move-object/from16 v0, p1

    invoke-interface {v4, v0, v2}, Lcom/google/android/gms/internal/zzy;->zza(Lcom/google/android/gms/internal/zzk;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v15

    :try_start_1
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzt;->zza([Lorg/apache/http/Header;)Ljava/util/Map;

    move-result-object v6

    const/16 v2, 0x130

    if-ne v4, v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/zzk;->zzi()Lcom/google/android/gms/internal/zzb$zza;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v3, Lcom/google/android/gms/internal/zzi;

    const/16 v4, 0x130

    const/4 v5, 0x0

    const/4 v7, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v8, v8, v16

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/zzi;-><init>(I[BLjava/util/Map;ZJ)V

    :goto_1
    return-object v3

    :cond_0
    iget-object v3, v2, Lcom/google/android/gms/internal/zzb$zza;->zzg:Ljava/util/Map;

    invoke-interface {v3, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    new-instance v7, Lcom/google/android/gms/internal/zzi;

    const/16 v8, 0x130

    iget-object v9, v2, Lcom/google/android/gms/internal/zzb$zza;->data:[B

    iget-object v10, v2, Lcom/google/android/gms/internal/zzb$zza;->zzg:Ljava/util/Map;

    const/4 v11, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v12, v2, v16

    invoke-direct/range {v7 .. v13}, Lcom/google/android/gms/internal/zzi;-><init>(I[BLjava/util/Map;ZJ)V

    move-object v3, v7

    goto :goto_1

    :cond_1
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/zzt;->zza(Lorg/apache/http/HttpEntity;)[B
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v11

    :goto_2
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v8, v2, v16

    move-object/from16 v7, p0

    move-object/from16 v10, p1

    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/internal/zzt;->zza(JLcom/google/android/gms/internal/zzk;[BLorg/apache/http/StatusLine;)V

    const/16 v2, 0xc8

    if-lt v4, v2, :cond_2

    const/16 v2, 0x12b

    if-le v4, v2, :cond_4

    :cond_2
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :catch_0
    move-exception v2

    const-string v2, "socket"

    new-instance v3, Lcom/google/android/gms/internal/zzq;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzq;-><init>()V

    move-object/from16 v0, p1

    invoke-static {v2, v0, v3}, Lcom/google/android/gms/internal/zzt;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzk;Lcom/google/android/gms/internal/zzr;)V

    goto/16 :goto_0

    :cond_3
    const/4 v2, 0x0

    :try_start_3
    new-array v11, v2, [B
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_2

    :cond_4
    :try_start_4
    new-instance v3, Lcom/google/android/gms/internal/zzi;

    const/4 v7, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v8, v8, v16

    move-object v5, v11

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/zzi;-><init>(I[BLjava/util/Map;ZJ)V
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v2, "connection"

    new-instance v3, Lcom/google/android/gms/internal/zzq;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzq;-><init>()V

    move-object/from16 v0, p1

    invoke-static {v2, v0, v3}, Lcom/google/android/gms/internal/zzt;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzk;Lcom/google/android/gms/internal/zzr;)V

    goto/16 :goto_0

    :catch_2
    move-exception v2

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/zzk;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_3
    move-exception v2

    move-object v5, v14

    :goto_3
    const/4 v7, 0x0

    if-eqz v3, :cond_6

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const-string v2, "Unexpected response code %d for %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v3, v8

    const/4 v8, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/zzk;->getUrl()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v8

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzs;->zzc(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v5, :cond_8

    new-instance v3, Lcom/google/android/gms/internal/zzi;

    const/4 v7, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v8, v8, v16

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/zzi;-><init>(I[BLjava/util/Map;ZJ)V

    const/16 v2, 0x191

    if-eq v4, v2, :cond_5

    const/16 v2, 0x193

    if-ne v4, v2, :cond_7

    :cond_5
    const-string v2, "auth"

    new-instance v4, Lcom/google/android/gms/internal/zza;

    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/zza;-><init>(Lcom/google/android/gms/internal/zzi;)V

    move-object/from16 v0, p1

    invoke-static {v2, v0, v4}, Lcom/google/android/gms/internal/zzt;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzk;Lcom/google/android/gms/internal/zzr;)V

    goto/16 :goto_0

    :cond_6
    new-instance v3, Lcom/google/android/gms/internal/zzj;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/zzj;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_7
    new-instance v2, Lcom/google/android/gms/internal/zzp;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzp;-><init>(Lcom/google/android/gms/internal/zzi;)V

    throw v2

    :cond_8
    new-instance v2, Lcom/google/android/gms/internal/zzh;

    invoke-direct {v2, v7}, Lcom/google/android/gms/internal/zzh;-><init>(Lcom/google/android/gms/internal/zzi;)V

    throw v2

    :catch_4
    move-exception v2

    move-object v5, v14

    move-object v3, v15

    goto :goto_3

    :catch_5
    move-exception v2

    move-object v5, v11

    move-object v3, v15

    goto :goto_3
.end method
