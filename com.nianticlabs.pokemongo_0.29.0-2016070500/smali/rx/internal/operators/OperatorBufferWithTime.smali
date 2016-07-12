.class public final Lrx/internal/operators/OperatorBufferWithTime;
.super Ljava/lang/Object;
.source "OperatorBufferWithTime.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;,
        Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<",
        "Ljava/util/List",
        "<TT;>;TT;>;"
    }
.end annotation


# instance fields
.field final count:I

.field final scheduler:Lrx/Scheduler;

.field final timeshift:J

.field final timespan:J

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JJLjava/util/concurrent/TimeUnit;ILrx/Scheduler;)V
    .locals 1
    .param p1, "timespan"    # J
    .param p3, "timeshift"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "count"    # I
    .param p7, "scheduler"    # Lrx/Scheduler;

    .prologue
    .line 64
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithTime;, "Lrx/internal/operators/OperatorBufferWithTime<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-wide p1, p0, Lrx/internal/operators/OperatorBufferWithTime;->timespan:J

    .line 66
    iput-wide p3, p0, Lrx/internal/operators/OperatorBufferWithTime;->timeshift:J

    .line 67
    iput-object p5, p0, Lrx/internal/operators/OperatorBufferWithTime;->unit:Ljava/util/concurrent/TimeUnit;

    .line 68
    iput p6, p0, Lrx/internal/operators/OperatorBufferWithTime;->count:I

    .line 69
    iput-object p7, p0, Lrx/internal/operators/OperatorBufferWithTime;->scheduler:Lrx/Scheduler;

    .line 70
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 45
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithTime;, "Lrx/internal/operators/OperatorBufferWithTime<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorBufferWithTime;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;)",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithTime;, "Lrx/internal/operators/OperatorBufferWithTime<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/util/List<TT;>;>;"
    iget-object v4, p0, Lrx/internal/operators/OperatorBufferWithTime;->scheduler:Lrx/Scheduler;

    invoke-virtual {v4}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v2

    .line 75
    .local v2, "inner":Lrx/Scheduler$Worker;
    new-instance v3, Lrx/observers/SerializedSubscriber;

    invoke-direct {v3, p1}, Lrx/observers/SerializedSubscriber;-><init>(Lrx/Subscriber;)V

    .line 77
    .local v3, "serialized":Lrx/observers/SerializedSubscriber;, "Lrx/observers/SerializedSubscriber<Ljava/util/List<TT;>;>;"
    iget-wide v4, p0, Lrx/internal/operators/OperatorBufferWithTime;->timespan:J

    iget-wide v6, p0, Lrx/internal/operators/OperatorBufferWithTime;->timeshift:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 78
    new-instance v0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;

    invoke-direct {v0, p0, v3, v2}, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;-><init>(Lrx/internal/operators/OperatorBufferWithTime;Lrx/Subscriber;Lrx/Scheduler$Worker;)V

    .line 79
    .local v0, "bsub":Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;, "Lrx/internal/operators/OperatorBufferWithTime<TT;>.ExactSubscriber;"
    invoke-virtual {v0, v2}, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->add(Lrx/Subscription;)V

    .line 80
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 81
    invoke-virtual {v0}, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->scheduleExact()V

    .line 90
    .end local v0    # "bsub":Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;, "Lrx/internal/operators/OperatorBufferWithTime<TT;>.ExactSubscriber;"
    :goto_0
    return-object v0

    .line 85
    :cond_0
    new-instance v1, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;

    invoke-direct {v1, p0, v3, v2}, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;-><init>(Lrx/internal/operators/OperatorBufferWithTime;Lrx/Subscriber;Lrx/Scheduler$Worker;)V

    .line 86
    .local v1, "bsub":Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;, "Lrx/internal/operators/OperatorBufferWithTime<TT;>.InexactSubscriber;"
    invoke-virtual {v1, v2}, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->add(Lrx/Subscription;)V

    .line 87
    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 88
    invoke-virtual {v1}, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->startNewChunk()V

    .line 89
    invoke-virtual {v1}, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->scheduleChunk()V

    move-object v0, v1

    .line 90
    goto :goto_0
.end method
