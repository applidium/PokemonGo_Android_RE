.class public Lorg/apache/commons/io/LineIterator;
.super Ljava/lang/Object;
.source "LineIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final bufferedReader:Ljava/io/BufferedReader;

.field private cachedLine:Ljava/lang/String;

.field private finished:Z


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/io/LineIterator;->finished:Z

    .line 68
    if-nez p1, :cond_0

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Reader must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    instance-of v0, p1, Ljava/io/BufferedReader;

    if-eqz v0, :cond_1

    .line 72
    check-cast p1, Ljava/io/BufferedReader;

    .end local p1    # "reader":Ljava/io/Reader;
    iput-object p1, p0, Lorg/apache/commons/io/LineIterator;->bufferedReader:Ljava/io/BufferedReader;

    .line 76
    :goto_0
    return-void

    .line 74
    .restart local p1    # "reader":Ljava/io/Reader;
    :cond_1
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lorg/apache/commons/io/LineIterator;->bufferedReader:Ljava/io/BufferedReader;

    goto :goto_0
.end method

.method public static closeQuietly(Lorg/apache/commons/io/LineIterator;)V
    .locals 0
    .param p0, "iterator"    # Lorg/apache/commons/io/LineIterator;

    .prologue
    .line 175
    if-eqz p0, :cond_0

    .line 176
    invoke-virtual {p0}, Lorg/apache/commons/io/LineIterator;->close()V

    .line 178
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/io/LineIterator;->finished:Z

    .line 155
    iget-object v0, p0, Lorg/apache/commons/io/LineIterator;->bufferedReader:Ljava/io/BufferedReader;

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/io/LineIterator;->cachedLine:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public hasNext()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 88
    iget-object v4, p0, Lorg/apache/commons/io/LineIterator;->cachedLine:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 101
    :goto_0
    return v2

    .line 90
    :cond_0
    iget-boolean v4, p0, Lorg/apache/commons/io/LineIterator;->finished:Z

    if-eqz v4, :cond_1

    move v2, v3

    .line 91
    goto :goto_0

    .line 95
    :cond_1
    :try_start_0
    iget-object v4, p0, Lorg/apache/commons/io/LineIterator;->bufferedReader:Ljava/io/BufferedReader;

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "line":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 97
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/commons/io/LineIterator;->finished:Z

    move v2, v3

    .line 98
    goto :goto_0

    .line 99
    :cond_2
    invoke-virtual {p0, v1}, Lorg/apache/commons/io/LineIterator;->isValidLine(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 100
    iput-object v1, p0, Lorg/apache/commons/io/LineIterator;->cachedLine:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    .end local v1    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 105
    .local v0, "ioe":Ljava/io/IOException;
    invoke-virtual {p0}, Lorg/apache/commons/io/LineIterator;->close()V

    .line 106
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected isValidLine(Ljava/lang/String;)Z
    .locals 1
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    .line 118
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lorg/apache/commons/io/LineIterator;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p0}, Lorg/apache/commons/io/LineIterator;->nextLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextLine()Ljava/lang/String;
    .locals 3

    .prologue
    .line 138
    invoke-virtual {p0}, Lorg/apache/commons/io/LineIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "No more lines"

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 141
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/LineIterator;->cachedLine:Ljava/lang/String;

    .line 142
    .local v0, "currentLine":Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/io/LineIterator;->cachedLine:Ljava/lang/String;

    .line 143
    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 165
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Remove unsupported on LineIterator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
