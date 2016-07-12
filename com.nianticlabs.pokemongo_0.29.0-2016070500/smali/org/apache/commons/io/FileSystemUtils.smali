.class public Lorg/apache/commons/io/FileSystemUtils;
.super Ljava/lang/Object;
.source "FileSystemUtils.java"


# static fields
.field private static final DF:Ljava/lang/String;

.field private static final INIT_PROBLEM:I = -0x1

.field private static final INSTANCE:Lorg/apache/commons/io/FileSystemUtils;

.field private static final OS:I

.field private static final OTHER:I = 0x0

.field private static final POSIX_UNIX:I = 0x3

.field private static final UNIX:I = 0x2

.field private static final WINDOWS:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 48
    new-instance v4, Lorg/apache/commons/io/FileSystemUtils;

    invoke-direct {v4}, Lorg/apache/commons/io/FileSystemUtils;-><init>()V

    sput-object v4, Lorg/apache/commons/io/FileSystemUtils;->INSTANCE:Lorg/apache/commons/io/FileSystemUtils;

    .line 68
    const/4 v2, 0x0

    .line 69
    .local v2, "os":I
    const-string v0, "df"

    .line 71
    .local v0, "dfPath":Ljava/lang/String;
    :try_start_0
    const-string v4, "os.name"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, "osName":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 73
    new-instance v4, Ljava/io/IOException;

    const-string v5, "os.name not found"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v3    # "osName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 100
    .local v1, "ex":Ljava/lang/Exception;
    const/4 v2, -0x1

    .line 102
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    sput v2, Lorg/apache/commons/io/FileSystemUtils;->OS:I

    .line 103
    sput-object v0, Lorg/apache/commons/io/FileSystemUtils;->DF:Ljava/lang/String;

    .line 104
    return-void

    .line 75
    .restart local v3    # "osName":Ljava/lang/String;
    :cond_0
    :try_start_1
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 77
    const-string v4, "windows"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v5, :cond_1

    .line 78
    const/4 v2, 0x1

    goto :goto_0

    .line 79
    :cond_1
    const-string v4, "linux"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v5, :cond_2

    const-string v4, "mpe/ix"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v5, :cond_2

    const-string v4, "freebsd"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v5, :cond_2

    const-string v4, "irix"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v5, :cond_2

    const-string v4, "digital unix"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v5, :cond_2

    const-string v4, "unix"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v5, :cond_2

    const-string v4, "mac os x"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v5, :cond_3

    .line 86
    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    .line 87
    :cond_3
    const-string v4, "sun os"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v5, :cond_4

    const-string v4, "sunos"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v5, :cond_4

    const-string v4, "solaris"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v5, :cond_5

    .line 90
    :cond_4
    const/4 v2, 0x3

    .line 91
    const-string v0, "/usr/xpg4/bin/df"

    goto :goto_0

    .line 92
    :cond_5
    const-string v4, "hp-ux"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v5, :cond_6

    const-string v4, "aix"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    if-eq v4, v5, :cond_7

    .line 94
    :cond_6
    const/4 v2, 0x3

    goto :goto_0

    .line 96
    :cond_7
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    return-void
.end method

.method public static freeSpace(Ljava/lang/String;)J
    .locals 6
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 142
    sget-object v0, Lorg/apache/commons/io/FileSystemUtils;->INSTANCE:Lorg/apache/commons/io/FileSystemUtils;

    sget v2, Lorg/apache/commons/io/FileSystemUtils;->OS:I

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/io/FileSystemUtils;->freeSpaceOS(Ljava/lang/String;IZJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static freeSpaceKb()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Lorg/apache/commons/io/FileSystemUtils;->freeSpaceKb(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static freeSpaceKb(J)J
    .locals 2
    .param p0, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    new-instance v0, Ljava/io/File;

    const-string v1, "."

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lorg/apache/commons/io/FileSystemUtils;->freeSpaceKb(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static freeSpaceKb(Ljava/lang/String;)J
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    const-wide/16 v0, -0x1

    invoke-static {p0, v0, v1}, Lorg/apache/commons/io/FileSystemUtils;->freeSpaceKb(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static freeSpaceKb(Ljava/lang/String;J)J
    .locals 7
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    sget-object v0, Lorg/apache/commons/io/FileSystemUtils;->INSTANCE:Lorg/apache/commons/io/FileSystemUtils;

    sget v2, Lorg/apache/commons/io/FileSystemUtils;->OS:I

    const/4 v3, 0x1

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/io/FileSystemUtils;->freeSpaceOS(Ljava/lang/String;IZJ)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method freeSpaceOS(Ljava/lang/String;IZJ)J
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "os"    # I
    .param p3, "kb"    # Z
    .param p4, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 259
    if-nez p1, :cond_0

    .line 260
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Path must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 272
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Exception caught when determining operating system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :pswitch_0
    if-eqz p3, :cond_1

    invoke-virtual {p0, p1, p4, p5}, Lorg/apache/commons/io/FileSystemUtils;->freeSpaceWindows(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    .line 268
    :goto_0
    return-wide v0

    .line 264
    :cond_1
    invoke-virtual {p0, p1, p4, p5}, Lorg/apache/commons/io/FileSystemUtils;->freeSpaceWindows(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0

    .line 266
    :pswitch_1
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/io/FileSystemUtils;->freeSpaceUnix(Ljava/lang/String;ZZJ)J

    move-result-wide v0

    goto :goto_0

    .line 268
    :pswitch_2
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/io/FileSystemUtils;->freeSpaceUnix(Ljava/lang/String;ZZJ)J

    move-result-wide v0

    goto :goto_0

    .line 270
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unsupported operating system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method freeSpaceUnix(Ljava/lang/String;ZZJ)J
    .locals 10
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "kb"    # Z
    .param p3, "posix"    # Z
    .param p4, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 380
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_0

    .line 381
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Path must not be empty"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 385
    :cond_0
    const-string v1, "-"

    .line 386
    .local v1, "flags":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 387
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "k"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 389
    :cond_1
    if-eqz p3, :cond_2

    .line 390
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "P"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 392
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_3

    const/4 v7, 0x3

    new-array v0, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    sget-object v8, Lorg/apache/commons/io/FileSystemUtils;->DF:Ljava/lang/String;

    aput-object v8, v0, v7

    const/4 v7, 0x1

    aput-object v1, v0, v7

    const/4 v7, 0x2

    aput-object p1, v0, v7

    .line 396
    .local v0, "cmdAttribs":[Ljava/lang/String;
    :goto_0
    const/4 v7, 0x3

    invoke-virtual {p0, v0, v7, p4, p5}, Lorg/apache/commons/io/FileSystemUtils;->performCommand([Ljava/lang/String;IJ)Ljava/util/List;

    move-result-object v5

    .line 397
    .local v5, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x2

    if-ge v7, v8, :cond_4

    .line 399
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Command line \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lorg/apache/commons/io/FileSystemUtils;->DF:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' did not return info as expected "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "for path \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'- response was "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 392
    .end local v0    # "cmdAttribs":[Ljava/lang/String;
    .end local v5    # "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    const/4 v7, 0x2

    new-array v0, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    sget-object v8, Lorg/apache/commons/io/FileSystemUtils;->DF:Ljava/lang/String;

    aput-object v8, v0, v7

    const/4 v7, 0x1

    aput-object p1, v0, v7

    goto :goto_0

    .line 403
    .restart local v0    # "cmdAttribs":[Ljava/lang/String;
    .restart local v5    # "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    const/4 v7, 0x1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 406
    .local v3, "line2":Ljava/lang/String;
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v7, " "

    invoke-direct {v6, v3, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    .local v6, "tok":Ljava/util/StringTokenizer;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v7

    const/4 v8, 0x4

    if-ge v7, v8, :cond_6

    .line 409
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x3

    if-lt v7, v8, :cond_5

    .line 410
    const/4 v7, 0x2

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 411
    .local v4, "line3":Ljava/lang/String;
    new-instance v6, Ljava/util/StringTokenizer;

    .end local v6    # "tok":Ljava/util/StringTokenizer;
    const-string v7, " "

    invoke-direct {v6, v4, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    .end local v4    # "line3":Ljava/lang/String;
    .restart local v6    # "tok":Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 421
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 422
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 423
    .local v2, "freeSpace":Ljava/lang/String;
    invoke-virtual {p0, v2, p1}, Lorg/apache/commons/io/FileSystemUtils;->parseBytes(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v8

    return-wide v8

    .line 413
    .end local v2    # "freeSpace":Ljava/lang/String;
    :cond_5
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Command line \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lorg/apache/commons/io/FileSystemUtils;->DF:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' did not return data as expected "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "for path \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'- check path is valid"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 418
    :cond_6
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    goto :goto_1
.end method

.method freeSpaceWindows(Ljava/lang/String;J)J
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 288
    invoke-static {p1, v6}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 289
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x22

    if-eq v4, v5, :cond_0

    .line 290
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 294
    :cond_0
    const/4 v4, 0x3

    new-array v0, v4, [Ljava/lang/String;

    const-string v4, "cmd.exe"

    aput-object v4, v0, v6

    const/4 v4, 0x1

    const-string v5, "/C"

    aput-object v5, v0, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dir /a /-c "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 297
    .local v0, "cmdAttribs":[Ljava/lang/String;
    const v4, 0x7fffffff

    invoke-virtual {p0, v0, v4, p2, p3}, Lorg/apache/commons/io/FileSystemUtils;->performCommand([Ljava/lang/String;IJ)Ljava/util/List;

    move-result-object v3

    .line 303
    .local v3, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 304
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 305
    .local v2, "line":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 306
    invoke-virtual {p0, v2, p1}, Lorg/apache/commons/io/FileSystemUtils;->parseDir(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    return-wide v4

    .line 303
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 310
    .end local v2    # "line":Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Command line \'dir /-c\' did not return any info for path \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method openProcess([Ljava/lang/String;)Ljava/lang/Process;
    .locals 1
    .param p1, "cmdAttribs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 535
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    return-object v0
.end method

.method parseBytes(Ljava/lang/String;Ljava/lang/String;)J
    .locals 6
    .param p1, "freeSpace"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 437
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 438
    .local v0, "bytes":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-gez v3, :cond_0

    .line 439
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Command line \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lorg/apache/commons/io/FileSystemUtils;->DF:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' did not find free space in response "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "for path \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'- check path is valid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    .end local v0    # "bytes":J
    :catch_0
    move-exception v2

    .line 446
    .local v2, "ex":Ljava/lang/NumberFormatException;
    new-instance v3, Lorg/apache/commons/io/IOExceptionWithCause;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Command line \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lorg/apache/commons/io/FileSystemUtils;->DF:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' did not return numeric data as expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "for path \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'- check path is valid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/apache/commons/io/IOExceptionWithCause;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 443
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    .restart local v0    # "bytes":J
    :cond_0
    return-wide v0
.end method

.method parseDir(Ljava/lang/String;Ljava/lang/String;)J
    .locals 10
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x2e

    const/16 v8, 0x2c

    .line 328
    const/4 v2, 0x0

    .line 329
    .local v2, "bytesStart":I
    const/4 v1, 0x0

    .line 330
    .local v1, "bytesEnd":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    .line 331
    .local v4, "j":I
    :goto_0
    if-ltz v4, :cond_0

    .line 332
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 333
    .local v3, "c":C
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 336
    add-int/lit8 v1, v4, 0x1

    .line 341
    .end local v3    # "c":C
    :cond_0
    :goto_1
    if-ltz v4, :cond_1

    .line 342
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 343
    .restart local v3    # "c":C
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_3

    if-eq v3, v8, :cond_3

    if-eq v3, v9, :cond_3

    .line 346
    add-int/lit8 v2, v4, 0x1

    .line 351
    .end local v3    # "c":C
    :cond_1
    if-gez v4, :cond_4

    .line 352
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Command line \'dir /-c\' did not return valid info for path \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 339
    .restart local v3    # "c":C
    :cond_2
    add-int/lit8 v4, v4, -0x1

    .line 340
    goto :goto_0

    .line 349
    :cond_3
    add-int/lit8 v4, v4, -0x1

    .line 350
    goto :goto_1

    .line 358
    .end local v3    # "c":C
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 359
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-ge v5, v7, :cond_7

    .line 360
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    if-eq v7, v8, :cond_5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_6

    .line 361
    :cond_5
    add-int/lit8 v6, v5, -0x1

    .end local v5    # "k":I
    .local v6, "k":I
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move v5, v6

    .line 359
    .end local v6    # "k":I
    .restart local v5    # "k":I
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 364
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, p2}, Lorg/apache/commons/io/FileSystemUtils;->parseBytes(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v8

    return-wide v8
.end method

.method performCommand([Ljava/lang/String;IJ)Ljava/util/List;
    .locals 15
    .param p1, "cmdAttribs"    # [Ljava/lang/String;
    .param p2, "max"    # I
    .param p3, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "IJ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 472
    new-instance v8, Ljava/util/ArrayList;

    const/16 v12, 0x14

    invoke-direct {v8, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 473
    .local v8, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .line 474
    .local v11, "proc":Ljava/lang/Process;
    const/4 v4, 0x0

    .line 475
    .local v4, "in":Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 476
    .local v10, "out":Ljava/io/OutputStream;
    const/4 v2, 0x0

    .line 477
    .local v2, "err":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 480
    .local v5, "inr":Ljava/io/BufferedReader;
    :try_start_0
    invoke-static/range {p3 .. p4}, Lorg/apache/commons/io/ThreadMonitor;->start(J)Ljava/lang/Thread;

    move-result-object v9

    .line 482
    .local v9, "monitor":Ljava/lang/Thread;
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/io/FileSystemUtils;->openProcess([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v11

    .line 483
    invoke-virtual {v11}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 484
    invoke-virtual {v11}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    .line 485
    invoke-virtual {v11}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    .line 486
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    invoke-direct {v12, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    .end local v5    # "inr":Ljava/io/BufferedReader;
    .local v6, "inr":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 488
    .local v7, "line":Ljava/lang/String;
    :goto_0
    if-eqz v7, :cond_0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    move/from16 v0, p2

    if-ge v12, v0, :cond_0

    .line 489
    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 490
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 494
    :cond_0
    invoke-virtual {v11}, Ljava/lang/Process;->waitFor()I

    .line 496
    invoke-static {v9}, Lorg/apache/commons/io/ThreadMonitor;->stop(Ljava/lang/Thread;)V

    .line 498
    invoke-virtual {v11}, Ljava/lang/Process;->exitValue()I

    move-result v12

    if-eqz v12, :cond_2

    .line 500
    new-instance v12, Ljava/io/IOException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Command line returned OS error code \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Ljava/lang/Process;->exitValue()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\' for command "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 512
    .end local v7    # "line":Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v5, v6

    .line 513
    .end local v6    # "inr":Ljava/io/BufferedReader;
    .end local v9    # "monitor":Ljava/lang/Thread;
    .local v3, "ex":Ljava/lang/InterruptedException;
    .restart local v5    # "inr":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    new-instance v12, Lorg/apache/commons/io/IOExceptionWithCause;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Command line threw an InterruptedException for command "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " timeout="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v3}, Lorg/apache/commons/io/IOExceptionWithCause;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 517
    .end local v3    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v12

    :goto_2
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 518
    invoke-static {v10}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 519
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 520
    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 521
    if-eqz v11, :cond_1

    .line 522
    invoke-virtual {v11}, Ljava/lang/Process;->destroy()V

    :cond_1
    throw v12

    .line 504
    .end local v5    # "inr":Ljava/io/BufferedReader;
    .restart local v6    # "inr":Ljava/io/BufferedReader;
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v9    # "monitor":Ljava/lang/Thread;
    :cond_2
    :try_start_3
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 506
    new-instance v12, Ljava/io/IOException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Command line did not return any info for command "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 517
    .end local v7    # "line":Ljava/lang/String;
    :catchall_1
    move-exception v12

    move-object v5, v6

    .end local v6    # "inr":Ljava/io/BufferedReader;
    .restart local v5    # "inr":Ljava/io/BufferedReader;
    goto :goto_2

    .end local v5    # "inr":Ljava/io/BufferedReader;
    .restart local v6    # "inr":Ljava/io/BufferedReader;
    .restart local v7    # "line":Ljava/lang/String;
    :cond_3
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 518
    invoke-static {v10}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 519
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 520
    invoke-static {v6}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 521
    if-eqz v11, :cond_4

    .line 522
    invoke-virtual {v11}, Ljava/lang/Process;->destroy()V

    :cond_4
    return-object v8

    .line 512
    .end local v6    # "inr":Ljava/io/BufferedReader;
    .end local v7    # "line":Ljava/lang/String;
    .end local v9    # "monitor":Ljava/lang/Thread;
    .restart local v5    # "inr":Ljava/io/BufferedReader;
    :catch_1
    move-exception v3

    goto :goto_1
.end method
