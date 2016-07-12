.class public Lorg/apache/commons/io/filefilter/EmptyFileFilter;
.super Lorg/apache/commons/io/filefilter/AbstractFileFilter;
.source "EmptyFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final EMPTY:Lorg/apache/commons/io/filefilter/IOFileFilter;

.field public static final NOT_EMPTY:Lorg/apache/commons/io/filefilter/IOFileFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lorg/apache/commons/io/filefilter/EmptyFileFilter;

    invoke-direct {v0}, Lorg/apache/commons/io/filefilter/EmptyFileFilter;-><init>()V

    sput-object v0, Lorg/apache/commons/io/filefilter/EmptyFileFilter;->EMPTY:Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 60
    new-instance v0, Lorg/apache/commons/io/filefilter/NotFileFilter;

    sget-object v1, Lorg/apache/commons/io/filefilter/EmptyFileFilter;->EMPTY:Lorg/apache/commons/io/filefilter/IOFileFilter;

    invoke-direct {v0, v1}, Lorg/apache/commons/io/filefilter/NotFileFilter;-><init>(Lorg/apache/commons/io/filefilter/IOFileFilter;)V

    sput-object v0, Lorg/apache/commons/io/filefilter/EmptyFileFilter;->NOT_EMPTY:Lorg/apache/commons/io/filefilter/IOFileFilter;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    .line 66
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 8
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 77
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 78
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 79
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_0

    array-length v3, v0

    if-nez v3, :cond_1

    :cond_0
    move v1, v2

    .line 81
    .end local v0    # "files":[Ljava/io/File;
    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1
.end method
