.class public Lorg/apache/commons/io/filefilter/DelegateFileFilter;
.super Lorg/apache/commons/io/filefilter/AbstractFileFilter;
.source "DelegateFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final fileFilter:Ljava/io/FileFilter;

.field private final filenameFilter:Ljava/io/FilenameFilter;


# direct methods
.method public constructor <init>(Ljava/io/FileFilter;)V
    .locals 2
    .param p1, "filter"    # Ljava/io/FileFilter;

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    .line 59
    if-nez p1, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The FileFilter must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/io/filefilter/DelegateFileFilter;->fileFilter:Ljava/io/FileFilter;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/io/filefilter/DelegateFileFilter;->filenameFilter:Ljava/io/FilenameFilter;

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/io/FilenameFilter;)V
    .locals 2
    .param p1, "filter"    # Ljava/io/FilenameFilter;

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    .line 46
    if-nez p1, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The FilenameFilter must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/io/filefilter/DelegateFileFilter;->filenameFilter:Ljava/io/FilenameFilter;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/io/filefilter/DelegateFileFilter;->fileFilter:Ljava/io/FileFilter;

    .line 51
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/commons/io/filefilter/DelegateFileFilter;->fileFilter:Ljava/io/FileFilter;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lorg/apache/commons/io/filefilter/DelegateFileFilter;->fileFilter:Ljava/io/FileFilter;

    invoke-interface {v0, p1}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v0

    .line 77
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;->accept(Ljava/io/File;)Z

    move-result v0

    goto :goto_0
.end method

.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 90
    iget-object v0, p0, Lorg/apache/commons/io/filefilter/DelegateFileFilter;->filenameFilter:Ljava/io/FilenameFilter;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lorg/apache/commons/io/filefilter/DelegateFileFilter;->filenameFilter:Ljava/io/FilenameFilter;

    invoke-interface {v0, p1, p2}, Ljava/io/FilenameFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    .line 93
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 104
    iget-object v1, p0, Lorg/apache/commons/io/filefilter/DelegateFileFilter;->fileFilter:Ljava/io/FileFilter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/io/filefilter/DelegateFileFilter;->fileFilter:Ljava/io/FileFilter;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "delegate":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 104
    .end local v0    # "delegate":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/io/filefilter/DelegateFileFilter;->filenameFilter:Ljava/io/FilenameFilter;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
