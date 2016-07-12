.class final Lrx/schedulers/TrampolineScheduler$TimedAction;
.super Ljava/lang/Object;
.source "TrampolineScheduler.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/schedulers/TrampolineScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TimedAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lrx/schedulers/TrampolineScheduler$TimedAction;",
        ">;"
    }
.end annotation


# instance fields
.field final action:Lrx/functions/Action0;

.field final count:I

.field final execTime:Ljava/lang/Long;


# direct methods
.method private constructor <init>(Lrx/functions/Action0;Ljava/lang/Long;I)V
    .locals 0
    .param p1, "action"    # Lrx/functions/Action0;
    .param p2, "execTime"    # Ljava/lang/Long;
    .param p3, "count"    # I

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lrx/schedulers/TrampolineScheduler$TimedAction;->action:Lrx/functions/Action0;

    .line 116
    iput-object p2, p0, Lrx/schedulers/TrampolineScheduler$TimedAction;->execTime:Ljava/lang/Long;

    .line 117
    iput p3, p0, Lrx/schedulers/TrampolineScheduler$TimedAction;->count:I

    .line 118
    return-void
.end method

.method synthetic constructor <init>(Lrx/functions/Action0;Ljava/lang/Long;ILrx/schedulers/TrampolineScheduler$1;)V
    .locals 0
    .param p1, "x0"    # Lrx/functions/Action0;
    .param p2, "x1"    # Ljava/lang/Long;
    .param p3, "x2"    # I
    .param p4, "x3"    # Lrx/schedulers/TrampolineScheduler$1;

    .prologue
    .line 109
    invoke-direct {p0, p1, p2, p3}, Lrx/schedulers/TrampolineScheduler$TimedAction;-><init>(Lrx/functions/Action0;Ljava/lang/Long;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 109
    check-cast p1, Lrx/schedulers/TrampolineScheduler$TimedAction;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/schedulers/TrampolineScheduler$TimedAction;->compareTo(Lrx/schedulers/TrampolineScheduler$TimedAction;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lrx/schedulers/TrampolineScheduler$TimedAction;)I
    .locals 3
    .param p1, "that"    # Lrx/schedulers/TrampolineScheduler$TimedAction;

    .prologue
    .line 122
    iget-object v1, p0, Lrx/schedulers/TrampolineScheduler$TimedAction;->execTime:Ljava/lang/Long;

    iget-object v2, p1, Lrx/schedulers/TrampolineScheduler$TimedAction;->execTime:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    .line 123
    .local v0, "result":I
    if-nez v0, :cond_0

    .line 124
    iget v1, p0, Lrx/schedulers/TrampolineScheduler$TimedAction;->count:I

    iget v2, p1, Lrx/schedulers/TrampolineScheduler$TimedAction;->count:I

    # invokes: Lrx/schedulers/TrampolineScheduler;->compare(II)I
    invoke-static {v1, v2}, Lrx/schedulers/TrampolineScheduler;->access$300(II)I

    move-result v0

    .line 126
    .end local v0    # "result":I
    :cond_0
    return v0
.end method
