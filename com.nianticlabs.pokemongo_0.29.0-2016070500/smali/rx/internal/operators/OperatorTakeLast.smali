.class public final Lrx/internal/operators/OperatorTakeLast;
.super Ljava/lang/Object;
.source "OperatorTakeLast.java"

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
.field private final count:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 33
    .local p0, "this":Lrx/internal/operators/OperatorTakeLast;, "Lrx/internal/operators/OperatorTakeLast<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    if-gez p1, :cond_0

    .line 35
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "count cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    iput p1, p0, Lrx/internal/operators/OperatorTakeLast;->count:I

    .line 38
    return-void
.end method

.method static synthetic access$000(Lrx/internal/operators/OperatorTakeLast;)I
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorTakeLast;

    .prologue
    .line 29
    iget v0, p0, Lrx/internal/operators/OperatorTakeLast;->count:I

    return v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 29
    .local p0, "this":Lrx/internal/operators/OperatorTakeLast;, "Lrx/internal/operators/OperatorTakeLast<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorTakeLast;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 7
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
    .line 42
    .local p0, "this":Lrx/internal/operators/OperatorTakeLast;, "Lrx/internal/operators/OperatorTakeLast<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    .line 43
    .local v3, "deque":Ljava/util/Deque;, "Ljava/util/Deque<Ljava/lang/Object;>;"
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v4

    .line 44
    .local v4, "notification":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    new-instance v5, Lrx/internal/operators/TakeLastQueueProducer;

    invoke-direct {v5, v4, v3, p1}, Lrx/internal/operators/TakeLastQueueProducer;-><init>(Lrx/internal/operators/NotificationLite;Ljava/util/Deque;Lrx/Subscriber;)V

    .line 45
    .local v5, "producer":Lrx/internal/operators/TakeLastQueueProducer;, "Lrx/internal/operators/TakeLastQueueProducer<TT;>;"
    invoke-virtual {p1, v5}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 47
    new-instance v0, Lrx/internal/operators/OperatorTakeLast$1;

    move-object v1, p0

    move-object v2, p1

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lrx/internal/operators/OperatorTakeLast$1;-><init>(Lrx/internal/operators/OperatorTakeLast;Lrx/Subscriber;Ljava/util/Deque;Lrx/internal/operators/NotificationLite;Lrx/internal/operators/TakeLastQueueProducer;Lrx/Subscriber;)V

    return-object v0
.end method
