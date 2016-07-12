.class final Lrx/subjects/ReplaySubject$AddTimestamped;
.super Ljava/lang/Object;
.source "ReplaySubject.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subjects/ReplaySubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AddTimestamped"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final scheduler:Lrx/Scheduler;


# direct methods
.method public constructor <init>(Lrx/Scheduler;)V
    .locals 0
    .param p1, "scheduler"    # Lrx/Scheduler;

    .prologue
    .line 967
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 968
    iput-object p1, p0, Lrx/subjects/ReplaySubject$AddTimestamped;->scheduler:Lrx/Scheduler;

    .line 969
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "t1"    # Ljava/lang/Object;

    .prologue
    .line 973
    new-instance v0, Lrx/schedulers/Timestamped;

    iget-object v1, p0, Lrx/subjects/ReplaySubject$AddTimestamped;->scheduler:Lrx/Scheduler;

    invoke-virtual {v1}, Lrx/Scheduler;->now()J

    move-result-wide v2

    invoke-direct {v0, v2, v3, p1}, Lrx/schedulers/Timestamped;-><init>(JLjava/lang/Object;)V

    return-object v0
.end method
