.class public final Lrx/internal/util/unsafe/SpmcArrayQueue;
.super Lrx/internal/util/unsafe/SpmcArrayQueueL3Pad;
.source "SpmcArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/unsafe/SpmcArrayQueueL3Pad",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .prologue
    .line 128
    .local p0, "this":Lrx/internal/util/unsafe/SpmcArrayQueue;, "Lrx/internal/util/unsafe/SpmcArrayQueue<TE;>;"
    invoke-direct {p0, p1}, Lrx/internal/util/unsafe/SpmcArrayQueueL3Pad;-><init>(I)V

    .line 129
    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 4

    .prologue
    .line 227
    .local p0, "this":Lrx/internal/util/unsafe/SpmcArrayQueue;, "Lrx/internal/util/unsafe/SpmcArrayQueue<TE;>;"
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lvProducerIndex()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "this":Lrx/internal/util/unsafe/SpmcArrayQueue;, "Lrx/internal/util/unsafe/SpmcArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    .line 134
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v10, "Null is not a valid element"

    invoke-direct {v5, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 136
    :cond_0
    iget-object v4, p0, Lrx/internal/util/unsafe/SpmcArrayQueue;->buffer:[Ljava/lang/Object;

    .line 137
    .local v4, "lb":[Ljava/lang/Object;, "[TE;"
    iget-wide v2, p0, Lrx/internal/util/unsafe/SpmcArrayQueue;->mask:J

    .line 138
    .local v2, "lMask":J
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lvProducerIndex()J

    move-result-wide v0

    .line 139
    .local v0, "currProducerIndex":J
    invoke-virtual {p0, v0, v1}, Lrx/internal/util/unsafe/SpmcArrayQueue;->calcElementOffset(J)J

    move-result-wide v6

    .line 140
    .local v6, "offset":J
    invoke-virtual {p0, v4, v6, v7}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 141
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lvConsumerIndex()J

    move-result-wide v10

    sub-long v8, v0, v10

    .line 143
    .local v8, "size":J
    cmp-long v5, v8, v2

    if-lez v5, :cond_1

    .line 144
    const/4 v5, 0x0

    .line 155
    .end local v8    # "size":J
    :goto_0
    return v5

    .line 148
    .restart local v8    # "size":J
    :cond_1
    invoke-virtual {p0, v4, v6, v7}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    .line 151
    .end local v8    # "size":J
    :cond_2
    invoke-virtual {p0, v4, v6, v7, p1}, Lrx/internal/util/unsafe/SpmcArrayQueue;->spElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 154
    const-wide/16 v10, 0x1

    add-long/2addr v10, v0

    invoke-virtual {p0, v10, v11}, Lrx/internal/util/unsafe/SpmcArrayQueue;->soTail(J)V

    .line 155
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public peek()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 187
    .local p0, "this":Lrx/internal/util/unsafe/SpmcArrayQueue;, "Lrx/internal/util/unsafe/SpmcArrayQueue<TE;>;"
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lvProducerIndexCache()J

    move-result-wide v2

    .line 190
    .local v2, "currProducerIndexCache":J
    :cond_0
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lvConsumerIndex()J

    move-result-wide v4

    .line 191
    .local v4, "currentConsumerIndex":J
    cmp-long v7, v4, v2

    if-ltz v7, :cond_2

    .line 192
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lvProducerIndex()J

    move-result-wide v0

    .line 193
    .local v0, "currProducerIndex":J
    cmp-long v7, v4, v0

    if-ltz v7, :cond_1

    .line 194
    const/4 v6, 0x0

    .line 200
    .end local v0    # "currProducerIndex":J
    :goto_0
    return-object v6

    .line 196
    .restart local v0    # "currProducerIndex":J
    :cond_1
    invoke-virtual {p0, v0, v1}, Lrx/internal/util/unsafe/SpmcArrayQueue;->svProducerIndexCache(J)V

    .line 199
    .end local v0    # "currProducerIndex":J
    :cond_2
    invoke-virtual {p0, v4, v5}, Lrx/internal/util/unsafe/SpmcArrayQueue;->calcElementOffset(J)J

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lvElement(J)Ljava/lang/Object;

    move-result-object v6

    .local v6, "e":Ljava/lang/Object;, "TE;"
    if-eqz v6, :cond_0

    goto :goto_0
.end method

.method public poll()Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/util/unsafe/SpmcArrayQueue;, "Lrx/internal/util/unsafe/SpmcArrayQueue<TE;>;"
    const/4 v10, 0x0

    .line 161
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lvProducerIndexCache()J

    move-result-wide v2

    .line 163
    .local v2, "currProducerIndexCache":J
    :cond_0
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lvConsumerIndex()J

    move-result-wide v4

    .line 164
    .local v4, "currentConsumerIndex":J
    cmp-long v11, v4, v2

    if-ltz v11, :cond_2

    .line 165
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lvProducerIndex()J

    move-result-wide v0

    .line 166
    .local v0, "currProducerIndex":J
    cmp-long v11, v4, v0

    if-ltz v11, :cond_1

    move-object v6, v10

    .line 181
    .end local v0    # "currProducerIndex":J
    :goto_0
    return-object v6

    .line 169
    .restart local v0    # "currProducerIndex":J
    :cond_1
    invoke-virtual {p0, v0, v1}, Lrx/internal/util/unsafe/SpmcArrayQueue;->svProducerIndexCache(J)V

    .line 172
    .end local v0    # "currProducerIndex":J
    :cond_2
    const-wide/16 v12, 0x1

    add-long/2addr v12, v4

    invoke-virtual {p0, v4, v5, v12, v13}, Lrx/internal/util/unsafe/SpmcArrayQueue;->casHead(JJ)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 175
    invoke-virtual {p0, v4, v5}, Lrx/internal/util/unsafe/SpmcArrayQueue;->calcElementOffset(J)J

    move-result-wide v8

    .line 176
    .local v8, "offset":J
    iget-object v7, p0, Lrx/internal/util/unsafe/SpmcArrayQueue;->buffer:[Ljava/lang/Object;

    .line 178
    .local v7, "lb":[Ljava/lang/Object;, "[TE;"
    invoke-virtual {p0, v7, v8, v9}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lpElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 180
    .local v6, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v7, v8, v9, v10}, Lrx/internal/util/unsafe/SpmcArrayQueue;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0
.end method

.method public size()I
    .locals 8

    .prologue
    .line 210
    .local p0, "this":Lrx/internal/util/unsafe/SpmcArrayQueue;, "Lrx/internal/util/unsafe/SpmcArrayQueue<TE;>;"
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    .line 212
    .local v0, "after":J
    :cond_0
    move-wide v2, v0

    .line 213
    .local v2, "before":J
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lvProducerIndex()J

    move-result-wide v4

    .line 214
    .local v4, "currentProducerIndex":J
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    .line 215
    cmp-long v6, v2, v0

    if-nez v6, :cond_0

    .line 216
    sub-long v6, v4, v0

    long-to-int v6, v6

    return v6
.end method
