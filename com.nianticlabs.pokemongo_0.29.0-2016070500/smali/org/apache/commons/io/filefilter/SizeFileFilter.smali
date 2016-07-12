.class public Lorg/apache/commons/io/filefilter/SizeFileFilter;
.super Lorg/apache/commons/io/filefilter/AbstractFileFilter;
.source "SizeFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final acceptLarger:Z

.field private final size:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 58
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/io/filefilter/SizeFileFilter;-><init>(JZ)V

    .line 59
    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 3
    .param p1, "size"    # J
    .param p3, "acceptLarger"    # Z

    .prologue
    .line 70
    invoke-direct {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    .line 71
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    iput-wide p1, p0, Lorg/apache/commons/io/filefilter/SizeFileFilter;->size:J

    .line 75
    iput-boolean p3, p0, Lorg/apache/commons/io/filefilter/SizeFileFilter;->acceptLarger:Z

    .line 76
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 8
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 92
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    iget-wide v6, p0, Lorg/apache/commons/io/filefilter/SizeFileFilter;->size:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    move v0, v1

    .line 93
    .local v0, "smaller":Z
    :goto_0
    iget-boolean v3, p0, Lorg/apache/commons/io/filefilter/SizeFileFilter;->acceptLarger:Z

    if-eqz v3, :cond_2

    if-nez v0, :cond_1

    :goto_1
    return v1

    .end local v0    # "smaller":Z
    :cond_0
    move v0, v2

    .line 92
    goto :goto_0

    .restart local v0    # "smaller":Z
    :cond_1
    move v1, v2

    .line 93
    goto :goto_1

    :cond_2
    move v1, v0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 103
    iget-boolean v1, p0, Lorg/apache/commons/io/filefilter/SizeFileFilter;->acceptLarger:Z

    if-eqz v1, :cond_0

    const-string v0, ">="

    .line 104
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

    iget-wide v2, p0, Lorg/apache/commons/io/filefilter/SizeFileFilter;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 103
    .end local v0    # "condition":Ljava/lang/String;
    :cond_0
    const-string v0, "<"

    goto :goto_0
.end method
