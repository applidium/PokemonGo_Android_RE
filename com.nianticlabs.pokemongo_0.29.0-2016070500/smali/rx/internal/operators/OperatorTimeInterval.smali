.class public final Lrx/internal/operators/OperatorTimeInterval;
.super Ljava/lang/Object;
.source "OperatorTimeInterval.java"

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
        "<",
        "Lrx/schedulers/TimeInterval",
        "<TT;>;TT;>;"
    }
.end annotation


# instance fields
.field private final scheduler:Lrx/Scheduler;


# direct methods
.method public constructor <init>(Lrx/Scheduler;)V
    .locals 0
    .param p1, "scheduler"    # Lrx/Scheduler;

    .prologue
    .line 30
    .local p0, "this":Lrx/internal/operators/OperatorTimeInterval;, "Lrx/internal/operators/OperatorTimeInterval<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lrx/internal/operators/OperatorTimeInterval;->scheduler:Lrx/Scheduler;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lrx/internal/operators/OperatorTimeInterval;)Lrx/Scheduler;
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorTimeInterval;

    .prologue
    .line 26
    iget-object v0, p0, Lrx/internal/operators/OperatorTimeInterval;->scheduler:Lrx/Scheduler;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 26
    .local p0, "this":Lrx/internal/operators/OperatorTimeInterval;, "Lrx/internal/operators/OperatorTimeInterval<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorTimeInterval;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Lrx/schedulers/TimeInterval",
            "<TT;>;>;)",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lrx/internal/operators/OperatorTimeInterval;, "Lrx/internal/operators/OperatorTimeInterval<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/schedulers/TimeInterval<TT;>;>;"
    new-instance v0, Lrx/internal/operators/OperatorTimeInterval$1;

    invoke-direct {v0, p0, p1, p1}, Lrx/internal/operators/OperatorTimeInterval$1;-><init>(Lrx/internal/operators/OperatorTimeInterval;Lrx/Subscriber;Lrx/Subscriber;)V

    return-object v0
.end method
