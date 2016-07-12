.class final Lrx/subjects/ReplaySubject$TimedOnAdd;
.super Ljava/lang/Object;
.source "ReplaySubject.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subjects/ReplaySubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TimedOnAdd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Action1",
        "<",
        "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final scheduler:Lrx/Scheduler;

.field final state:Lrx/subjects/ReplaySubject$BoundedState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/ReplaySubject$BoundedState",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/subjects/ReplaySubject$BoundedState;Lrx/Scheduler;)V
    .locals 0
    .param p2, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/ReplaySubject$BoundedState",
            "<TT;>;",
            "Lrx/Scheduler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1010
    .local p0, "this":Lrx/subjects/ReplaySubject$TimedOnAdd;, "Lrx/subjects/ReplaySubject$TimedOnAdd<TT;>;"
    .local p1, "state":Lrx/subjects/ReplaySubject$BoundedState;, "Lrx/subjects/ReplaySubject$BoundedState<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1011
    iput-object p1, p0, Lrx/subjects/ReplaySubject$TimedOnAdd;->state:Lrx/subjects/ReplaySubject$BoundedState;

    .line 1012
    iput-object p2, p0, Lrx/subjects/ReplaySubject$TimedOnAdd;->scheduler:Lrx/Scheduler;

    .line 1013
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1006
    .local p0, "this":Lrx/subjects/ReplaySubject$TimedOnAdd;, "Lrx/subjects/ReplaySubject$TimedOnAdd<TT;>;"
    check-cast p1, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/subjects/ReplaySubject$TimedOnAdd;->call(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)V

    return-void
.end method

.method public call(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1018
    .local p0, "this":Lrx/subjects/ReplaySubject$TimedOnAdd;, "Lrx/subjects/ReplaySubject$TimedOnAdd<TT;>;"
    .local p1, "t1":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    iget-object v1, p0, Lrx/subjects/ReplaySubject$TimedOnAdd;->state:Lrx/subjects/ReplaySubject$BoundedState;

    iget-boolean v1, v1, Lrx/subjects/ReplaySubject$BoundedState;->terminated:Z

    if-nez v1, :cond_0

    .line 1020
    iget-object v1, p0, Lrx/subjects/ReplaySubject$TimedOnAdd;->state:Lrx/subjects/ReplaySubject$BoundedState;

    iget-object v2, p0, Lrx/subjects/ReplaySubject$TimedOnAdd;->state:Lrx/subjects/ReplaySubject$BoundedState;

    invoke-virtual {v2}, Lrx/subjects/ReplaySubject$BoundedState;->head()Lrx/subjects/ReplaySubject$NodeList$Node;

    move-result-object v2

    iget-object v3, p0, Lrx/subjects/ReplaySubject$TimedOnAdd;->scheduler:Lrx/Scheduler;

    invoke-virtual {v3}, Lrx/Scheduler;->now()J

    move-result-wide v4

    invoke-virtual {v1, v2, p1, v4, v5}, Lrx/subjects/ReplaySubject$BoundedState;->replayObserverFromIndexTest(Lrx/subjects/ReplaySubject$NodeList$Node;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;J)Lrx/subjects/ReplaySubject$NodeList$Node;

    move-result-object v0

    .line 1025
    .local v0, "l":Lrx/subjects/ReplaySubject$NodeList$Node;, "Lrx/subjects/ReplaySubject$NodeList$Node<Ljava/lang/Object;>;"
    :goto_0
    invoke-virtual {p1, v0}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->index(Ljava/lang/Object;)V

    .line 1026
    return-void

    .line 1023
    .end local v0    # "l":Lrx/subjects/ReplaySubject$NodeList$Node;, "Lrx/subjects/ReplaySubject$NodeList$Node<Ljava/lang/Object;>;"
    :cond_0
    iget-object v1, p0, Lrx/subjects/ReplaySubject$TimedOnAdd;->state:Lrx/subjects/ReplaySubject$BoundedState;

    iget-object v2, p0, Lrx/subjects/ReplaySubject$TimedOnAdd;->state:Lrx/subjects/ReplaySubject$BoundedState;

    invoke-virtual {v2}, Lrx/subjects/ReplaySubject$BoundedState;->head()Lrx/subjects/ReplaySubject$NodeList$Node;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lrx/subjects/ReplaySubject$BoundedState;->replayObserverFromIndex(Lrx/subjects/ReplaySubject$NodeList$Node;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Lrx/subjects/ReplaySubject$NodeList$Node;

    move-result-object v0

    .restart local v0    # "l":Lrx/subjects/ReplaySubject$NodeList$Node;, "Lrx/subjects/ReplaySubject$NodeList$Node<Ljava/lang/Object;>;"
    goto :goto_0
.end method
