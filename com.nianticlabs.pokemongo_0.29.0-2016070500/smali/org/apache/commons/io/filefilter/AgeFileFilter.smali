.class public Lorg/apache/commons/io/filefilter/AgeFileFilter;
.super Lorg/apache/commons/io/filefilter/AbstractFileFilter;
.source "AgeFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final acceptOlder:Z

.field private final cutoff:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "cutoff"    # J

    .prologue
    .line 65
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/io/filefilter/AgeFileFilter;-><init>(JZ)V

    .line 66
    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 1
    .param p1, "cutoff"    # J
    .param p3, "acceptOlder"    # Z

    .prologue
    .line 76
    invoke-direct {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    .line 77
    iput-boolean p3, p0, Lorg/apache/commons/io/filefilter/AgeFileFilter;->acceptOlder:Z

    .line 78
    iput-wide p1, p0, Lorg/apache/commons/io/filefilter/AgeFileFilter;->cutoff:J

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "cutoffReference"    # Ljava/io/File;

    .prologue
    .line 111
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/filefilter/AgeFileFilter;-><init>(Ljava/io/File;Z)V

    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 2
    .param p1, "cutoffReference"    # Ljava/io/File;
    .param p2, "acceptOlder"    # Z

    .prologue
    .line 125
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Lorg/apache/commons/io/filefilter/AgeFileFilter;-><init>(JZ)V

    .line 126
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 1
    .param p1, "cutoffDate"    # Ljava/util/Date;

    .prologue
    .line 88
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/filefilter/AgeFileFilter;-><init>(Ljava/util/Date;Z)V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Z)V
    .locals 2
    .param p1, "cutoffDate"    # Ljava/util/Date;
    .param p2, "acceptOlder"    # Z

    .prologue
    .line 100
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Lorg/apache/commons/io/filefilter/AgeFileFilter;-><init>(JZ)V

    .line 101
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 4
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 143
    iget-wide v2, p0, Lorg/apache/commons/io/filefilter/AgeFileFilter;->cutoff:J

    invoke-static {p1, v2, v3}, Lorg/apache/commons/io/FileUtils;->isFileNewer(Ljava/io/File;J)Z

    move-result v0

    .line 144
    .local v0, "newer":Z
    iget-boolean v1, p0, Lorg/apache/commons/io/filefilter/AgeFileFilter;->acceptOlder:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .end local v0    # "newer":Z
    :cond_0
    :goto_0
    return v0

    .restart local v0    # "newer":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 154
    iget-boolean v1, p0, Lorg/apache/commons/io/filefilter/AgeFileFilter;->acceptOlder:Z

    if-eqz v1, :cond_0

    const-string v0, "<="

    .line 155
    .local v0, "condition":Ljava/lang/String;
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

    iget-wide v2, p0, Lorg/apache/commons/io/filefilter/AgeFileFilter;->cutoff:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 154
    .end local v0    # "condition":Ljava/lang/String;
    :cond_0
    const-string v0, ">"

    goto :goto_0
.end method
