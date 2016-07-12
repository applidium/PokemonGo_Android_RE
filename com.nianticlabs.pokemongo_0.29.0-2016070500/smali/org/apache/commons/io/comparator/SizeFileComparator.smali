.class public Lorg/apache/commons/io/comparator/SizeFileComparator;
.super Lorg/apache/commons/io/comparator/AbstractFileComparator;
.source "SizeFileComparator.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final SIZE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public static final SIZE_REVERSE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public static final SIZE_SUMDIR_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public static final SIZE_SUMDIR_REVERSE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final sumDirectoryContents:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lorg/apache/commons/io/comparator/SizeFileComparator;

    invoke-direct {v0}, Lorg/apache/commons/io/comparator/SizeFileComparator;-><init>()V

    sput-object v0, Lorg/apache/commons/io/comparator/SizeFileComparator;->SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 58
    new-instance v0, Lorg/apache/commons/io/comparator/ReverseComparator;

    sget-object v1, Lorg/apache/commons/io/comparator/SizeFileComparator;->SIZE_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lorg/apache/commons/io/comparator/ReverseComparator;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lorg/apache/commons/io/comparator/SizeFileComparator;->SIZE_REVERSE:Ljava/util/Comparator;

    .line 64
    new-instance v0, Lorg/apache/commons/io/comparator/SizeFileComparator;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/commons/io/comparator/SizeFileComparator;-><init>(Z)V

    sput-object v0, Lorg/apache/commons/io/comparator/SizeFileComparator;->SIZE_SUMDIR_COMPARATOR:Ljava/util/Comparator;

    .line 70
    new-instance v0, Lorg/apache/commons/io/comparator/ReverseComparator;

    sget-object v1, Lorg/apache/commons/io/comparator/SizeFileComparator;->SIZE_SUMDIR_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lorg/apache/commons/io/comparator/ReverseComparator;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lorg/apache/commons/io/comparator/SizeFileComparator;->SIZE_SUMDIR_REVERSE:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lorg/apache/commons/io/comparator/AbstractFileComparator;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/io/comparator/SizeFileComparator;->sumDirectoryContents:Z

    .line 80
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "sumDirectoryContents"    # Z

    .prologue
    .line 93
    invoke-direct {p0}, Lorg/apache/commons/io/comparator/AbstractFileComparator;-><init>()V

    .line 94
    iput-boolean p1, p0, Lorg/apache/commons/io/comparator/SizeFileComparator;->sumDirectoryContents:Z

    .line 95
    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 9
    .param p1, "file1"    # Ljava/io/File;
    .param p2, "file2"    # Ljava/io/File;

    .prologue
    const-wide/16 v6, 0x0

    .line 109
    const-wide/16 v2, 0x0

    .line 110
    .local v2, "size1":J
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 111
    iget-boolean v8, p0, Lorg/apache/commons/io/comparator/SizeFileComparator;->sumDirectoryContents:Z

    if-eqz v8, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {p1}, Lorg/apache/commons/io/FileUtils;->sizeOfDirectory(Ljava/io/File;)J

    move-result-wide v2

    .line 115
    :goto_0
    const-wide/16 v4, 0x0

    .line 116
    .local v4, "size2":J
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 117
    iget-boolean v8, p0, Lorg/apache/commons/io/comparator/SizeFileComparator;->sumDirectoryContents:Z

    if-eqz v8, :cond_2

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {p2}, Lorg/apache/commons/io/FileUtils;->sizeOfDirectory(Ljava/io/File;)J

    move-result-wide v4

    .line 121
    :goto_1
    sub-long v0, v2, v4

    .line 122
    .local v0, "result":J
    cmp-long v8, v0, v6

    if-gez v8, :cond_4

    .line 123
    const/4 v6, -0x1

    .line 127
    :goto_2
    return v6

    .end local v0    # "result":J
    .end local v4    # "size2":J
    :cond_0
    move-wide v2, v6

    .line 111
    goto :goto_0

    .line 113
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    goto :goto_0

    .restart local v4    # "size2":J
    :cond_2
    move-wide v4, v6

    .line 117
    goto :goto_1

    .line 119
    :cond_3
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v4

    goto :goto_1

    .line 124
    .restart local v0    # "result":J
    :cond_4
    cmp-long v6, v0, v6

    if-lez v6, :cond_5

    .line 125
    const/4 v6, 0x1

    goto :goto_2

    .line 127
    :cond_5
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 52
    check-cast p1, Ljava/io/File;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/io/File;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/io/comparator/SizeFileComparator;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic sort(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p1, "x0"    # Ljava/util/List;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lorg/apache/commons/io/comparator/AbstractFileComparator;->sort(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic sort([Ljava/io/File;)[Ljava/io/File;
    .locals 1
    .param p1, "x0"    # [Ljava/io/File;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lorg/apache/commons/io/comparator/AbstractFileComparator;->sort([Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/apache/commons/io/comparator/AbstractFileComparator;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[sumDirectoryContents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/commons/io/comparator/SizeFileComparator;->sumDirectoryContents:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
