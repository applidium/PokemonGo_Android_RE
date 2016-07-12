.class public Landroid/support/v4/util/AtomicFile;
.super Ljava/lang/Object;
.source "AtomicFile.java"


# instance fields
.field private final mBackupName:Ljava/io/File;

.field private final mBaseName:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 3
    .param p1, "baseName"    # Ljava/io/File;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    .line 53
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".bak"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v4/util/AtomicFile;->mBackupName:Ljava/io/File;

    .line 54
    return-void
.end method

.method static sync(Ljava/io/FileOutputStream;)Z
    .locals 1
    .param p0, "stream"    # Ljava/io/FileOutputStream;

    .prologue
    .line 205
    if-eqz p0, :cond_0

    .line 206
    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :cond_0
    const/4 v0, 0x1

    .line 211
    :goto_0
    return v0

    .line 209
    :catch_0
    move-exception v0

    .line 211
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public delete()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 69
    iget-object v0, p0, Landroid/support/v4/util/AtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 70
    return-void
.end method

.method public failWrite(Ljava/io/FileOutputStream;)V
    .locals 3
    .param p1, "str"    # Ljava/io/FileOutputStream;

    .prologue
    .line 139
    if-eqz p1, :cond_0

    .line 140
    invoke-static {p1}, Landroid/support/v4/util/AtomicFile;->sync(Ljava/io/FileOutputStream;)Z

    .line 142
    :try_start_0
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 143
    iget-object v1, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 144
    iget-object v1, p0, Landroid/support/v4/util/AtomicFile;->mBackupName:Ljava/io/File;

    iget-object v2, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "AtomicFile"

    const-string v2, "failWrite: Got exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public finishWrite(Ljava/io/FileOutputStream;)V
    .locals 3
    .param p1, "str"    # Ljava/io/FileOutputStream;

    .prologue
    .line 122
    if-eqz p1, :cond_0

    .line 123
    invoke-static {p1}, Landroid/support/v4/util/AtomicFile;->sync(Ljava/io/FileOutputStream;)Z

    .line 125
    :try_start_0
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 126
    iget-object v1, p0, Landroid/support/v4/util/AtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "AtomicFile"

    const-string v2, "finishWrite: Got exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getBaseFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    return-object v0
.end method

.method public openRead()Ljava/io/FileInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Landroid/support/v4/util/AtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 166
    iget-object v0, p0, Landroid/support/v4/util/AtomicFile;->mBackupName:Ljava/io/File;

    iget-object v1, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 168
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public readFully()[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-virtual {p0}, Landroid/support/v4/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v5

    .line 178
    .local v5, "stream":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 179
    .local v4, "pos":I
    :try_start_0
    invoke-virtual {v5}, Ljava/io/FileInputStream;->available()I

    move-result v1

    .line 180
    .local v1, "avail":I
    new-array v2, v1, [B

    .line 182
    .local v2, "data":[B
    :cond_0
    :goto_0
    array-length v6, v2

    sub-int/2addr v6, v4

    invoke-virtual {v5, v2, v4, v6}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 185
    .local v0, "amt":I
    if-gtz v0, :cond_1

    .line 199
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    return-object v2

    .line 190
    :cond_1
    add-int/2addr v4, v0

    .line 191
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileInputStream;->available()I

    move-result v1

    .line 192
    array-length v6, v2

    sub-int/2addr v6, v4

    if-le v1, v6, :cond_0

    .line 193
    add-int v6, v4, v1

    new-array v3, v6, [B

    .line 194
    .local v3, "newData":[B
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v2, v6, v3, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    move-object v2, v3

    goto :goto_0

    .line 199
    .end local v0    # "amt":I
    .end local v1    # "avail":I
    .end local v2    # "data":[B
    .end local v3    # "newData":[B
    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    throw v6
.end method

.method public startWrite()Ljava/io/FileOutputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v4, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 89
    iget-object v4, p0, Landroid/support/v4/util/AtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 90
    iget-object v4, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    iget-object v5, p0, Landroid/support/v4/util/AtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 91
    const-string v4, "AtomicFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t rename file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to backup file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v4/util/AtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .line 100
    .local v3, "str":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    .end local v3    # "str":Ljava/io/FileOutputStream;
    iget-object v4, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .restart local v3    # "str":Ljava/io/FileOutputStream;
    :goto_1
    return-object v3

    .line 95
    .end local v3    # "str":Ljava/io/FileOutputStream;
    :cond_1
    iget-object v4, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/io/FileNotFoundException;
    iget-object v4, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 103
    .local v2, "parent":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-nez v4, :cond_2

    .line 104
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t create directory "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 107
    :cond_2
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v3    # "str":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 108
    .end local v3    # "str":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 109
    .local v1, "e2":Ljava/io/FileNotFoundException;
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t create "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v4/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
