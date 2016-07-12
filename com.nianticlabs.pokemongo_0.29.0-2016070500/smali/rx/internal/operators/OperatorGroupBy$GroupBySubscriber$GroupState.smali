.class Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;
.super Ljava/lang/Object;
.source "OperatorGroupBy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GroupState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final buffer:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final count:Ljava/util/concurrent/atomic/AtomicLong;

.field private final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field private final s:Lrx/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/Subject",
            "<TT;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 107
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState<TK;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    invoke-static {}, Lrx/internal/operators/BufferUntilSubscriber;->create()Lrx/internal/operators/BufferUntilSubscriber;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;->s:Lrx/subjects/Subject;

    .line 109
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 110
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;->count:Ljava/util/concurrent/atomic/AtomicLong;

    .line 111
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;->buffer:Ljava/util/Queue;

    return-void
.end method

.method synthetic constructor <init>(Lrx/internal/operators/OperatorGroupBy$1;)V
    .locals 0
    .param p1, "x0"    # Lrx/internal/operators/OperatorGroupBy$1;

    .prologue
    .line 107
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState<TK;TT;>;"
    invoke-direct {p0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;

    .prologue
    .line 107
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$100(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;

    .prologue
    .line 107
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;->count:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$500(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;

    .prologue
    .line 107
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;->buffer:Ljava/util/Queue;

    return-object v0
.end method


# virtual methods
.method public getObservable()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState<TK;TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;->s:Lrx/subjects/Subject;

    return-object v0
.end method

.method public getObserver()Lrx/Observer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observer",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState<TK;TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$GroupState;->s:Lrx/subjects/Subject;

    return-object v0
.end method
