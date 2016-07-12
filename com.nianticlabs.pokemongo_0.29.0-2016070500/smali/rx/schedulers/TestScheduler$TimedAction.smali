.class final Lrx/schedulers/TestScheduler$TimedAction;
.super Ljava/lang/Object;
.source "TestScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/schedulers/TestScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TimedAction"
.end annotation


# instance fields
.field private final action:Lrx/functions/Action0;

.field private final count:J

.field private final scheduler:Lrx/Scheduler$Worker;

.field private final time:J


# direct methods
.method private constructor <init>(Lrx/Scheduler$Worker;JLrx/functions/Action0;)V
    .locals 2
    .param p1, "scheduler"    # Lrx/Scheduler$Worker;
    .param p2, "time"    # J
    .param p4, "action"    # Lrx/functions/Action0;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    # operator++ for: Lrx/schedulers/TestScheduler;->counter:J
    invoke-static {}, Lrx/schedulers/TestScheduler;->access$108()J

    move-result-wide v0

    iput-wide v0, p0, Lrx/schedulers/TestScheduler$TimedAction;->count:J

    .line 45
    iput-wide p2, p0, Lrx/schedulers/TestScheduler$TimedAction;->time:J

    .line 46
    iput-object p4, p0, Lrx/schedulers/TestScheduler$TimedAction;->action:Lrx/functions/Action0;

    .line 47
    iput-object p1, p0, Lrx/schedulers/TestScheduler$TimedAction;->scheduler:Lrx/Scheduler$Worker;

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Lrx/Scheduler$Worker;JLrx/functions/Action0;Lrx/schedulers/TestScheduler$1;)V
    .locals 0
    .param p1, "x0"    # Lrx/Scheduler$Worker;
    .param p2, "x1"    # J
    .param p4, "x2"    # Lrx/functions/Action0;
    .param p5, "x3"    # Lrx/schedulers/TestScheduler$1;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lrx/schedulers/TestScheduler$TimedAction;-><init>(Lrx/Scheduler$Worker;JLrx/functions/Action0;)V

    return-void
.end method

.method static synthetic access$200(Lrx/schedulers/TestScheduler$TimedAction;)J
    .locals 2
    .param p0, "x0"    # Lrx/schedulers/TestScheduler$TimedAction;

    .prologue
    .line 37
    iget-wide v0, p0, Lrx/schedulers/TestScheduler$TimedAction;->time:J

    return-wide v0
.end method

.method static synthetic access$300(Lrx/schedulers/TestScheduler$TimedAction;)J
    .locals 2
    .param p0, "x0"    # Lrx/schedulers/TestScheduler$TimedAction;

    .prologue
    .line 37
    iget-wide v0, p0, Lrx/schedulers/TestScheduler$TimedAction;->count:J

    return-wide v0
.end method

.method static synthetic access$400(Lrx/schedulers/TestScheduler$TimedAction;)Lrx/Scheduler$Worker;
    .locals 1
    .param p0, "x0"    # Lrx/schedulers/TestScheduler$TimedAction;

    .prologue
    .line 37
    iget-object v0, p0, Lrx/schedulers/TestScheduler$TimedAction;->scheduler:Lrx/Scheduler$Worker;

    return-object v0
.end method

.method static synthetic access$500(Lrx/schedulers/TestScheduler$TimedAction;)Lrx/functions/Action0;
    .locals 1
    .param p0, "x0"    # Lrx/schedulers/TestScheduler$TimedAction;

    .prologue
    .line 37
    iget-object v0, p0, Lrx/schedulers/TestScheduler$TimedAction;->action:Lrx/functions/Action0;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 52
    const-string v0, "TimedAction(time = %d, action = %s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lrx/schedulers/TestScheduler$TimedAction;->time:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lrx/schedulers/TestScheduler$TimedAction;->action:Lrx/functions/Action0;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
