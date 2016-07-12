.class public final Lcom/fasterxml/jackson/core/io/MergedStream;
.super Ljava/io/InputStream;
.source "MergedStream.java"


# instance fields
.field private _b:[B

.field private final _ctxt:Lcom/fasterxml/jackson/core/io/IOContext;

.field private final _end:I

.field private final _in:Ljava/io/InputStream;

.field private _ptr:I


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/io/IOContext;Ljava/io/InputStream;[BII)V
    .locals 0
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/core/io/IOContext;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "buf"    # [B
    .param p4, "start"    # I
    .param p5, "end"    # I

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_ctxt:Lcom/fasterxml/jackson/core/io/IOContext;

    .line 27
    iput-object p2, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_in:Ljava/io/InputStream;

    .line 28
    iput-object p3, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_b:[B

    .line 29
    iput p4, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_ptr:I

    .line 30
    iput p5, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_end:I

    .line 31
    return-void
.end method

.method private _free()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_b:[B

    .line 114
    .local v0, "buf":[B
    if-eqz v0, :cond_0

    .line 115
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_b:[B

    .line 116
    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_ctxt:Lcom/fasterxml/jackson/core/io/IOContext;

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_ctxt:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseReadIOBuffer([B)V

    .line 120
    :cond_0
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_b:[B

    if-eqz v0, :cond_0

    .line 36
    iget v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_end:I

    iget v1, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_ptr:I

    sub-int/2addr v0, v1

    .line 38
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/MergedStream;->_free()V

    .line 43
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 44
    return-void
.end method

.method public mark(I)V
    .locals 1
    .param p1, "readlimit"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_b:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 48
    :cond_0
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_b:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_b:[B

    if-eqz v1, :cond_1

    .line 57
    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_b:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_ptr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_ptr:I

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 58
    .local v0, "c":I
    iget v1, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_ptr:I

    iget v2, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_end:I

    if-lt v1, v2, :cond_0

    .line 59
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/MergedStream;->_free()V

    .line 63
    .end local v0    # "c":I
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/fasterxml/jackson/core/io/MergedStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_b:[B

    if-eqz v1, :cond_2

    .line 73
    iget v1, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_end:I

    iget v2, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_ptr:I

    sub-int v0, v1, v2

    .line 74
    .local v0, "avail":I
    if-le p3, v0, :cond_0

    .line 75
    move p3, v0

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_b:[B

    iget v2, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_ptr:I

    invoke-static {v1, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    iget v1, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_ptr:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_ptr:I

    .line 79
    iget v1, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_ptr:I

    iget v2, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_end:I

    if-lt v1, v2, :cond_1

    .line 80
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/MergedStream;->_free()V

    :cond_1
    move v1, p3

    .line 84
    .end local v0    # "avail":I
    :goto_0
    return v1

    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    goto :goto_0
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_b:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 90
    :cond_0
    return-void
.end method

.method public skip(J)J
    .locals 7
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    const-wide/16 v2, 0x0

    .line 96
    .local v2, "count":J
    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_b:[B

    if-eqz v1, :cond_1

    .line 97
    iget v1, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_end:I

    iget v4, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_ptr:I

    sub-int v0, v1, v4

    .line 99
    .local v0, "amount":I
    int-to-long v4, v0

    cmp-long v1, v4, p1

    if-lez v1, :cond_0

    .line 100
    iget v1, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_ptr:I

    long-to-int v4, p1

    add-int/2addr v1, v4

    iput v1, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_ptr:I

    move-wide v4, p1

    .line 109
    .end local v0    # "amount":I
    :goto_0
    return-wide v4

    .line 103
    .restart local v0    # "amount":I
    :cond_0
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/MergedStream;->_free()V

    .line 104
    int-to-long v4, v0

    add-long/2addr v2, v4

    .line 105
    int-to-long v4, v0

    sub-long/2addr p1, v4

    .line 108
    .end local v0    # "amount":I
    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v1, p1, v4

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    :cond_2
    move-wide v4, v2

    .line 109
    goto :goto_0
.end method
