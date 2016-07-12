.class public Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;
.super Lorg/apache/commons/io/filefilter/AbstractFileFilter;
.source "MagicNumberFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x799f06c25c62aacL


# instance fields
.field private final byteOffset:J

.field private final magicNumbers:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "magicNumber"    # Ljava/lang/String;

    .prologue
    .line 137
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;-><init>(Ljava/lang/String;J)V

    .line 138
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2
    .param p1, "magicNumber"    # Ljava/lang/String;
    .param p2, "offset"    # J

    .prologue
    .line 160
    invoke-direct {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    .line 161
    if-nez p1, :cond_0

    .line 162
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The magic number cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 165
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The magic number must contain at least one byte"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_2

    .line 168
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The offset cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;->magicNumbers:[B

    .line 172
    iput-wide p2, p0, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;->byteOffset:J

    .line 173
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "magicNumber"    # [B

    .prologue
    .line 112
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;-><init>([BJ)V

    .line 113
    return-void
.end method

.method public constructor <init>([BJ)V
    .locals 4
    .param p1, "magicNumber"    # [B
    .param p2, "offset"    # J

    .prologue
    const/4 v2, 0x0

    .line 205
    invoke-direct {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    .line 206
    if-nez p1, :cond_0

    .line 207
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The magic number cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    .line 210
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The magic number must contain at least one byte"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_2

    .line 213
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The offset cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_2
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;->magicNumbers:[B

    .line 217
    iget-object v0, p0, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;->magicNumbers:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 218
    iput-wide p2, p0, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;->byteOffset:J

    .line 219
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 8
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v4, 0x0

    .line 239
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 240
    const/4 v1, 0x0

    .line 242
    .local v1, "randomAccessFile":Ljava/io/RandomAccessFile;
    :try_start_0
    iget-object v5, p0, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;->magicNumbers:[B

    array-length v5, v5

    new-array v0, v5, [B

    .line 243
    .local v0, "fileBytes":[B
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v2, p1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    .end local v1    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .local v2, "randomAccessFile":Ljava/io/RandomAccessFile;
    :try_start_1
    iget-wide v6, p0, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;->byteOffset:J

    invoke-virtual {v2, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 245
    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v3

    .line 246
    .local v3, "read":I
    iget-object v5, p0, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;->magicNumbers:[B

    array-length v5, v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eq v3, v5, :cond_1

    .line 253
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 257
    .end local v0    # "fileBytes":[B
    .end local v2    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .end local v3    # "read":I
    :cond_0
    :goto_0
    return v4

    .line 249
    .restart local v0    # "fileBytes":[B
    .restart local v2    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "read":I
    :cond_1
    :try_start_2
    iget-object v5, p0, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;->magicNumbers:[B

    invoke-static {v5, v0}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v4

    .line 253
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 250
    .end local v0    # "fileBytes":[B
    .end local v2    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .end local v3    # "read":I
    .restart local v1    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v5

    .line 253
    :goto_1
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v4

    :goto_2
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v4

    .end local v1    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v0    # "fileBytes":[B
    .restart local v2    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v1    # "randomAccessFile":Ljava/io/RandomAccessFile;
    goto :goto_2

    .line 250
    .end local v1    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v2    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v1    # "randomAccessFile":Ljava/io/RandomAccessFile;
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 269
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;->magicNumbers:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    iget-wide v2, p0, Lorg/apache/commons/io/filefilter/MagicNumberFileFilter;->byteOffset:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 273
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
