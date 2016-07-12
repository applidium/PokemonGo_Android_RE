.class public Lorg/apache/commons/io/monitor/FileAlterationObserver;
.super Ljava/lang/Object;
.source "FileAlterationObserver.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final fileFilter:Ljava/io/FileFilter;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/io/monitor/FileAlterationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final rootEntry:Lorg/apache/commons/io/monitor/FileEntry;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "directory"    # Ljava/io/File;

    .prologue
    .line 166
    const/4 v0, 0x0

    check-cast v0, Ljava/io/FileFilter;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/monitor/FileAlterationObserver;-><init>(Ljava/io/File;Ljava/io/FileFilter;)V

    .line 167
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/FileFilter;)V
    .locals 1
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "fileFilter"    # Ljava/io/FileFilter;

    .prologue
    .line 176
    const/4 v0, 0x0

    check-cast v0, Lorg/apache/commons/io/IOCase;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/io/monitor/FileAlterationObserver;-><init>(Ljava/io/File;Ljava/io/FileFilter;Lorg/apache/commons/io/IOCase;)V

    .line 177
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/FileFilter;Lorg/apache/commons/io/IOCase;)V
    .locals 1
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "fileFilter"    # Ljava/io/FileFilter;
    .param p3, "caseSensitivity"    # Lorg/apache/commons/io/IOCase;

    .prologue
    .line 188
    new-instance v0, Lorg/apache/commons/io/monitor/FileEntry;

    invoke-direct {v0, p1}, Lorg/apache/commons/io/monitor/FileEntry;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0, p2, p3}, Lorg/apache/commons/io/monitor/FileAlterationObserver;-><init>(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/FileFilter;Lorg/apache/commons/io/IOCase;)V

    .line 189
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "directoryName"    # Ljava/lang/String;

    .prologue
    .line 135
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/commons/io/monitor/FileAlterationObserver;-><init>(Ljava/io/File;)V

    .line 136
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/FileFilter;)V
    .locals 1
    .param p1, "directoryName"    # Ljava/lang/String;
    .param p2, "fileFilter"    # Ljava/io/FileFilter;

    .prologue
    .line 145
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/io/monitor/FileAlterationObserver;-><init>(Ljava/io/File;Ljava/io/FileFilter;)V

    .line 146
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/FileFilter;Lorg/apache/commons/io/IOCase;)V
    .locals 1
    .param p1, "directoryName"    # Ljava/lang/String;
    .param p2, "fileFilter"    # Ljava/io/FileFilter;
    .param p3, "caseSensitivity"    # Lorg/apache/commons/io/IOCase;

    .prologue
    .line 157
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3}, Lorg/apache/commons/io/monitor/FileAlterationObserver;-><init>(Ljava/io/File;Ljava/io/FileFilter;Lorg/apache/commons/io/IOCase;)V

    .line 158
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/FileFilter;Lorg/apache/commons/io/IOCase;)V
    .locals 2
    .param p1, "rootEntry"    # Lorg/apache/commons/io/monitor/FileEntry;
    .param p2, "fileFilter"    # Ljava/io/FileFilter;
    .param p3, "caseSensitivity"    # Lorg/apache/commons/io/IOCase;

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->listeners:Ljava/util/List;

    .line 200
    if-nez p1, :cond_0

    .line 201
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Root entry is missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/io/monitor/FileEntry;->getFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    .line 204
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Root directory is missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_1
    iput-object p1, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->rootEntry:Lorg/apache/commons/io/monitor/FileEntry;

    .line 207
    iput-object p2, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->fileFilter:Ljava/io/FileFilter;

    .line 208
    if-eqz p3, :cond_2

    sget-object v0, Lorg/apache/commons/io/IOCase;->SYSTEM:Lorg/apache/commons/io/IOCase;

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 209
    :cond_2
    sget-object v0, Lorg/apache/commons/io/comparator/NameFileComparator;->NAME_SYSTEM_COMPARATOR:Ljava/util/Comparator;

    iput-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->comparator:Ljava/util/Comparator;

    .line 215
    :goto_0
    return-void

    .line 210
    :cond_3
    sget-object v0, Lorg/apache/commons/io/IOCase;->INSENSITIVE:Lorg/apache/commons/io/IOCase;

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 211
    sget-object v0, Lorg/apache/commons/io/comparator/NameFileComparator;->NAME_INSENSITIVE_COMPARATOR:Ljava/util/Comparator;

    iput-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->comparator:Ljava/util/Comparator;

    goto :goto_0

    .line 213
    :cond_4
    sget-object v0, Lorg/apache/commons/io/comparator/NameFileComparator;->NAME_COMPARATOR:Ljava/util/Comparator;

    iput-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->comparator:Ljava/util/Comparator;

    goto :goto_0
.end method

.method private checkAndNotify(Lorg/apache/commons/io/monitor/FileEntry;[Lorg/apache/commons/io/monitor/FileEntry;[Ljava/io/File;)V
    .locals 9
    .param p1, "parent"    # Lorg/apache/commons/io/monitor/FileEntry;
    .param p2, "previous"    # [Lorg/apache/commons/io/monitor/FileEntry;
    .param p3, "files"    # [Ljava/io/File;

    .prologue
    .line 325
    const/4 v1, 0x0

    .line 326
    .local v1, "c":I
    array-length v6, p3

    if-lez v6, :cond_0

    array-length v6, p3

    new-array v2, v6, [Lorg/apache/commons/io/monitor/FileEntry;

    .line 327
    .local v2, "current":[Lorg/apache/commons/io/monitor/FileEntry;
    :goto_0
    move-object v0, p2

    .local v0, "arr$":[Lorg/apache/commons/io/monitor/FileEntry;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v3, v0, v4

    .line 328
    .local v3, "entry":Lorg/apache/commons/io/monitor/FileEntry;
    :goto_2
    array-length v6, p3

    if-ge v1, v6, :cond_1

    iget-object v6, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->comparator:Ljava/util/Comparator;

    invoke-virtual {v3}, Lorg/apache/commons/io/monitor/FileEntry;->getFile()Ljava/io/File;

    move-result-object v7

    aget-object v8, p3, v1

    invoke-interface {v6, v7, v8}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-lez v6, :cond_1

    .line 329
    aget-object v6, p3, v1

    invoke-direct {p0, p1, v6}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->createFileEntry(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/File;)Lorg/apache/commons/io/monitor/FileEntry;

    move-result-object v6

    aput-object v6, v2, v1

    .line 330
    aget-object v6, v2, v1

    invoke-direct {p0, v6}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->doCreate(Lorg/apache/commons/io/monitor/FileEntry;)V

    .line 331
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 326
    .end local v0    # "arr$":[Lorg/apache/commons/io/monitor/FileEntry;
    .end local v2    # "current":[Lorg/apache/commons/io/monitor/FileEntry;
    .end local v3    # "entry":Lorg/apache/commons/io/monitor/FileEntry;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_0
    sget-object v2, Lorg/apache/commons/io/monitor/FileEntry;->EMPTY_ENTRIES:[Lorg/apache/commons/io/monitor/FileEntry;

    goto :goto_0

    .line 333
    .restart local v0    # "arr$":[Lorg/apache/commons/io/monitor/FileEntry;
    .restart local v2    # "current":[Lorg/apache/commons/io/monitor/FileEntry;
    .restart local v3    # "entry":Lorg/apache/commons/io/monitor/FileEntry;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    :cond_1
    array-length v6, p3

    if-ge v1, v6, :cond_2

    iget-object v6, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->comparator:Ljava/util/Comparator;

    invoke-virtual {v3}, Lorg/apache/commons/io/monitor/FileEntry;->getFile()Ljava/io/File;

    move-result-object v7

    aget-object v8, p3, v1

    invoke-interface {v6, v7, v8}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-nez v6, :cond_2

    .line 334
    aget-object v6, p3, v1

    invoke-direct {p0, v3, v6}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->doMatch(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/File;)V

    .line 335
    invoke-virtual {v3}, Lorg/apache/commons/io/monitor/FileEntry;->getChildren()[Lorg/apache/commons/io/monitor/FileEntry;

    move-result-object v6

    aget-object v7, p3, v1

    invoke-direct {p0, v7}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->listFiles(Ljava/io/File;)[Ljava/io/File;

    move-result-object v7

    invoke-direct {p0, v3, v6, v7}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->checkAndNotify(Lorg/apache/commons/io/monitor/FileEntry;[Lorg/apache/commons/io/monitor/FileEntry;[Ljava/io/File;)V

    .line 336
    aput-object v3, v2, v1

    .line 337
    add-int/lit8 v1, v1, 0x1

    .line 327
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 339
    :cond_2
    invoke-virtual {v3}, Lorg/apache/commons/io/monitor/FileEntry;->getChildren()[Lorg/apache/commons/io/monitor/FileEntry;

    move-result-object v6

    sget-object v7, Lorg/apache/commons/io/FileUtils;->EMPTY_FILE_ARRAY:[Ljava/io/File;

    invoke-direct {p0, v3, v6, v7}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->checkAndNotify(Lorg/apache/commons/io/monitor/FileEntry;[Lorg/apache/commons/io/monitor/FileEntry;[Ljava/io/File;)V

    .line 340
    invoke-direct {p0, v3}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->doDelete(Lorg/apache/commons/io/monitor/FileEntry;)V

    goto :goto_3

    .line 343
    .end local v3    # "entry":Lorg/apache/commons/io/monitor/FileEntry;
    :cond_3
    :goto_4
    array-length v6, p3

    if-ge v1, v6, :cond_4

    .line 344
    aget-object v6, p3, v1

    invoke-direct {p0, p1, v6}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->createFileEntry(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/File;)Lorg/apache/commons/io/monitor/FileEntry;

    move-result-object v6

    aput-object v6, v2, v1

    .line 345
    aget-object v6, v2, v1

    invoke-direct {p0, v6}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->doCreate(Lorg/apache/commons/io/monitor/FileEntry;)V

    .line 343
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 347
    :cond_4
    invoke-virtual {p1, v2}, Lorg/apache/commons/io/monitor/FileEntry;->setChildren([Lorg/apache/commons/io/monitor/FileEntry;)V

    .line 348
    return-void
.end method

.method private createFileEntry(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/File;)Lorg/apache/commons/io/monitor/FileEntry;
    .locals 5
    .param p1, "parent"    # Lorg/apache/commons/io/monitor/FileEntry;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 358
    invoke-virtual {p1, p2}, Lorg/apache/commons/io/monitor/FileEntry;->newChildInstance(Ljava/io/File;)Lorg/apache/commons/io/monitor/FileEntry;

    move-result-object v1

    .line 359
    .local v1, "entry":Lorg/apache/commons/io/monitor/FileEntry;
    invoke-virtual {v1, p2}, Lorg/apache/commons/io/monitor/FileEntry;->refresh(Ljava/io/File;)Z

    .line 360
    invoke-direct {p0, p2}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->listFiles(Ljava/io/File;)[Ljava/io/File;

    move-result-object v2

    .line 361
    .local v2, "files":[Ljava/io/File;
    array-length v4, v2

    if-lez v4, :cond_0

    array-length v4, v2

    new-array v0, v4, [Lorg/apache/commons/io/monitor/FileEntry;

    .line 362
    .local v0, "children":[Lorg/apache/commons/io/monitor/FileEntry;
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 363
    aget-object v4, v2, v3

    invoke-direct {p0, v1, v4}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->createFileEntry(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/File;)Lorg/apache/commons/io/monitor/FileEntry;

    move-result-object v4

    aput-object v4, v0, v3

    .line 362
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 361
    .end local v0    # "children":[Lorg/apache/commons/io/monitor/FileEntry;
    .end local v3    # "i":I
    :cond_0
    sget-object v0, Lorg/apache/commons/io/monitor/FileEntry;->EMPTY_ENTRIES:[Lorg/apache/commons/io/monitor/FileEntry;

    goto :goto_0

    .line 365
    .restart local v0    # "children":[Lorg/apache/commons/io/monitor/FileEntry;
    .restart local v3    # "i":I
    :cond_1
    invoke-virtual {v1, v0}, Lorg/apache/commons/io/monitor/FileEntry;->setChildren([Lorg/apache/commons/io/monitor/FileEntry;)V

    .line 366
    return-object v1
.end method

.method private doCreate(Lorg/apache/commons/io/monitor/FileEntry;)V
    .locals 7
    .param p1, "entry"    # Lorg/apache/commons/io/monitor/FileEntry;

    .prologue
    .line 375
    iget-object v6, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->listeners:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/io/monitor/FileAlterationListener;

    .line 376
    .local v5, "listener":Lorg/apache/commons/io/monitor/FileAlterationListener;
    invoke-virtual {p1}, Lorg/apache/commons/io/monitor/FileEntry;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 377
    invoke-virtual {p1}, Lorg/apache/commons/io/monitor/FileEntry;->getFile()Ljava/io/File;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/io/monitor/FileAlterationListener;->onDirectoryCreate(Ljava/io/File;)V

    goto :goto_0

    .line 379
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/io/monitor/FileEntry;->getFile()Ljava/io/File;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/io/monitor/FileAlterationListener;->onFileCreate(Ljava/io/File;)V

    goto :goto_0

    .line 382
    .end local v5    # "listener":Lorg/apache/commons/io/monitor/FileAlterationListener;
    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/io/monitor/FileEntry;->getChildren()[Lorg/apache/commons/io/monitor/FileEntry;

    move-result-object v2

    .line 383
    .local v2, "children":[Lorg/apache/commons/io/monitor/FileEntry;
    move-object v1, v2

    .local v1, "arr$":[Lorg/apache/commons/io/monitor/FileEntry;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v0, v1, v3

    .line 384
    .local v0, "aChildren":Lorg/apache/commons/io/monitor/FileEntry;
    invoke-direct {p0, v0}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->doCreate(Lorg/apache/commons/io/monitor/FileEntry;)V

    .line 383
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 386
    .end local v0    # "aChildren":Lorg/apache/commons/io/monitor/FileEntry;
    :cond_2
    return-void
.end method

.method private doDelete(Lorg/apache/commons/io/monitor/FileEntry;)V
    .locals 3
    .param p1, "entry"    # Lorg/apache/commons/io/monitor/FileEntry;

    .prologue
    .line 412
    iget-object v2, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/io/monitor/FileAlterationListener;

    .line 413
    .local v1, "listener":Lorg/apache/commons/io/monitor/FileAlterationListener;
    invoke-virtual {p1}, Lorg/apache/commons/io/monitor/FileEntry;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 414
    invoke-virtual {p1}, Lorg/apache/commons/io/monitor/FileEntry;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/io/monitor/FileAlterationListener;->onDirectoryDelete(Ljava/io/File;)V

    goto :goto_0

    .line 416
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/io/monitor/FileEntry;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/io/monitor/FileAlterationListener;->onFileDelete(Ljava/io/File;)V

    goto :goto_0

    .line 419
    .end local v1    # "listener":Lorg/apache/commons/io/monitor/FileAlterationListener;
    :cond_1
    return-void
.end method

.method private doMatch(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/File;)V
    .locals 3
    .param p1, "entry"    # Lorg/apache/commons/io/monitor/FileEntry;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 395
    invoke-virtual {p1, p2}, Lorg/apache/commons/io/monitor/FileEntry;->refresh(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 396
    iget-object v2, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/io/monitor/FileAlterationListener;

    .line 397
    .local v1, "listener":Lorg/apache/commons/io/monitor/FileAlterationListener;
    invoke-virtual {p1}, Lorg/apache/commons/io/monitor/FileEntry;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 398
    invoke-interface {v1, p2}, Lorg/apache/commons/io/monitor/FileAlterationListener;->onDirectoryChange(Ljava/io/File;)V

    goto :goto_0

    .line 400
    :cond_0
    invoke-interface {v1, p2}, Lorg/apache/commons/io/monitor/FileAlterationListener;->onFileChange(Ljava/io/File;)V

    goto :goto_0

    .line 404
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lorg/apache/commons/io/monitor/FileAlterationListener;
    :cond_1
    return-void
.end method

.method private listFiles(Ljava/io/File;)[Ljava/io/File;
    .locals 3
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 429
    const/4 v0, 0x0

    .line 430
    .local v0, "children":[Ljava/io/File;
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 431
    iget-object v1, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->fileFilter:Ljava/io/FileFilter;

    if-nez v1, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 433
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 434
    sget-object v0, Lorg/apache/commons/io/FileUtils;->EMPTY_FILE_ARRAY:[Ljava/io/File;

    .line 436
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->comparator:Ljava/util/Comparator;

    if-eqz v1, :cond_2

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 437
    iget-object v1, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->comparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 439
    :cond_2
    return-object v0

    .line 431
    :cond_3
    iget-object v1, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->fileFilter:Ljava/io/FileFilter;

    invoke-virtual {p1, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lorg/apache/commons/io/monitor/FileAlterationListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/apache/commons/io/monitor/FileAlterationListener;

    .prologue
    .line 242
    if-eqz p1, :cond_0

    .line 243
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    :cond_0
    return-void
.end method

.method public checkAndNotify()V
    .locals 6

    .prologue
    .line 297
    iget-object v3, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/io/monitor/FileAlterationListener;

    .line 298
    .local v1, "listener":Lorg/apache/commons/io/monitor/FileAlterationListener;
    invoke-interface {v1, p0}, Lorg/apache/commons/io/monitor/FileAlterationListener;->onStart(Lorg/apache/commons/io/monitor/FileAlterationObserver;)V

    goto :goto_0

    .line 302
    .end local v1    # "listener":Lorg/apache/commons/io/monitor/FileAlterationListener;
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->rootEntry:Lorg/apache/commons/io/monitor/FileEntry;

    invoke-virtual {v3}, Lorg/apache/commons/io/monitor/FileEntry;->getFile()Ljava/io/File;

    move-result-object v2

    .line 303
    .local v2, "rootFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 304
    iget-object v3, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->rootEntry:Lorg/apache/commons/io/monitor/FileEntry;

    iget-object v4, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->rootEntry:Lorg/apache/commons/io/monitor/FileEntry;

    invoke-virtual {v4}, Lorg/apache/commons/io/monitor/FileEntry;->getChildren()[Lorg/apache/commons/io/monitor/FileEntry;

    move-result-object v4

    invoke-direct {p0, v2}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->listFiles(Ljava/io/File;)[Ljava/io/File;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->checkAndNotify(Lorg/apache/commons/io/monitor/FileEntry;[Lorg/apache/commons/io/monitor/FileEntry;[Ljava/io/File;)V

    .line 312
    :cond_1
    :goto_1
    iget-object v3, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/io/monitor/FileAlterationListener;

    .line 313
    .restart local v1    # "listener":Lorg/apache/commons/io/monitor/FileAlterationListener;
    invoke-interface {v1, p0}, Lorg/apache/commons/io/monitor/FileAlterationListener;->onStop(Lorg/apache/commons/io/monitor/FileAlterationObserver;)V

    goto :goto_2

    .line 305
    .end local v1    # "listener":Lorg/apache/commons/io/monitor/FileAlterationListener;
    :cond_2
    iget-object v3, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->rootEntry:Lorg/apache/commons/io/monitor/FileEntry;

    invoke-virtual {v3}, Lorg/apache/commons/io/monitor/FileEntry;->isExists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 306
    iget-object v3, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->rootEntry:Lorg/apache/commons/io/monitor/FileEntry;

    iget-object v4, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->rootEntry:Lorg/apache/commons/io/monitor/FileEntry;

    invoke-virtual {v4}, Lorg/apache/commons/io/monitor/FileEntry;->getChildren()[Lorg/apache/commons/io/monitor/FileEntry;

    move-result-object v4

    sget-object v5, Lorg/apache/commons/io/FileUtils;->EMPTY_FILE_ARRAY:[Ljava/io/File;

    invoke-direct {p0, v3, v4, v5}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->checkAndNotify(Lorg/apache/commons/io/monitor/FileEntry;[Lorg/apache/commons/io/monitor/FileEntry;[Ljava/io/File;)V

    goto :goto_1

    .line 315
    :cond_3
    return-void
.end method

.method public destroy()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 289
    return-void
.end method

.method public getDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->rootEntry:Lorg/apache/commons/io/monitor/FileEntry;

    invoke-virtual {v0}, Lorg/apache/commons/io/monitor/FileEntry;->getFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getFileFilter()Ljava/io/FileFilter;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->fileFilter:Ljava/io/FileFilter;

    return-object v0
.end method

.method public getListeners()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/commons/io/monitor/FileAlterationListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 265
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->listeners:Ljava/util/List;

    return-object v0
.end method

.method public initialize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 274
    iget-object v3, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->rootEntry:Lorg/apache/commons/io/monitor/FileEntry;

    iget-object v4, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->rootEntry:Lorg/apache/commons/io/monitor/FileEntry;

    invoke-virtual {v4}, Lorg/apache/commons/io/monitor/FileEntry;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/commons/io/monitor/FileEntry;->refresh(Ljava/io/File;)Z

    .line 275
    iget-object v3, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->rootEntry:Lorg/apache/commons/io/monitor/FileEntry;

    invoke-virtual {v3}, Lorg/apache/commons/io/monitor/FileEntry;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->listFiles(Ljava/io/File;)[Ljava/io/File;

    move-result-object v1

    .line 276
    .local v1, "files":[Ljava/io/File;
    array-length v3, v1

    if-lez v3, :cond_0

    array-length v3, v1

    new-array v0, v3, [Lorg/apache/commons/io/monitor/FileEntry;

    .line 277
    .local v0, "children":[Lorg/apache/commons/io/monitor/FileEntry;
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 278
    iget-object v3, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->rootEntry:Lorg/apache/commons/io/monitor/FileEntry;

    aget-object v4, v1, v2

    invoke-direct {p0, v3, v4}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->createFileEntry(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/File;)Lorg/apache/commons/io/monitor/FileEntry;

    move-result-object v3

    aput-object v3, v0, v2

    .line 277
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 276
    .end local v0    # "children":[Lorg/apache/commons/io/monitor/FileEntry;
    .end local v2    # "i":I
    :cond_0
    sget-object v0, Lorg/apache/commons/io/monitor/FileEntry;->EMPTY_ENTRIES:[Lorg/apache/commons/io/monitor/FileEntry;

    goto :goto_0

    .line 280
    .restart local v0    # "children":[Lorg/apache/commons/io/monitor/FileEntry;
    .restart local v2    # "i":I
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->rootEntry:Lorg/apache/commons/io/monitor/FileEntry;

    invoke-virtual {v3, v0}, Lorg/apache/commons/io/monitor/FileEntry;->setChildren([Lorg/apache/commons/io/monitor/FileEntry;)V

    .line 281
    return-void
.end method

.method public removeListener(Lorg/apache/commons/io/monitor/FileAlterationListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/apache/commons/io/monitor/FileAlterationListener;

    .prologue
    .line 253
    if-eqz p1, :cond_1

    .line 254
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 450
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    const-string v1, "[file=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    invoke-virtual {p0}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->getDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 454
    iget-object v1, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->fileFilter:Ljava/io/FileFilter;

    if-eqz v1, :cond_0

    .line 455
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    iget-object v1, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->fileFilter:Ljava/io/FileFilter;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    :cond_0
    const-string v1, ", listeners="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    iget-object v1, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 460
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
