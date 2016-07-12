.class public final Lcrittercism/android/eb;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/io/File;)V
    .locals 4

    .prologue
    .line 30
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 31
    const-string v1, "com.crittercism"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 33
    if-nez v0, :cond_0

    .line 45
    :goto_0
    return-void

    .line 38
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 40
    invoke-static {v3}, Lcrittercism/android/eb;->a(Ljava/io/File;)V

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public static b(Ljava/io/File;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 54
    :try_start_1
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 57
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->read()I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    .line 58
    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_0

    .line 62
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 65
    :cond_0
    if-eqz v1, :cond_1

    .line 66
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    :cond_1
    throw v0

    .line 61
    :cond_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 65
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 61
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_1
.end method
