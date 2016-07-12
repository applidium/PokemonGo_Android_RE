.class public Lrx/internal/util/unsafe/MpmcArrayQueue;
.super Lrx/internal/util/unsafe/MpmcArrayQueueConsumerField;
.source "MpmcArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/unsafe/MpmcArrayQueueConsumerField",
        "<TE;>;"
    }
.end annotation


# instance fields
.field p30:J

.field p31:J

.field p32:J

.field p33:J

.field p34:J

.field p35:J

.field p36:J

.field p37:J

.field p40:J

.field p41:J

.field p42:J

.field p43:J

.field p44:J

.field p45:J

.field p46:J


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 118
    .local p0, "this":Lrx/internal/util/unsafe/MpmcArrayQueue;, "Lrx/internal/util/unsafe/MpmcArrayQueue<TE;>;"
    const/4 v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Lrx/internal/util/unsafe/MpmcArrayQueueConsumerField;-><init>(I)V

    .line 119
    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 4

    .prologue
    .line 252
    .local p0, "this":Lrx/internal/util/unsafe/MpmcArrayQueue;, "Lrx/internal/util/unsafe/MpmcArrayQueue<TE;>;"
    invoke-virtual {p0}, Lrx/internal/util/unsafe/MpmcArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    invoke-virtual {p0}, Lrx/internal/util/unsafe/MpmcArrayQueue;->lvProducerIndex()J

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
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "this":Lrx/internal/util/unsafe/MpmcArrayQueue;, "Lrx/internal/util/unsafe/MpmcArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    .line 124
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v8, "Null is not a valid element"

    invoke-direct {v4, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 128
    :cond_0
    move-object/from16 v0, p0

    iget-wide v8, v0, Lrx/internal/util/unsafe/MpmcArrayQueue;->mask:J

    const-wide/16 v22, 0x1

    add-long v12, v8, v22

    .line 129
    .local v12, "capacity":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lrx/internal/util/unsafe/MpmcArrayQueue;->sequenceBuffer:[J

    .line 132
    .local v5, "lSequenceBuffer":[J
    const-wide v10, 0x7fffffffffffffffL

    .line 134
    .local v10, "cIndex":J
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lrx/internal/util/unsafe/MpmcArrayQueue;->lvProducerIndex()J

    move-result-wide v14

    .line 135
    .local v14, "currentProducerIndex":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lrx/internal/util/unsafe/MpmcArrayQueue;->calcSequenceOffset(J)J

    move-result-wide v6

    .line 136
    .local v6, "seqOffset":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lrx/internal/util/unsafe/MpmcArrayQueue;->lvSequence([JJ)J

    move-result-wide v20

    .line 137
    .local v20, "seq":J
    sub-long v16, v20, v14

    .line 139
    .local v16, "delta":J
    const-wide/16 v8, 0x0

    cmp-long v4, v16, v8

    if-nez v4, :cond_2

    .line 141
    const-wide/16 v8, 0x1

    add-long/2addr v8, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15, v8, v9}, Lrx/internal/util/unsafe/MpmcArrayQueue;->casProducerIndex(JJ)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 157
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lrx/internal/util/unsafe/MpmcArrayQueue;->calcElementOffset(J)J

    move-result-wide v18

    .line 158
    .local v18, "elementOffset":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lrx/internal/util/unsafe/MpmcArrayQueue;->spElement(JLjava/lang/Object;)V

    .line 162
    const-wide/16 v8, 0x1

    add-long/2addr v8, v14

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lrx/internal/util/unsafe/MpmcArrayQueue;->soSequence([JJJ)V

    .line 164
    const/4 v4, 0x1

    .end local v18    # "elementOffset":J
    :goto_0
    return v4

    .line 146
    :cond_2
    const-wide/16 v8, 0x0

    cmp-long v4, v16, v8

    if-gez v4, :cond_1

    sub-long v8, v14, v12

    cmp-long v4, v8, v10

    if-gtz v4, :cond_1

    sub-long v8, v14, v12

    invoke-virtual/range {p0 .. p0}, Lrx/internal/util/unsafe/MpmcArrayQueue;->lvConsumerIndex()J

    move-result-wide v10

    cmp-long v4, v8, v10

    if-gtz v4, :cond_1

    .line 150
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public peek()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 219
    .local p0, "this":Lrx/internal/util/unsafe/MpmcArrayQueue;, "Lrx/internal/util/unsafe/MpmcArrayQueue<TE;>;"
    :cond_0
    invoke-virtual {p0}, Lrx/internal/util/unsafe/MpmcArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    .line 221
    .local v0, "currConsumerIndex":J
    invoke-virtual {p0, v0, v1}, Lrx/internal/util/unsafe/MpmcArrayQueue;->calcElementOffset(J)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lrx/internal/util/unsafe/MpmcArrayQueue;->lpElement(J)Ljava/lang/Object;

    move-result-object v2

    .line 223
    .local v2, "e":Ljava/lang/Object;, "TE;"
    if-nez v2, :cond_1

    invoke-virtual {p0}, Lrx/internal/util/unsafe/MpmcArrayQueue;->lvProducerIndex()J

    move-result-wide v4

    cmp-long v3, v0, v4

    if-nez v3, :cond_0

    .line 224
    :cond_1
    return-object v2
.end method

.method public poll()Ljava/lang/Object;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 176
    .local p0, "this":Lrx/internal/util/unsafe/MpmcArrayQueue;, "Lrx/internal/util/unsafe/MpmcArrayQueue<TE;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lrx/internal/util/unsafe/MpmcArrayQueue;->sequenceBuffer:[J

    .line 179
    .local v3, "lSequenceBuffer":[J
    const-wide/16 v16, -0x1

    .line 181
    .local v16, "pIndex":J
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lrx/internal/util/unsafe/MpmcArrayQueue;->lvConsumerIndex()J

    move-result-wide v8

    .line 182
    .local v8, "currentConsumerIndex":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lrx/internal/util/unsafe/MpmcArrayQueue;->calcSequenceOffset(J)J

    move-result-wide v4

    .line 183
    .local v4, "seqOffset":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lrx/internal/util/unsafe/MpmcArrayQueue;->lvSequence([JJ)J

    move-result-wide v18

    .line 184
    .local v18, "seq":J
    const-wide/16 v6, 0x1

    add-long/2addr v6, v8

    sub-long v10, v18, v6

    .line 186
    .local v10, "delta":J
    const-wide/16 v6, 0x0

    cmp-long v2, v10, v6

    if-nez v2, :cond_1

    .line 187
    const-wide/16 v6, 0x1

    add-long/2addr v6, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9, v6, v7}, Lrx/internal/util/unsafe/MpmcArrayQueue;->casConsumerIndex(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lrx/internal/util/unsafe/MpmcArrayQueue;->calcElementOffset(J)J

    move-result-wide v14

    .line 204
    .local v14, "offset":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lrx/internal/util/unsafe/MpmcArrayQueue;->lpElement(J)Ljava/lang/Object;

    move-result-object v12

    .line 205
    .local v12, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15, v2}, Lrx/internal/util/unsafe/MpmcArrayQueue;->spElement(JLjava/lang/Object;)V

    .line 209
    move-object/from16 v0, p0

    iget-wide v6, v0, Lrx/internal/util/unsafe/MpmcArrayQueue;->mask:J

    add-long/2addr v6, v8

    const-wide/16 v20, 0x1

    add-long v6, v6, v20

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lrx/internal/util/unsafe/MpmcArrayQueue;->soSequence([JJJ)V

    .line 211
    .end local v12    # "e":Ljava/lang/Object;, "TE;"
    .end local v14    # "offset":J
    :goto_0
    return-object v12

    .line 192
    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v2, v10, v6

    if-gez v2, :cond_0

    cmp-long v2, v8, v16

    if-ltz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lrx/internal/util/unsafe/MpmcArrayQueue;->lvProducerIndex()J

    move-result-wide v16

    cmp-long v2, v8, v16

    if-nez v2, :cond_0

    .line 196
    const/4 v12, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 8

    .prologue
    .line 235
    .local p0, "this":Lrx/internal/util/unsafe/MpmcArrayQueue;, "Lrx/internal/util/unsafe/MpmcArrayQueue<TE;>;"
    invoke-virtual {p0}, Lrx/internal/util/unsafe/MpmcArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    .line 237
    .local v0, "after":J
    :cond_0
    move-wide v2, v0

    .line 238
    .local v2, "before":J
    invoke-virtual {p0}, Lrx/internal/util/unsafe/MpmcArrayQueue;->lvProducerIndex()J

    move-result-wide v4

    .line 239
    .local v4, "currentProducerIndex":J
    invoke-virtual {p0}, Lrx/internal/util/unsafe/MpmcArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    .line 240
    cmp-long v6, v2, v0

    if-nez v6, :cond_0

    .line 241
    sub-long v6, v4, v0

    long-to-int v6, v6

    return v6
.end method
