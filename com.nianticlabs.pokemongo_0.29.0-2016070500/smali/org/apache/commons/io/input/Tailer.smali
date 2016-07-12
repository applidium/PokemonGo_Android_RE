.class public Lorg/apache/commons/io/input/Tailer;
.super Ljava/lang/Object;
.source "Tailer.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DEFAULT_BUFSIZE:I = 0x1000

.field private static final DEFAULT_DELAY_MILLIS:I = 0x3e8

.field private static final RAF_MODE:Ljava/lang/String; = "r"


# instance fields
.field private final delayMillis:J

.field private final end:Z

.field private final file:Ljava/io/File;

.field private final inbuf:[B

.field private final listener:Lorg/apache/commons/io/input/TailerListener;

.field private final reOpen:Z

.field private volatile run:Z


# direct methods
.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "listener"    # Lorg/apache/commons/io/input/TailerListener;

    .prologue
    .line 156
    const-wide/16 v0, 0x3e8

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;J)V

    .line 157
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;J)V
    .locals 7
    .param p1, "file"    # Ljava/io/File;
    .param p2, "listener"    # Lorg/apache/commons/io/input/TailerListener;
    .param p3, "delayMillis"    # J

    .prologue
    .line 166
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZ)V

    .line 167
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZ)V
    .locals 9
    .param p1, "file"    # Ljava/io/File;
    .param p2, "listener"    # Lorg/apache/commons/io/input/TailerListener;
    .param p3, "delayMillis"    # J
    .param p5, "end"    # Z

    .prologue
    .line 177
    const/16 v7, 0x1000

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZI)V

    .line 178
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZI)V
    .locals 9
    .param p1, "file"    # Ljava/io/File;
    .param p2, "listener"    # Lorg/apache/commons/io/input/TailerListener;
    .param p3, "delayMillis"    # J
    .param p5, "end"    # Z
    .param p6, "bufSize"    # I

    .prologue
    .line 201
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move v8, p6

    invoke-direct/range {v1 .. v8}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZI)V

    .line 202
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZ)V
    .locals 9
    .param p1, "file"    # Ljava/io/File;
    .param p2, "listener"    # Lorg/apache/commons/io/input/TailerListener;
    .param p3, "delayMillis"    # J
    .param p5, "end"    # Z
    .param p6, "reOpen"    # Z

    .prologue
    .line 189
    const/16 v8, 0x1000

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v8}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZI)V

    .line 190
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZI)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "listener"    # Lorg/apache/commons/io/input/TailerListener;
    .param p3, "delayMillis"    # J
    .param p5, "end"    # Z
    .param p6, "reOpen"    # Z
    .param p7, "bufSize"    # I

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/io/input/Tailer;->run:Z

    .line 214
    iput-object p1, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    .line 215
    iput-wide p3, p0, Lorg/apache/commons/io/input/Tailer;->delayMillis:J

    .line 216
    iput-boolean p5, p0, Lorg/apache/commons/io/input/Tailer;->end:Z

    .line 218
    new-array v0, p7, [B

    iput-object v0, p0, Lorg/apache/commons/io/input/Tailer;->inbuf:[B

    .line 221
    iput-object p2, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    .line 222
    invoke-interface {p2, p0}, Lorg/apache/commons/io/input/TailerListener;->init(Lorg/apache/commons/io/input/Tailer;)V

    .line 223
    iput-boolean p6, p0, Lorg/apache/commons/io/input/Tailer;->reOpen:Z

    .line 224
    return-void
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;)Lorg/apache/commons/io/input/Tailer;
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "listener"    # Lorg/apache/commons/io/input/TailerListener;

    .prologue
    .line 312
    const-wide/16 v0, 0x3e8

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lorg/apache/commons/io/input/Tailer;->create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZ)Lorg/apache/commons/io/input/Tailer;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;J)Lorg/apache/commons/io/input/Tailer;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p1, "listener"    # Lorg/apache/commons/io/input/TailerListener;
    .param p2, "delayMillis"    # J

    .prologue
    .line 300
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/io/input/Tailer;->create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZ)Lorg/apache/commons/io/input/Tailer;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZ)Lorg/apache/commons/io/input/Tailer;
    .locals 6
    .param p0, "file"    # Ljava/io/File;
    .param p1, "listener"    # Lorg/apache/commons/io/input/TailerListener;
    .param p2, "delayMillis"    # J
    .param p4, "end"    # Z

    .prologue
    .line 274
    const/16 v5, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/io/input/Tailer;->create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZI)Lorg/apache/commons/io/input/Tailer;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZI)Lorg/apache/commons/io/input/Tailer;
    .locals 8
    .param p0, "file"    # Ljava/io/File;
    .param p1, "listener"    # Lorg/apache/commons/io/input/TailerListener;
    .param p2, "delayMillis"    # J
    .param p4, "end"    # Z
    .param p5, "bufSize"    # I

    .prologue
    .line 237
    new-instance v1, Lorg/apache/commons/io/input/Tailer;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZI)V

    .line 238
    .local v1, "tailer":Lorg/apache/commons/io/input/Tailer;
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 239
    .local v0, "thread":Ljava/lang/Thread;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 240
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 241
    return-object v1
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZ)Lorg/apache/commons/io/input/Tailer;
    .locals 8
    .param p0, "file"    # Ljava/io/File;
    .param p1, "listener"    # Lorg/apache/commons/io/input/TailerListener;
    .param p2, "delayMillis"    # J
    .param p4, "end"    # Z
    .param p5, "reOpen"    # Z

    .prologue
    .line 288
    const/16 v6, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/io/input/Tailer;->create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZI)Lorg/apache/commons/io/input/Tailer;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZI)Lorg/apache/commons/io/input/Tailer;
    .locals 10
    .param p0, "file"    # Ljava/io/File;
    .param p1, "listener"    # Lorg/apache/commons/io/input/TailerListener;
    .param p2, "delayMillis"    # J
    .param p4, "end"    # Z
    .param p5, "reOpen"    # Z
    .param p6, "bufSize"    # I

    .prologue
    .line 257
    new-instance v1, Lorg/apache/commons/io/input/Tailer;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZI)V

    .line 258
    .local v1, "tailer":Lorg/apache/commons/io/input/Tailer;
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 259
    .local v0, "thread":Ljava/lang/Thread;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 260
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 261
    return-object v1
.end method

.method private readLines(Ljava/io/RandomAccessFile;)J
    .locals 14
    .param p1, "reader"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 449
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 451
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    .line 452
    .local v4, "pos":J
    move-wide v6, v4

    .line 455
    .local v6, "rePos":J
    const/4 v8, 0x0

    .line 456
    .local v8, "seenCR":Z
    :goto_0
    iget-boolean v9, p0, Lorg/apache/commons/io/input/Tailer;->run:Z

    if-eqz v9, :cond_3

    iget-object v9, p0, Lorg/apache/commons/io/input/Tailer;->inbuf:[B

    invoke-virtual {p1, v9}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v2

    .local v2, "num":I
    const/4 v9, -0x1

    if-eq v2, v9, :cond_3

    .line 457
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 458
    iget-object v9, p0, Lorg/apache/commons/io/input/Tailer;->inbuf:[B

    aget-byte v0, v9, v1

    .line 459
    .local v0, "ch":B
    packed-switch v0, :pswitch_data_0

    .line 473
    :pswitch_0
    if-eqz v8, :cond_0

    .line 474
    const/4 v8, 0x0

    .line 475
    iget-object v9, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/io/input/TailerListener;->handle(Ljava/lang/String;)V

    .line 476
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 477
    int-to-long v10, v1

    add-long/2addr v10, v4

    const-wide/16 v12, 0x1

    add-long v6, v10, v12

    .line 479
    :cond_0
    int-to-char v9, v0

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 457
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 461
    :pswitch_1
    const/4 v8, 0x0

    .line 462
    iget-object v9, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/io/input/TailerListener;->handle(Ljava/lang/String;)V

    .line 463
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 464
    int-to-long v10, v1

    add-long/2addr v10, v4

    const-wide/16 v12, 0x1

    add-long v6, v10, v12

    .line 465
    goto :goto_2

    .line 467
    :pswitch_2
    if-eqz v8, :cond_1

    .line 468
    const/16 v9, 0xd

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 470
    :cond_1
    const/4 v8, 0x1

    .line 471
    goto :goto_2

    .line 483
    .end local v0    # "ch":B
    :cond_2
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    goto :goto_0

    .line 486
    .end local v1    # "i":I
    .end local v2    # "num":I
    :cond_3
    invoke-virtual {p1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 487
    return-wide v6

    .line 459
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getDelay()J
    .locals 2

    .prologue
    .line 330
    iget-wide v0, p0, Lorg/apache/commons/io/input/Tailer;->delayMillis:J

    return-wide v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    return-object v0
.end method

.method public run()V
    .locals 14

    .prologue
    .line 337
    const/4 v8, 0x0

    .line 339
    .local v8, "reader":Ljava/io/RandomAccessFile;
    const-wide/16 v2, 0x0

    .line 340
    .local v2, "last":J
    const-wide/16 v6, 0x0

    .local v6, "position":J
    move-object v9, v8

    .line 342
    .end local v8    # "reader":Ljava/io/RandomAccessFile;
    .local v9, "reader":Ljava/io/RandomAccessFile;
    :goto_0
    :try_start_0
    iget-boolean v11, p0, Lorg/apache/commons/io/input/Tailer;->run:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v11, :cond_2

    if-nez v9, :cond_2

    .line 344
    :try_start_1
    new-instance v8, Ljava/io/RandomAccessFile;

    iget-object v11, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    const-string v12, "r"

    invoke-direct {v8, v11, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 349
    .end local v9    # "reader":Ljava/io/RandomAccessFile;
    .restart local v8    # "reader":Ljava/io/RandomAccessFile;
    :goto_1
    if-nez v8, :cond_0

    .line 351
    :try_start_2
    iget-wide v12, p0, Lorg/apache/commons/io/input/Tailer;->delayMillis:J

    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v9, v8

    .line 353
    .end local v8    # "reader":Ljava/io/RandomAccessFile;
    .restart local v9    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_3
    iget-object v11, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v11}, Lorg/apache/commons/io/input/TailerListener;->fileNotFound()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v8, v9

    .end local v9    # "reader":Ljava/io/RandomAccessFile;
    .restart local v8    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_1

    .line 352
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v11

    move-object v9, v8

    .line 353
    .end local v8    # "reader":Ljava/io/RandomAccessFile;
    .restart local v9    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 356
    .end local v9    # "reader":Ljava/io/RandomAccessFile;
    .restart local v8    # "reader":Ljava/io/RandomAccessFile;
    :cond_0
    :try_start_4
    iget-boolean v11, p0, Lorg/apache/commons/io/input/Tailer;->end:Z

    if-eqz v11, :cond_1

    iget-object v11, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 357
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 358
    invoke-virtual {v8, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v9, v8

    .end local v8    # "reader":Ljava/io/RandomAccessFile;
    .restart local v9    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 356
    .end local v9    # "reader":Ljava/io/RandomAccessFile;
    .restart local v8    # "reader":Ljava/io/RandomAccessFile;
    :cond_1
    const-wide/16 v6, 0x0

    goto :goto_2

    .line 362
    .end local v8    # "reader":Ljava/io/RandomAccessFile;
    .restart local v9    # "reader":Ljava/io/RandomAccessFile;
    :cond_2
    :goto_3
    :try_start_5
    iget-boolean v11, p0, Lorg/apache/commons/io/input/Tailer;->run:Z

    if-eqz v11, :cond_7

    .line 364
    iget-object v11, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    invoke-static {v11, v2, v3}, Lorg/apache/commons/io/FileUtils;->isFileNewer(Ljava/io/File;J)Z

    move-result v1

    .line 367
    .local v1, "newer":Z
    iget-object v11, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 369
    .local v4, "length":J
    cmp-long v11, v4, v6

    if-gez v11, :cond_3

    .line 372
    iget-object v11, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v11}, Lorg/apache/commons/io/input/TailerListener;->fileRotated()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 377
    move-object v10, v9

    .line 378
    .local v10, "save":Ljava/io/RandomAccessFile;
    :try_start_6
    new-instance v8, Ljava/io/RandomAccessFile;

    iget-object v11, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    const-string v12, "r"

    invoke-direct {v8, v11, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 379
    .end local v9    # "reader":Ljava/io/RandomAccessFile;
    .restart local v8    # "reader":Ljava/io/RandomAccessFile;
    const-wide/16 v6, 0x0

    .line 381
    :try_start_7
    invoke-static {v10}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v9, v8

    .line 385
    .end local v8    # "reader":Ljava/io/RandomAccessFile;
    .restart local v9    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 382
    :catch_2
    move-exception v0

    move-object v8, v9

    .line 384
    .end local v9    # "reader":Ljava/io/RandomAccessFile;
    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v8    # "reader":Ljava/io/RandomAccessFile;
    :goto_4
    :try_start_8
    iget-object v11, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v11}, Lorg/apache/commons/io/input/TailerListener;->fileNotFound()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object v9, v8

    .line 386
    .end local v8    # "reader":Ljava/io/RandomAccessFile;
    .restart local v9    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 392
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v10    # "save":Ljava/io/RandomAccessFile;
    :cond_3
    cmp-long v11, v4, v6

    if-lez v11, :cond_6

    .line 395
    :try_start_9
    invoke-direct {p0, v9}, Lorg/apache/commons/io/input/Tailer;->readLines(Ljava/io/RandomAccessFile;)J

    move-result-wide v6

    .line 396
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 412
    :cond_4
    :goto_5
    iget-boolean v11, p0, Lorg/apache/commons/io/input/Tailer;->reOpen:Z

    if-eqz v11, :cond_5

    .line 413
    invoke-static {v9}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 416
    :cond_5
    :try_start_a
    iget-wide v12, p0, Lorg/apache/commons/io/input/Tailer;->delayMillis:J

    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 419
    :goto_6
    :try_start_b
    iget-boolean v11, p0, Lorg/apache/commons/io/input/Tailer;->run:Z

    if-eqz v11, :cond_8

    iget-boolean v11, p0, Lorg/apache/commons/io/input/Tailer;->reOpen:Z

    if-eqz v11, :cond_8

    .line 420
    new-instance v8, Ljava/io/RandomAccessFile;

    iget-object v11, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    const-string v12, "r"

    invoke-direct {v8, v11, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 421
    .end local v9    # "reader":Ljava/io/RandomAccessFile;
    .restart local v8    # "reader":Ljava/io/RandomAccessFile;
    :try_start_c
    invoke-virtual {v8, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :goto_7
    move-object v9, v8

    .line 423
    .end local v8    # "reader":Ljava/io/RandomAccessFile;
    .restart local v9    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 398
    :cond_6
    if-eqz v1, :cond_4

    .line 404
    const-wide/16 v6, 0x0

    .line 405
    :try_start_d
    invoke-virtual {v9, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 408
    invoke-direct {p0, v9}, Lorg/apache/commons/io/input/Tailer;->readLines(Ljava/io/RandomAccessFile;)J

    move-result-wide v6

    .line 409
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result-wide v2

    goto :goto_5

    .line 430
    .end local v1    # "newer":Z
    .end local v4    # "length":J
    :cond_7
    invoke-static {v9}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v8, v9

    .line 432
    .end local v9    # "reader":Ljava/io/RandomAccessFile;
    .restart local v8    # "reader":Ljava/io/RandomAccessFile;
    :goto_8
    return-void

    .line 425
    .end local v8    # "reader":Ljava/io/RandomAccessFile;
    .restart local v9    # "reader":Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v0

    move-object v8, v9

    .line 427
    .end local v9    # "reader":Ljava/io/RandomAccessFile;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v8    # "reader":Ljava/io/RandomAccessFile;
    :goto_9
    :try_start_e
    iget-object v11, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v11, v0}, Lorg/apache/commons/io/input/TailerListener;->handle(Ljava/lang/Exception;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 430
    invoke-static {v8}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_8

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v8    # "reader":Ljava/io/RandomAccessFile;
    .restart local v9    # "reader":Ljava/io/RandomAccessFile;
    :catchall_0
    move-exception v11

    move-object v8, v9

    .end local v9    # "reader":Ljava/io/RandomAccessFile;
    .restart local v8    # "reader":Ljava/io/RandomAccessFile;
    :goto_a
    invoke-static {v8}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v11

    :catchall_1
    move-exception v11

    goto :goto_a

    .line 425
    :catch_4
    move-exception v0

    goto :goto_9

    .line 417
    .end local v8    # "reader":Ljava/io/RandomAccessFile;
    .restart local v1    # "newer":Z
    .restart local v4    # "length":J
    .restart local v9    # "reader":Ljava/io/RandomAccessFile;
    :catch_5
    move-exception v11

    goto :goto_6

    .line 382
    .end local v9    # "reader":Ljava/io/RandomAccessFile;
    .restart local v8    # "reader":Ljava/io/RandomAccessFile;
    .restart local v10    # "save":Ljava/io/RandomAccessFile;
    :catch_6
    move-exception v0

    goto :goto_4

    .end local v8    # "reader":Ljava/io/RandomAccessFile;
    .end local v10    # "save":Ljava/io/RandomAccessFile;
    .restart local v9    # "reader":Ljava/io/RandomAccessFile;
    :cond_8
    move-object v8, v9

    .end local v9    # "reader":Ljava/io/RandomAccessFile;
    .restart local v8    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_7
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 438
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/io/input/Tailer;->run:Z

    .line 439
    return-void
.end method
