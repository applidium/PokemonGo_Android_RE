.class public final Lrx/internal/operators/OperatorWindowWithTime;
.super Ljava/lang/Object;
.source "OperatorWindowWithTime.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;,
        Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;,
        Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;,
        Lrx/internal/operators/OperatorWindowWithTime$State;
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
        "Lrx/Observable",
        "<TT;>;TT;>;"
    }
.end annotation


# static fields
.field static final NEXT_SUBJECT:Ljava/lang/Object;

.field static final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final scheduler:Lrx/Scheduler;

.field final size:I

.field final timeshift:J

.field final timespan:J

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/OperatorWindowWithTime;->NEXT_SUBJECT:Ljava/lang/Object;

    .line 78
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OperatorWindowWithTime;->nl:Lrx/internal/operators/NotificationLite;

    return-void
.end method

.method public constructor <init>(JJLjava/util/concurrent/TimeUnit;ILrx/Scheduler;)V
    .locals 1
    .param p1, "timespan"    # J
    .param p3, "timeshift"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "size"    # I
    .param p7, "scheduler"    # Lrx/Scheduler;

    .prologue
    .line 49
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-wide p1, p0, Lrx/internal/operators/OperatorWindowWithTime;->timespan:J

    .line 51
    iput-wide p3, p0, Lrx/internal/operators/OperatorWindowWithTime;->timeshift:J

    .line 52
    iput-object p5, p0, Lrx/internal/operators/OperatorWindowWithTime;->unit:Ljava/util/concurrent/TimeUnit;

    .line 53
    iput p6, p0, Lrx/internal/operators/OperatorWindowWithTime;->size:I

    .line 54
    iput-object p7, p0, Lrx/internal/operators/OperatorWindowWithTime;->scheduler:Lrx/Scheduler;

    .line 55
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 40
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorWindowWithTime;->call(Lrx/Subscriber;)Lrx/Subscriber;

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
            "Lrx/Observable",
            "<TT;>;>;)",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/Observable<TT;>;>;"
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithTime;->scheduler:Lrx/Scheduler;

    invoke-virtual {v3}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v2

    .line 62
    .local v2, "worker":Lrx/Scheduler$Worker;
    iget-wide v4, p0, Lrx/internal/operators/OperatorWindowWithTime;->timespan:J

    iget-wide v6, p0, Lrx/internal/operators/OperatorWindowWithTime;->timeshift:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 63
    new-instance v0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;

    invoke-direct {v0, p0, p1, v2}, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;-><init>(Lrx/internal/operators/OperatorWindowWithTime;Lrx/Subscriber;Lrx/Scheduler$Worker;)V

    .line 64
    .local v0, "s":Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.ExactSubscriber;"
    invoke-virtual {v0, v2}, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->add(Lrx/Subscription;)V

    .line 65
    invoke-virtual {v0}, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->scheduleExact()V

    .line 73
    .end local v0    # "s":Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.ExactSubscriber;"
    :goto_0
    return-object v0

    .line 69
    :cond_0
    new-instance v1, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;

    invoke-direct {v1, p0, p1, v2}, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;-><init>(Lrx/internal/operators/OperatorWindowWithTime;Lrx/Subscriber;Lrx/Scheduler$Worker;)V

    .line 70
    .local v1, "s":Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.InexactSubscriber;"
    invoke-virtual {v1, v2}, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->add(Lrx/Subscription;)V

    .line 71
    invoke-virtual {v1}, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->startNewChunk()V

    .line 72
    invoke-virtual {v1}, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->scheduleChunk()V

    move-object v0, v1

    .line 73
    goto :goto_0
.end method
