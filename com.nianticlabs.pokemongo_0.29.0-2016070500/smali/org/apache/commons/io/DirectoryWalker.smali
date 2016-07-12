.class public abstract Lorg/apache/commons/io/DirectoryWalker;
.super Ljava/lang/Object;
.source "DirectoryWalker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/DirectoryWalker$CancelException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final depthLimit:I

.field private final filter:Ljava/io/FileFilter;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 266
    .local p0, "this":Lorg/apache/commons/io/DirectoryWalker;, "Lorg/apache/commons/io/DirectoryWalker<TT;>;"
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/io/DirectoryWalker;-><init>(Ljava/io/FileFilter;I)V

    .line 267
    return-void
.end method

.method protected constructor <init>(Ljava/io/FileFilter;I)V
    .locals 0
    .param p1, "filter"    # Ljava/io/FileFilter;
    .param p2, "depthLimit"    # I

    .prologue
    .line 281
    .local p0, "this":Lorg/apache/commons/io/DirectoryWalker;, "Lorg/apache/commons/io/DirectoryWalker<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput-object p1, p0, Lorg/apache/commons/io/DirectoryWalker;->filter:Ljava/io/FileFilter;

    .line 283
    iput p2, p0, Lorg/apache/commons/io/DirectoryWalker;->depthLimit:I

    .line 284
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;I)V
    .locals 2
    .param p1, "directoryFilter"    # Lorg/apache/commons/io/filefilter/IOFileFilter;
    .param p2, "fileFilter"    # Lorg/apache/commons/io/filefilter/IOFileFilter;
    .param p3, "depthLimit"    # I

    .prologue
    .line 300
    .local p0, "this":Lorg/apache/commons/io/DirectoryWalker;, "Lorg/apache/commons/io/DirectoryWalker<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 302
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/io/DirectoryWalker;->filter:Ljava/io/FileFilter;

    .line 310
    :goto_0
    iput p3, p0, Lorg/apache/commons/io/DirectoryWalker;->depthLimit:I

    .line 311
    return-void

    .line 304
    :cond_0
    if-eqz p1, :cond_1

    .line 305
    :goto_1
    if-eqz p2, :cond_2

    .line 306
    :goto_2
    invoke-static {p1}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->makeDirectoryOnly(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object p1

    .line 307
    invoke-static {p2}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->makeFileOnly(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object p2

    .line 308
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/commons/io/filefilter/IOFileFilter;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->or([Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/DirectoryWalker;->filter:Ljava/io/FileFilter;

    goto :goto_0

    .line 304
    :cond_1
    sget-object p1, Lorg/apache/commons/io/filefilter/TrueFileFilter;->TRUE:Lorg/apache/commons/io/filefilter/IOFileFilter;

    goto :goto_1

    .line 305
    :cond_2
    sget-object p2, Lorg/apache/commons/io/filefilter/TrueFileFilter;->TRUE:Lorg/apache/commons/io/filefilter/IOFileFilter;

    goto :goto_2
.end method

.method private walk(Ljava/io/File;ILjava/util/Collection;)V
    .locals 7
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "depth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 351
    .local p0, "this":Lorg/apache/commons/io/DirectoryWalker;, "Lorg/apache/commons/io/DirectoryWalker<TT;>;"
    .local p3, "results":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/DirectoryWalker;->checkIfCancelled(Ljava/io/File;ILjava/util/Collection;)V

    .line 352
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/DirectoryWalker;->handleDirectory(Ljava/io/File;ILjava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 353
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/DirectoryWalker;->handleDirectoryStart(Ljava/io/File;ILjava/util/Collection;)V

    .line 354
    add-int/lit8 v1, p2, 0x1

    .line 355
    .local v1, "childDepth":I
    iget v6, p0, Lorg/apache/commons/io/DirectoryWalker;->depthLimit:I

    if-ltz v6, :cond_0

    iget v6, p0, Lorg/apache/commons/io/DirectoryWalker;->depthLimit:I

    if-gt v1, v6, :cond_1

    .line 356
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/DirectoryWalker;->checkIfCancelled(Ljava/io/File;ILjava/util/Collection;)V

    .line 357
    iget-object v6, p0, Lorg/apache/commons/io/DirectoryWalker;->filter:Ljava/io/FileFilter;

    if-nez v6, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 358
    .local v3, "childFiles":[Ljava/io/File;
    :goto_0
    invoke-virtual {p0, p1, p2, v3}, Lorg/apache/commons/io/DirectoryWalker;->filterDirectoryContents(Ljava/io/File;I[Ljava/io/File;)[Ljava/io/File;

    move-result-object v3

    .line 359
    if-nez v3, :cond_4

    .line 360
    invoke-virtual {p0, p1, v1, p3}, Lorg/apache/commons/io/DirectoryWalker;->handleRestricted(Ljava/io/File;ILjava/util/Collection;)V

    .line 373
    .end local v3    # "childFiles":[Ljava/io/File;
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/DirectoryWalker;->handleDirectoryEnd(Ljava/io/File;ILjava/util/Collection;)V

    .line 375
    .end local v1    # "childDepth":I
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/DirectoryWalker;->checkIfCancelled(Ljava/io/File;ILjava/util/Collection;)V

    .line 376
    return-void

    .line 357
    .restart local v1    # "childDepth":I
    :cond_3
    iget-object v6, p0, Lorg/apache/commons/io/DirectoryWalker;->filter:Ljava/io/FileFilter;

    invoke-virtual {p1, v6}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v3

    goto :goto_0

    .line 362
    .restart local v3    # "childFiles":[Ljava/io/File;
    :cond_4
    move-object v0, v3

    .local v0, "arr$":[Ljava/io/File;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v2, v0, v4

    .line 363
    .local v2, "childFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 364
    invoke-direct {p0, v2, v1, p3}, Lorg/apache/commons/io/DirectoryWalker;->walk(Ljava/io/File;ILjava/util/Collection;)V

    .line 362
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 366
    :cond_5
    invoke-virtual {p0, v2, v1, p3}, Lorg/apache/commons/io/DirectoryWalker;->checkIfCancelled(Ljava/io/File;ILjava/util/Collection;)V

    .line 367
    invoke-virtual {p0, v2, v1, p3}, Lorg/apache/commons/io/DirectoryWalker;->handleFile(Ljava/io/File;ILjava/util/Collection;)V

    .line 368
    invoke-virtual {p0, v2, v1, p3}, Lorg/apache/commons/io/DirectoryWalker;->checkIfCancelled(Ljava/io/File;ILjava/util/Collection;)V

    goto :goto_2
.end method


# virtual methods
.method protected final checkIfCancelled(Ljava/io/File;ILjava/util/Collection;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "depth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 394
    .local p0, "this":Lorg/apache/commons/io/DirectoryWalker;, "Lorg/apache/commons/io/DirectoryWalker<TT;>;"
    .local p3, "results":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/DirectoryWalker;->handleIsCancelled(Ljava/io/File;ILjava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    new-instance v0, Lorg/apache/commons/io/DirectoryWalker$CancelException;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/io/DirectoryWalker$CancelException;-><init>(Ljava/io/File;I)V

    throw v0

    .line 397
    :cond_0
    return-void
.end method

.method protected filterDirectoryContents(Ljava/io/File;I[Ljava/io/File;)[Ljava/io/File;
    .locals 0
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "depth"    # I
    .param p3, "files"    # [Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 520
    .local p0, "this":Lorg/apache/commons/io/DirectoryWalker;, "Lorg/apache/commons/io/DirectoryWalker<TT;>;"
    return-object p3
.end method

.method protected handleCancelled(Ljava/io/File;Ljava/util/Collection;Lorg/apache/commons/io/DirectoryWalker$CancelException;)V
    .locals 0
    .param p1, "startDirectory"    # Ljava/io/File;
    .param p3, "cancel"    # Lorg/apache/commons/io/DirectoryWalker$CancelException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Collection",
            "<TT;>;",
            "Lorg/apache/commons/io/DirectoryWalker$CancelException;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 456
    .local p0, "this":Lorg/apache/commons/io/DirectoryWalker;, "Lorg/apache/commons/io/DirectoryWalker<TT;>;"
    .local p2, "results":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    throw p3
.end method

.method protected handleDirectory(Ljava/io/File;ILjava/util/Collection;)Z
    .locals 1
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "depth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Ljava/util/Collection",
            "<TT;>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 490
    .local p0, "this":Lorg/apache/commons/io/DirectoryWalker;, "Lorg/apache/commons/io/DirectoryWalker<TT;>;"
    .local p3, "results":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method protected handleDirectoryEnd(Ljava/io/File;ILjava/util/Collection;)V
    .locals 0
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "depth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 563
    .local p0, "this":Lorg/apache/commons/io/DirectoryWalker;, "Lorg/apache/commons/io/DirectoryWalker<TT;>;"
    .local p3, "results":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    return-void
.end method

.method protected handleDirectoryStart(Ljava/io/File;ILjava/util/Collection;)V
    .locals 0
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "depth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 505
    .local p0, "this":Lorg/apache/commons/io/DirectoryWalker;, "Lorg/apache/commons/io/DirectoryWalker<TT;>;"
    .local p3, "results":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    return-void
.end method

.method protected handleEnd(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 575
    .local p0, "this":Lorg/apache/commons/io/DirectoryWalker;, "Lorg/apache/commons/io/DirectoryWalker<TT;>;"
    .local p1, "results":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    return-void
.end method

.method protected handleFile(Ljava/io/File;ILjava/util/Collection;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;
    .param p2, "depth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 535
    .local p0, "this":Lorg/apache/commons/io/DirectoryWalker;, "Lorg/apache/commons/io/DirectoryWalker<TT;>;"
    .local p3, "results":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    return-void
.end method

.method protected handleIsCancelled(Ljava/io/File;ILjava/util/Collection;)Z
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "depth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Ljava/util/Collection",
            "<TT;>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 437
    .local p0, "this":Lorg/apache/commons/io/DirectoryWalker;, "Lorg/apache/commons/io/DirectoryWalker<TT;>;"
    .local p3, "results":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected handleRestricted(Ljava/io/File;ILjava/util/Collection;)V
    .locals 0
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "depth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 549
    .local p0, "this":Lorg/apache/commons/io/DirectoryWalker;, "Lorg/apache/commons/io/DirectoryWalker<TT;>;"
    .local p3, "results":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    return-void
.end method

.method protected handleStart(Ljava/io/File;Ljava/util/Collection;)V
    .locals 0
    .param p1, "startDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 471
    .local p0, "this":Lorg/apache/commons/io/DirectoryWalker;, "Lorg/apache/commons/io/DirectoryWalker<TT;>;"
    .local p2, "results":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    return-void
.end method

.method protected final walk(Ljava/io/File;Ljava/util/Collection;)V
    .locals 3
    .param p1, "startDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 330
    .local p0, "this":Lorg/apache/commons/io/DirectoryWalker;, "Lorg/apache/commons/io/DirectoryWalker<TT;>;"
    .local p2, "results":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    if-nez p1, :cond_0

    .line 331
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Start Directory is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 334
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/io/DirectoryWalker;->handleStart(Ljava/io/File;Ljava/util/Collection;)V

    .line 335
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, p2}, Lorg/apache/commons/io/DirectoryWalker;->walk(Ljava/io/File;ILjava/util/Collection;)V

    .line 336
    invoke-virtual {p0, p2}, Lorg/apache/commons/io/DirectoryWalker;->handleEnd(Ljava/util/Collection;)V
    :try_end_0
    .catch Lorg/apache/commons/io/DirectoryWalker$CancelException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :goto_0
    return-void

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, "cancel":Lorg/apache/commons/io/DirectoryWalker$CancelException;
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/io/DirectoryWalker;->handleCancelled(Ljava/io/File;Ljava/util/Collection;Lorg/apache/commons/io/DirectoryWalker$CancelException;)V

    goto :goto_0
.end method
