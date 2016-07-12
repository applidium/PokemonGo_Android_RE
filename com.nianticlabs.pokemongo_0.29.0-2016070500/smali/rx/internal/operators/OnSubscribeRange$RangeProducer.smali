.class final Lrx/internal/operators/OnSubscribeRange$RangeProducer;
.super Ljava/lang/Object;
.source "OnSubscribeRange.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RangeProducer"
.end annotation


# static fields
.field private static final REQUESTED_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater",
            "<",
            "Lrx/internal/operators/OnSubscribeRange$RangeProducer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final end:I

.field private index:J

.field private final o:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile requested:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    const-class v0, Lrx/internal/operators/OnSubscribeRange$RangeProducer;

    const-string v1, "requested"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->REQUESTED_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method private constructor <init>(Lrx/Subscriber;II)V
    .locals 2
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "o":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->o:Lrx/Subscriber;

    .line 52
    int-to-long v0, p2

    iput-wide v0, p0, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->index:J

    .line 53
    iput p3, p0, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->end:I

    .line 54
    return-void
.end method

.method synthetic constructor <init>(Lrx/Subscriber;IILrx/internal/operators/OnSubscribeRange$1;)V
    .locals 0
    .param p1, "x0"    # Lrx/Subscriber;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Lrx/internal/operators/OnSubscribeRange$1;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lrx/internal/operators/OnSubscribeRange$RangeProducer;-><init>(Lrx/Subscriber;II)V

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 27
    .param p1, "n"    # J

    .prologue
    .line 58
    move-object/from16 v0, p0

    iget-wide v4, v0, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->requested:J

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, p1, v4

    if-nez v4, :cond_3

    sget-object v4, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->REQUESTED_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/16 v6, 0x0

    const-wide v8, 0x7fffffffffffffffL

    move-object/from16 v5, p0

    invoke-virtual/range {v4 .. v9}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 64
    move-object/from16 v0, p0

    iget-wide v0, v0, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->index:J

    move-wide/from16 v16, v0

    .local v16, "i":J
    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->end:I

    int-to-long v4, v4

    cmp-long v4, v16, v4

    if-gtz v4, :cond_2

    .line 65
    move-object/from16 v0, p0

    iget-object v4, v0, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->o:Lrx/Subscriber;

    invoke-virtual {v4}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 68
    move-object/from16 v0, p0

    iget-object v4, v0, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->o:Lrx/Subscriber;

    move-wide/from16 v0, v16

    long-to-int v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 64
    const-wide/16 v4, 0x1

    add-long v16, v16, v4

    goto :goto_1

    .line 70
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->o:Lrx/Subscriber;

    invoke-virtual {v4}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 71
    move-object/from16 v0, p0

    iget-object v4, v0, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->o:Lrx/Subscriber;

    invoke-virtual {v4}, Lrx/Subscriber;->onCompleted()V

    goto :goto_0

    .line 73
    .end local v16    # "i":J
    :cond_3
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-lez v4, :cond_0

    .line 75
    sget-object v4, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->REQUESTED_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-static {v4, v0, v1, v2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;Ljava/lang/Object;J)J

    move-result-wide v10

    .line 76
    .local v10, "_c":J
    const-wide/16 v4, 0x0

    cmp-long v4, v10, v4

    if-nez v4, :cond_0

    .line 82
    :cond_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->requested:J

    move-wide/from16 v22, v0

    .line 83
    .local v22, "r":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->index:J

    move-wide/from16 v18, v0

    .line 84
    .local v18, "idx":J
    move-object/from16 v0, p0

    iget v4, v0, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->end:I

    int-to-long v4, v4

    sub-long v4, v4, v18

    const-wide/16 v6, 0x1

    add-long v20, v4, v6

    .line 85
    .local v20, "numLeft":J
    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    .line 86
    .local v14, "e":J
    cmp-long v4, v20, v22

    if-gtz v4, :cond_5

    const/4 v12, 0x1

    .line 87
    .local v12, "completeOnFinish":Z
    :goto_2
    add-long v24, v14, v18

    .line 88
    .local v24, "stopAt":J
    move-wide/from16 v16, v18

    .restart local v16    # "i":J
    :goto_3
    cmp-long v4, v16, v24

    if-gez v4, :cond_6

    .line 89
    move-object/from16 v0, p0

    iget-object v4, v0, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->o:Lrx/Subscriber;

    invoke-virtual {v4}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 92
    move-object/from16 v0, p0

    iget-object v4, v0, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->o:Lrx/Subscriber;

    move-wide/from16 v0, v16

    long-to-int v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 88
    const-wide/16 v4, 0x1

    add-long v16, v16, v4

    goto :goto_3

    .line 86
    .end local v12    # "completeOnFinish":Z
    .end local v16    # "i":J
    .end local v24    # "stopAt":J
    :cond_5
    const/4 v12, 0x0

    goto :goto_2

    .line 94
    .restart local v12    # "completeOnFinish":Z
    .restart local v16    # "i":J
    .restart local v24    # "stopAt":J
    :cond_6
    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->index:J

    .line 96
    if-eqz v12, :cond_7

    .line 97
    move-object/from16 v0, p0

    iget-object v4, v0, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->o:Lrx/Subscriber;

    invoke-virtual {v4}, Lrx/Subscriber;->onCompleted()V

    goto/16 :goto_0

    .line 100
    :cond_7
    sget-object v4, Lrx/internal/operators/OnSubscribeRange$RangeProducer;->REQUESTED_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    neg-long v6, v14

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v6, v7}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    goto/16 :goto_0
.end method
