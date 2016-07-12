.class public final Lrx/internal/operators/OperatorTakeLastTimed;
.super Ljava/lang/Object;
.source "OperatorTakeLastTimed.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field private final ageMillis:J

.field private final count:I

.field private final scheduler:Lrx/Scheduler;


# direct methods
.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V
    .locals 2
    .param p1, "count"    # I
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lrx/Scheduler;

    .prologue
    .line 43
    .local p0, "this":Lrx/internal/operators/OperatorTakeLastTimed;, "Lrx/internal/operators/OperatorTakeLastTimed<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    if-gez p1, :cond_0

    .line 45
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "count could not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lrx/internal/operators/OperatorTakeLastTimed;->ageMillis:J

    .line 48
    iput-object p5, p0, Lrx/internal/operators/OperatorTakeLastTimed;->scheduler:Lrx/Scheduler;

    .line 49
    iput p1, p0, Lrx/internal/operators/OperatorTakeLastTimed;->count:I

    .line 50
    return-void
.end method

.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;

    .prologue
    .line 37
    .local p0, "this":Lrx/internal/operators/OperatorTakeLastTimed;, "Lrx/internal/operators/OperatorTakeLastTimed<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lrx/internal/operators/OperatorTakeLastTimed;->ageMillis:J

    .line 39
    iput-object p4, p0, Lrx/internal/operators/OperatorTakeLastTimed;->scheduler:Lrx/Scheduler;

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lrx/internal/operators/OperatorTakeLastTimed;->count:I

    .line 41
    return-void
.end method

.method static synthetic access$000(Lrx/internal/operators/OperatorTakeLastTimed;)I
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorTakeLastTimed;

    .prologue
    .line 31
    iget v0, p0, Lrx/internal/operators/OperatorTakeLastTimed;->count:I

    return v0
.end method

.method static synthetic access$100(Lrx/internal/operators/OperatorTakeLastTimed;)J
    .locals 2
    .param p0, "x0"    # Lrx/internal/operators/OperatorTakeLastTimed;

    .prologue
    .line 31
    iget-wide v0, p0, Lrx/internal/operators/OperatorTakeLastTimed;->ageMillis:J

    return-wide v0
.end method

.method static synthetic access$200(Lrx/internal/operators/OperatorTakeLastTimed;)Lrx/Scheduler;
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorTakeLastTimed;

    .prologue
    .line 31
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLastTimed;->scheduler:Lrx/Scheduler;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 31
    .local p0, "this":Lrx/internal/operators/OperatorTakeLastTimed;, "Lrx/internal/operators/OperatorTakeLastTimed<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorTakeLastTimed;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lrx/internal/operators/OperatorTakeLastTimed;, "Lrx/internal/operators/OperatorTakeLastTimed<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    .line 55
    .local v3, "buffer":Ljava/util/Deque;, "Ljava/util/Deque<Ljava/lang/Object;>;"
    new-instance v4, Ljava/util/ArrayDeque;

    invoke-direct {v4}, Ljava/util/ArrayDeque;-><init>()V

    .line 56
    .local v4, "timestampBuffer":Ljava/util/Deque;, "Ljava/util/Deque<Ljava/lang/Long;>;"
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v5

    .line 57
    .local v5, "notification":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    new-instance v7, Lrx/internal/operators/TakeLastQueueProducer;

    invoke-direct {v7, v5, v3, p1}, Lrx/internal/operators/TakeLastQueueProducer;-><init>(Lrx/internal/operators/NotificationLite;Ljava/util/Deque;Lrx/Subscriber;)V

    .line 58
    .local v7, "producer":Lrx/internal/operators/TakeLastQueueProducer;, "Lrx/internal/operators/TakeLastQueueProducer<TT;>;"
    invoke-virtual {p1, v7}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 59
    new-instance v0, Lrx/internal/operators/OperatorTakeLastTimed$1;

    move-object v1, p0

    move-object v2, p1

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lrx/internal/operators/OperatorTakeLastTimed$1;-><init>(Lrx/internal/operators/OperatorTakeLastTimed;Lrx/Subscriber;Ljava/util/Deque;Ljava/util/Deque;Lrx/internal/operators/NotificationLite;Lrx/Subscriber;Lrx/internal/operators/TakeLastQueueProducer;)V

    return-object v0
.end method
