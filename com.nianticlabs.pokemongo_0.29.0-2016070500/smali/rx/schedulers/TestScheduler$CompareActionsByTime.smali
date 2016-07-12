.class Lrx/schedulers/TestScheduler$CompareActionsByTime;
.super Ljava/lang/Object;
.source "TestScheduler.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/schedulers/TestScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CompareActionsByTime"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lrx/schedulers/TestScheduler$TimedAction;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lrx/schedulers/TestScheduler$1;)V
    .locals 0
    .param p1, "x0"    # Lrx/schedulers/TestScheduler$1;

    .prologue
    .line 56
    invoke-direct {p0}, Lrx/schedulers/TestScheduler$CompareActionsByTime;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 56
    check-cast p1, Lrx/schedulers/TestScheduler$TimedAction;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lrx/schedulers/TestScheduler$TimedAction;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lrx/schedulers/TestScheduler$CompareActionsByTime;->compare(Lrx/schedulers/TestScheduler$TimedAction;Lrx/schedulers/TestScheduler$TimedAction;)I

    move-result v0

    return v0
.end method

.method public compare(Lrx/schedulers/TestScheduler$TimedAction;Lrx/schedulers/TestScheduler$TimedAction;)I
    .locals 4
    .param p1, "action1"    # Lrx/schedulers/TestScheduler$TimedAction;
    .param p2, "action2"    # Lrx/schedulers/TestScheduler$TimedAction;

    .prologue
    .line 59
    # getter for: Lrx/schedulers/TestScheduler$TimedAction;->time:J
    invoke-static {p1}, Lrx/schedulers/TestScheduler$TimedAction;->access$200(Lrx/schedulers/TestScheduler$TimedAction;)J

    move-result-wide v0

    # getter for: Lrx/schedulers/TestScheduler$TimedAction;->time:J
    invoke-static {p2}, Lrx/schedulers/TestScheduler$TimedAction;->access$200(Lrx/schedulers/TestScheduler$TimedAction;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 60
    # getter for: Lrx/schedulers/TestScheduler$TimedAction;->count:J
    invoke-static {p1}, Lrx/schedulers/TestScheduler$TimedAction;->access$300(Lrx/schedulers/TestScheduler$TimedAction;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    # getter for: Lrx/schedulers/TestScheduler$TimedAction;->count:J
    invoke-static {p2}, Lrx/schedulers/TestScheduler$TimedAction;->access$300(Lrx/schedulers/TestScheduler$TimedAction;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    .line 62
    :goto_0
    return v0

    :cond_0
    # getter for: Lrx/schedulers/TestScheduler$TimedAction;->time:J
    invoke-static {p1}, Lrx/schedulers/TestScheduler$TimedAction;->access$200(Lrx/schedulers/TestScheduler$TimedAction;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    # getter for: Lrx/schedulers/TestScheduler$TimedAction;->time:J
    invoke-static {p2}, Lrx/schedulers/TestScheduler$TimedAction;->access$200(Lrx/schedulers/TestScheduler$TimedAction;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    goto :goto_0
.end method
