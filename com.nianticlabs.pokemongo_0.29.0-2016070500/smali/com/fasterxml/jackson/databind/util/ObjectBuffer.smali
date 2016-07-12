.class public final Lcom/fasterxml/jackson/databind/util/ObjectBuffer;
.super Ljava/lang/Object;
.source "ObjectBuffer.java"


# static fields
.field private static final MAX_CHUNK:I = 0x40000

.field private static final SMALL_CHUNK:I = 0x4000


# instance fields
.field private _freeBuffer:[Ljava/lang/Object;

.field private _head:Lcom/fasterxml/jackson/databind/util/LinkedNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/util/LinkedNode",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private _size:I

.field private _tail:Lcom/fasterxml/jackson/databind/util/LinkedNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/util/LinkedNode",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final _copyTo(Ljava/lang/Object;I[Ljava/lang/Object;I)V
    .locals 7
    .param p1, "resultArray"    # Ljava/lang/Object;
    .param p2, "totalSize"    # I
    .param p3, "lastChunk"    # [Ljava/lang/Object;
    .param p4, "lastChunkEntries"    # I

    .prologue
    const/4 v4, 0x0

    .line 195
    const/4 v3, 0x0

    .line 197
    .local v3, "ptr":I
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_head:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    .local v2, "n":Lcom/fasterxml/jackson/databind/util/LinkedNode;, "Lcom/fasterxml/jackson/databind/util/LinkedNode<[Ljava/lang/Object;>;"
    :goto_0
    if-eqz v2, :cond_0

    .line 198
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/util/LinkedNode;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 199
    .local v0, "curr":[Ljava/lang/Object;
    array-length v1, v0

    .line 200
    .local v1, "len":I
    invoke-static {v0, v4, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    add-int/2addr v3, v1

    .line 197
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/util/LinkedNode;->next()Lcom/fasterxml/jackson/databind/util/LinkedNode;

    move-result-object v2

    goto :goto_0

    .line 203
    .end local v0    # "curr":[Ljava/lang/Object;
    .end local v1    # "len":I
    :cond_0
    invoke-static {p3, v4, p1, v3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    add-int/2addr v3, p4

    .line 207
    if-eq v3, p2, :cond_1

    .line 208
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Should have gotten "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " entries, got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 210
    :cond_1
    return-void
.end method

.method protected _reset()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_tail:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_tail:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/LinkedNode;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_freeBuffer:[Ljava/lang/Object;

    .line 188
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_tail:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_head:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    .line 189
    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_size:I

    .line 190
    return-void
.end method

.method public appendCompletedChunk([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .param p1, "fullChunk"    # [Ljava/lang/Object;

    .prologue
    .line 91
    new-instance v1, Lcom/fasterxml/jackson/databind/util/LinkedNode;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/fasterxml/jackson/databind/util/LinkedNode;-><init>(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/util/LinkedNode;)V

    .line 92
    .local v1, "next":Lcom/fasterxml/jackson/databind/util/LinkedNode;, "Lcom/fasterxml/jackson/databind/util/LinkedNode<[Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_head:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    if-nez v2, :cond_1

    .line 93
    iput-object v1, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_tail:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_head:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    .line 98
    :goto_0
    array-length v0, p1

    .line 99
    .local v0, "len":I
    iget v2, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_size:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_size:I

    .line 101
    const/16 v2, 0x4000

    if-ge v0, v2, :cond_2

    .line 102
    add-int/2addr v0, v0

    .line 106
    :cond_0
    :goto_1
    new-array v2, v0, [Ljava/lang/Object;

    return-object v2

    .line 95
    .end local v0    # "len":I
    :cond_1
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_tail:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/databind/util/LinkedNode;->linkNext(Lcom/fasterxml/jackson/databind/util/LinkedNode;)V

    .line 96
    iput-object v1, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_tail:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    goto :goto_0

    .line 103
    .restart local v0    # "len":I
    :cond_2
    const/high16 v2, 0x40000

    if-ge v0, v2, :cond_0

    .line 104
    shr-int/lit8 v2, v0, 0x2

    add-int/2addr v0, v2

    goto :goto_1
.end method

.method public bufferedSize()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_size:I

    return v0
.end method

.method public completeAndClearBuffer([Ljava/lang/Object;ILjava/util/List;)V
    .locals 5
    .param p1, "lastChunk"    # [Ljava/lang/Object;
    .param p2, "lastChunkEntries"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p3, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_head:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    .local v3, "n":Lcom/fasterxml/jackson/databind/util/LinkedNode;, "Lcom/fasterxml/jackson/databind/util/LinkedNode<[Ljava/lang/Object;>;"
    :goto_0
    if-eqz v3, :cond_1

    .line 148
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/util/LinkedNode;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 149
    .local v0, "curr":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0

    .local v2, "len":I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 150
    aget-object v4, v0, v1

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 147
    :cond_0
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/util/LinkedNode;->next()Lcom/fasterxml/jackson/databind/util/LinkedNode;

    move-result-object v3

    goto :goto_0

    .line 154
    .end local v0    # "curr":[Ljava/lang/Object;
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, p2, :cond_2

    .line 155
    aget-object v4, p1, v1

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 157
    :cond_2
    return-void
.end method

.method public completeAndClearBuffer([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 3
    .param p1, "lastChunk"    # [Ljava/lang/Object;
    .param p2, "lastChunkEntries"    # I

    .prologue
    .line 121
    iget v2, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_size:I

    add-int v1, p2, v2

    .line 122
    .local v1, "totalSize":I
    new-array v0, v1, [Ljava/lang/Object;

    .line 123
    .local v0, "result":[Ljava/lang/Object;
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_copyTo(Ljava/lang/Object;I[Ljava/lang/Object;I)V

    .line 124
    return-object v0
.end method

.method public completeAndClearBuffer([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;
    .locals 3
    .param p1, "lastChunk"    # [Ljava/lang/Object;
    .param p2, "lastChunkEntries"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 137
    .local p3, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget v2, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_size:I

    add-int v1, p2, v2

    .line 139
    .local v1, "totalSize":I
    invoke-static {p3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    .line 140
    .local v0, "result":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_copyTo(Ljava/lang/Object;I[Ljava/lang/Object;I)V

    .line 141
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_reset()V

    .line 142
    return-object v0
.end method

.method public initialCapacity()I
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_freeBuffer:[Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_freeBuffer:[Ljava/lang/Object;

    array-length v0, v0

    goto :goto_0
.end method

.method public resetAndStart()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_reset()V

    .line 69
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_freeBuffer:[Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 70
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    .line 72
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_freeBuffer:[Ljava/lang/Object;

    goto :goto_0
.end method
