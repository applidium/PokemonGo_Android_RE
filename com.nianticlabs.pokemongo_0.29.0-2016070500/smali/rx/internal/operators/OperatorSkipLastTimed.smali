.class public Lrx/internal/operators/OperatorSkipLastTimed;
.super Ljava/lang/Object;
.source "OperatorSkipLastTimed.java"

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
.field private final scheduler:Lrx/Scheduler;

.field private final timeInMillis:J


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;

    .prologue
    .line 35
    .local p0, "this":Lrx/internal/operators/OperatorSkipLastTimed;, "Lrx/internal/operators/OperatorSkipLastTimed<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lrx/internal/operators/OperatorSkipLastTimed;->timeInMillis:J

    .line 37
    iput-object p4, p0, Lrx/internal/operators/OperatorSkipLastTimed;->scheduler:Lrx/Scheduler;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lrx/internal/operators/OperatorSkipLastTimed;)J
    .locals 2
    .param p0, "x0"    # Lrx/internal/operators/OperatorSkipLastTimed;

    .prologue
    .line 30
    iget-wide v0, p0, Lrx/internal/operators/OperatorSkipLastTimed;->timeInMillis:J

    return-wide v0
.end method

.method static synthetic access$100(Lrx/internal/operators/OperatorSkipLastTimed;)Lrx/Scheduler;
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorSkipLastTimed;

    .prologue
    .line 30
    iget-object v0, p0, Lrx/internal/operators/OperatorSkipLastTimed;->scheduler:Lrx/Scheduler;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    .local p0, "this":Lrx/internal/operators/OperatorSkipLastTimed;, "Lrx/internal/operators/OperatorSkipLastTimed<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorSkipLastTimed;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 1
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
    .local p0, "this":Lrx/internal/operators/OperatorSkipLastTimed;, "Lrx/internal/operators/OperatorSkipLastTimed<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorSkipLastTimed$1;

    invoke-direct {v0, p0, p1, p1}, Lrx/internal/operators/OperatorSkipLastTimed$1;-><init>(Lrx/internal/operators/OperatorSkipLastTimed;Lrx/Subscriber;Lrx/Subscriber;)V

    return-object v0
.end method
