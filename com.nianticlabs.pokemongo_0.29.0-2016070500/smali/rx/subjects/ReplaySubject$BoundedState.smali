.class final Lrx/subjects/ReplaySubject$BoundedState;
.super Ljava/lang/Object;
.source "ReplaySubject.java"

# interfaces
.implements Lrx/subjects/ReplaySubject$ReplayState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subjects/ReplaySubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BoundedState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/subjects/ReplaySubject$ReplayState",
        "<TT;",
        "Lrx/subjects/ReplaySubject$NodeList$Node",
        "<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final enterTransform:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final evictionPolicy:Lrx/subjects/ReplaySubject$EvictionPolicy;

.field final leaveTransform:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final list:Lrx/subjects/ReplaySubject$NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/ReplaySubject$NodeList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field volatile tail:Lrx/subjects/ReplaySubject$NodeList$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/ReplaySubject$NodeList$Node",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field volatile terminated:Z


# direct methods
.method public constructor <init>(Lrx/subjects/ReplaySubject$EvictionPolicy;Lrx/functions/Func1;Lrx/functions/Func1;)V
    .locals 1
    .param p1, "evictionPolicy"    # Lrx/subjects/ReplaySubject$EvictionPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/ReplaySubject$EvictionPolicy;",
            "Lrx/functions/Func1",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Lrx/functions/Func1",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 594
    .local p0, "this":Lrx/subjects/ReplaySubject$BoundedState;, "Lrx/subjects/ReplaySubject$BoundedState<TT;>;"
    .local p2, "enterTransform":Lrx/functions/Func1;, "Lrx/functions/Func1<Ljava/lang/Object;Ljava/lang/Object;>;"
    .local p3, "leaveTransform":Lrx/functions/Func1;, "Lrx/functions/Func1<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 589
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/subjects/ReplaySubject$BoundedState;->nl:Lrx/internal/operators/NotificationLite;

    .line 595
    new-instance v0, Lrx/subjects/ReplaySubject$NodeList;

    invoke-direct {v0}, Lrx/subjects/ReplaySubject$NodeList;-><init>()V

    iput-object v0, p0, Lrx/subjects/ReplaySubject$BoundedState;->list:Lrx/subjects/ReplaySubject$NodeList;

    .line 596
    iget-object v0, p0, Lrx/subjects/ReplaySubject$BoundedState;->list:Lrx/subjects/ReplaySubject$NodeList;

    iget-object v0, v0, Lrx/subjects/ReplaySubject$NodeList;->tail:Lrx/subjects/ReplaySubject$NodeList$Node;

    iput-object v0, p0, Lrx/subjects/ReplaySubject$BoundedState;->tail:Lrx/subjects/ReplaySubject$NodeList$Node;

    .line 597
    iput-object p1, p0, Lrx/subjects/ReplaySubject$BoundedState;->evictionPolicy:Lrx/subjects/ReplaySubject$EvictionPolicy;

    .line 598
    iput-object p2, p0, Lrx/subjects/ReplaySubject$BoundedState;->enterTransform:Lrx/functions/Func1;

    .line 599
    iput-object p3, p0, Lrx/subjects/ReplaySubject$BoundedState;->leaveTransform:Lrx/functions/Func1;

    .line 600
    return-void
.end method


# virtual methods
.method public accept(Lrx/Observer;Lrx/subjects/ReplaySubject$NodeList$Node;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observer",
            "<-TT;>;",
            "Lrx/subjects/ReplaySubject$NodeList$Node",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 630
    .local p0, "this":Lrx/subjects/ReplaySubject$BoundedState;, "Lrx/subjects/ReplaySubject$BoundedState<TT;>;"
    .local p1, "o":Lrx/Observer;, "Lrx/Observer<-TT;>;"
    .local p2, "node":Lrx/subjects/ReplaySubject$NodeList$Node;, "Lrx/subjects/ReplaySubject$NodeList$Node<Ljava/lang/Object;>;"
    iget-object v0, p0, Lrx/subjects/ReplaySubject$BoundedState;->nl:Lrx/internal/operators/NotificationLite;

    iget-object v1, p0, Lrx/subjects/ReplaySubject$BoundedState;->leaveTransform:Lrx/functions/Func1;

    iget-object v2, p2, Lrx/subjects/ReplaySubject$NodeList$Node;->value:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z

    .line 631
    return-void
.end method

.method public acceptTest(Lrx/Observer;Lrx/subjects/ReplaySubject$NodeList$Node;J)V
    .locals 3
    .param p3, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observer",
            "<-TT;>;",
            "Lrx/subjects/ReplaySubject$NodeList$Node",
            "<",
            "Ljava/lang/Object;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 639
    .local p0, "this":Lrx/subjects/ReplaySubject$BoundedState;, "Lrx/subjects/ReplaySubject$BoundedState<TT;>;"
    .local p1, "o":Lrx/Observer;, "Lrx/Observer<-TT;>;"
    .local p2, "node":Lrx/subjects/ReplaySubject$NodeList$Node;, "Lrx/subjects/ReplaySubject$NodeList$Node<Ljava/lang/Object;>;"
    iget-object v0, p2, Lrx/subjects/ReplaySubject$NodeList$Node;->value:Ljava/lang/Object;

    .line 640
    .local v0, "v":Ljava/lang/Object;
    iget-object v1, p0, Lrx/subjects/ReplaySubject$BoundedState;->evictionPolicy:Lrx/subjects/ReplaySubject$EvictionPolicy;

    invoke-interface {v1, v0, p3, p4}, Lrx/subjects/ReplaySubject$EvictionPolicy;->test(Ljava/lang/Object;J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 641
    iget-object v1, p0, Lrx/subjects/ReplaySubject$BoundedState;->nl:Lrx/internal/operators/NotificationLite;

    iget-object v2, p0, Lrx/subjects/ReplaySubject$BoundedState;->leaveTransform:Lrx/functions/Func1;

    invoke-interface {v2, v0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z

    .line 643
    :cond_0
    return-void
.end method

.method public complete()V
    .locals 3

    .prologue
    .line 611
    .local p0, "this":Lrx/subjects/ReplaySubject$BoundedState;, "Lrx/subjects/ReplaySubject$BoundedState<TT;>;"
    iget-boolean v0, p0, Lrx/subjects/ReplaySubject$BoundedState;->terminated:Z

    if-nez v0, :cond_0

    .line 612
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/subjects/ReplaySubject$BoundedState;->terminated:Z

    .line 613
    iget-object v0, p0, Lrx/subjects/ReplaySubject$BoundedState;->list:Lrx/subjects/ReplaySubject$NodeList;

    iget-object v1, p0, Lrx/subjects/ReplaySubject$BoundedState;->enterTransform:Lrx/functions/Func1;

    iget-object v2, p0, Lrx/subjects/ReplaySubject$BoundedState;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v2}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/subjects/ReplaySubject$NodeList;->addLast(Ljava/lang/Object;)V

    .line 614
    iget-object v0, p0, Lrx/subjects/ReplaySubject$BoundedState;->evictionPolicy:Lrx/subjects/ReplaySubject$EvictionPolicy;

    iget-object v1, p0, Lrx/subjects/ReplaySubject$BoundedState;->list:Lrx/subjects/ReplaySubject$NodeList;

    invoke-interface {v0, v1}, Lrx/subjects/ReplaySubject$EvictionPolicy;->evictFinal(Lrx/subjects/ReplaySubject$NodeList;)V

    .line 615
    iget-object v0, p0, Lrx/subjects/ReplaySubject$BoundedState;->list:Lrx/subjects/ReplaySubject$NodeList;

    iget-object v0, v0, Lrx/subjects/ReplaySubject$NodeList;->tail:Lrx/subjects/ReplaySubject$NodeList$Node;

    iput-object v0, p0, Lrx/subjects/ReplaySubject$BoundedState;->tail:Lrx/subjects/ReplaySubject$NodeList$Node;

    .line 618
    :cond_0
    return-void
.end method

.method public error(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 621
    .local p0, "this":Lrx/subjects/ReplaySubject$BoundedState;, "Lrx/subjects/ReplaySubject$BoundedState<TT;>;"
    iget-boolean v0, p0, Lrx/subjects/ReplaySubject$BoundedState;->terminated:Z

    if-nez v0, :cond_0

    .line 622
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/subjects/ReplaySubject$BoundedState;->terminated:Z

    .line 623
    iget-object v0, p0, Lrx/subjects/ReplaySubject$BoundedState;->list:Lrx/subjects/ReplaySubject$NodeList;

    iget-object v1, p0, Lrx/subjects/ReplaySubject$BoundedState;->enterTransform:Lrx/functions/Func1;

    iget-object v2, p0, Lrx/subjects/ReplaySubject$BoundedState;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v2, p1}, Lrx/internal/operators/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/subjects/ReplaySubject$NodeList;->addLast(Ljava/lang/Object;)V

    .line 625
    iget-object v0, p0, Lrx/subjects/ReplaySubject$BoundedState;->evictionPolicy:Lrx/subjects/ReplaySubject$EvictionPolicy;

    iget-object v1, p0, Lrx/subjects/ReplaySubject$BoundedState;->list:Lrx/subjects/ReplaySubject$NodeList;

    invoke-interface {v0, v1}, Lrx/subjects/ReplaySubject$EvictionPolicy;->evictFinal(Lrx/subjects/ReplaySubject$NodeList;)V

    .line 626
    iget-object v0, p0, Lrx/subjects/ReplaySubject$BoundedState;->list:Lrx/subjects/ReplaySubject$NodeList;

    iget-object v0, v0, Lrx/subjects/ReplaySubject$NodeList;->tail:Lrx/subjects/ReplaySubject$NodeList$Node;

    iput-object v0, p0, Lrx/subjects/ReplaySubject$BoundedState;->tail:Lrx/subjects/ReplaySubject$NodeList$Node;

    .line 628
    :cond_0
    return-void
.end method

.method public head()Lrx/subjects/ReplaySubject$NodeList$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/subjects/ReplaySubject$NodeList$Node",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 645
    .local p0, "this":Lrx/subjects/ReplaySubject$BoundedState;, "Lrx/subjects/ReplaySubject$BoundedState<TT;>;"
    iget-object v0, p0, Lrx/subjects/ReplaySubject$BoundedState;->list:Lrx/subjects/ReplaySubject$NodeList;

    iget-object v0, v0, Lrx/subjects/ReplaySubject$NodeList;->head:Lrx/subjects/ReplaySubject$NodeList$Node;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 6

    .prologue
    .local p0, "this":Lrx/subjects/ReplaySubject$BoundedState;, "Lrx/subjects/ReplaySubject$BoundedState<TT;>;"
    const/4 v3, 0x1

    .line 709
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$BoundedState;->head()Lrx/subjects/ReplaySubject$NodeList$Node;

    move-result-object v0

    .line 710
    .local v0, "l":Lrx/subjects/ReplaySubject$NodeList$Node;, "Lrx/subjects/ReplaySubject$NodeList$Node<Ljava/lang/Object;>;"
    iget-object v1, v0, Lrx/subjects/ReplaySubject$NodeList$Node;->next:Lrx/subjects/ReplaySubject$NodeList$Node;

    .line 711
    .local v1, "next":Lrx/subjects/ReplaySubject$NodeList$Node;, "Lrx/subjects/ReplaySubject$NodeList$Node<Ljava/lang/Object;>;"
    if-nez v1, :cond_1

    .line 715
    :cond_0
    :goto_0
    return v3

    .line 714
    :cond_1
    iget-object v4, p0, Lrx/subjects/ReplaySubject$BoundedState;->leaveTransform:Lrx/functions/Func1;

    iget-object v5, v1, Lrx/subjects/ReplaySubject$NodeList$Node;->value:Ljava/lang/Object;

    invoke-interface {v4, v5}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 715
    .local v2, "value":Ljava/lang/Object;
    iget-object v4, p0, Lrx/subjects/ReplaySubject$BoundedState;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v4, v2}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lrx/subjects/ReplaySubject$BoundedState;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v4, v2}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public latest()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/subjects/ReplaySubject$BoundedState;, "Lrx/subjects/ReplaySubject$BoundedState<TT;>;"
    const/4 v3, 0x0

    .line 738
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$BoundedState;->head()Lrx/subjects/ReplaySubject$NodeList$Node;

    move-result-object v4

    iget-object v0, v4, Lrx/subjects/ReplaySubject$NodeList$Node;->next:Lrx/subjects/ReplaySubject$NodeList$Node;

    .line 739
    .local v0, "h":Lrx/subjects/ReplaySubject$NodeList$Node;, "Lrx/subjects/ReplaySubject$NodeList$Node<Ljava/lang/Object;>;"
    if-nez v0, :cond_1

    .line 755
    :cond_0
    :goto_0
    return-object v3

    .line 742
    :cond_1
    const/4 v1, 0x0

    .line 743
    .local v1, "p":Lrx/subjects/ReplaySubject$NodeList$Node;, "Lrx/subjects/ReplaySubject$NodeList$Node<Ljava/lang/Object;>;"
    :goto_1
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$BoundedState;->tail()Lrx/subjects/ReplaySubject$NodeList$Node;

    move-result-object v4

    if-eq v0, v4, :cond_2

    .line 744
    move-object v1, v0

    .line 745
    iget-object v0, v0, Lrx/subjects/ReplaySubject$NodeList$Node;->next:Lrx/subjects/ReplaySubject$NodeList$Node;

    goto :goto_1

    .line 747
    :cond_2
    iget-object v4, p0, Lrx/subjects/ReplaySubject$BoundedState;->leaveTransform:Lrx/functions/Func1;

    iget-object v5, v0, Lrx/subjects/ReplaySubject$NodeList$Node;->value:Ljava/lang/Object;

    invoke-interface {v4, v5}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 748
    .local v2, "value":Ljava/lang/Object;
    iget-object v4, p0, Lrx/subjects/ReplaySubject$BoundedState;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v4, v2}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lrx/subjects/ReplaySubject$BoundedState;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v4, v2}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 749
    :cond_3
    if-eqz v1, :cond_0

    .line 750
    iget-object v3, p0, Lrx/subjects/ReplaySubject$BoundedState;->leaveTransform:Lrx/functions/Func1;

    iget-object v4, v1, Lrx/subjects/ReplaySubject$NodeList$Node;->value:Ljava/lang/Object;

    invoke-interface {v3, v4}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 751
    iget-object v3, p0, Lrx/subjects/ReplaySubject$BoundedState;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v3, v2}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 755
    :cond_4
    iget-object v3, p0, Lrx/subjects/ReplaySubject$BoundedState;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v3, v2}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0
.end method

.method public next(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 603
    .local p0, "this":Lrx/subjects/ReplaySubject$BoundedState;, "Lrx/subjects/ReplaySubject$BoundedState<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lrx/subjects/ReplaySubject$BoundedState;->terminated:Z

    if-nez v0, :cond_0

    .line 604
    iget-object v0, p0, Lrx/subjects/ReplaySubject$BoundedState;->list:Lrx/subjects/ReplaySubject$NodeList;

    iget-object v1, p0, Lrx/subjects/ReplaySubject$BoundedState;->enterTransform:Lrx/functions/Func1;

    iget-object v2, p0, Lrx/subjects/ReplaySubject$BoundedState;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v2, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/subjects/ReplaySubject$NodeList;->addLast(Ljava/lang/Object;)V

    .line 605
    iget-object v0, p0, Lrx/subjects/ReplaySubject$BoundedState;->evictionPolicy:Lrx/subjects/ReplaySubject$EvictionPolicy;

    iget-object v1, p0, Lrx/subjects/ReplaySubject$BoundedState;->list:Lrx/subjects/ReplaySubject$NodeList;

    invoke-interface {v0, v1}, Lrx/subjects/ReplaySubject$EvictionPolicy;->evict(Lrx/subjects/ReplaySubject$NodeList;)V

    .line 606
    iget-object v0, p0, Lrx/subjects/ReplaySubject$BoundedState;->list:Lrx/subjects/ReplaySubject$NodeList;

    iget-object v0, v0, Lrx/subjects/ReplaySubject$NodeList;->tail:Lrx/subjects/ReplaySubject$NodeList$Node;

    iput-object v0, p0, Lrx/subjects/ReplaySubject$BoundedState;->tail:Lrx/subjects/ReplaySubject$NodeList$Node;

    .line 608
    :cond_0
    return-void
.end method

.method public replayObserver(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/subjects/ReplaySubject$BoundedState;, "Lrx/subjects/ReplaySubject$BoundedState<TT;>;"
    .local p1, "observer":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<-TT;>;"
    const/4 v2, 0x0

    .line 652
    monitor-enter p1

    .line 653
    const/4 v3, 0x0

    :try_start_0
    iput-boolean v3, p1, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->first:Z

    .line 654
    iget-boolean v3, p1, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitting:Z

    if-eqz v3, :cond_0

    .line 655
    monitor-exit p1

    .line 662
    :goto_0
    return v2

    .line 657
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 659
    invoke-virtual {p1}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->index()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/subjects/ReplaySubject$NodeList$Node;

    .line 660
    .local v1, "lastEmittedLink":Lrx/subjects/ReplaySubject$NodeList$Node;, "Lrx/subjects/ReplaySubject$NodeList$Node<Ljava/lang/Object;>;"
    invoke-virtual {p0, v1, p1}, Lrx/subjects/ReplaySubject$BoundedState;->replayObserverFromIndex(Lrx/subjects/ReplaySubject$NodeList$Node;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Lrx/subjects/ReplaySubject$NodeList$Node;

    move-result-object v0

    .line 661
    .local v0, "l":Lrx/subjects/ReplaySubject$NodeList$Node;, "Lrx/subjects/ReplaySubject$NodeList$Node<Ljava/lang/Object;>;"
    invoke-virtual {p1, v0}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->index(Ljava/lang/Object;)V

    .line 662
    const/4 v2, 0x1

    goto :goto_0

    .line 657
    .end local v0    # "l":Lrx/subjects/ReplaySubject$NodeList$Node;, "Lrx/subjects/ReplaySubject$NodeList$Node<Ljava/lang/Object;>;"
    .end local v1    # "lastEmittedLink":Lrx/subjects/ReplaySubject$NodeList$Node;, "Lrx/subjects/ReplaySubject$NodeList$Node<Ljava/lang/Object;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public bridge synthetic replayObserverFromIndex(Ljava/lang/Object;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    .prologue
    .line 584
    .local p0, "this":Lrx/subjects/ReplaySubject$BoundedState;, "Lrx/subjects/ReplaySubject$BoundedState<TT;>;"
    check-cast p1, Lrx/subjects/ReplaySubject$NodeList$Node;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lrx/subjects/ReplaySubject$BoundedState;->replayObserverFromIndex(Lrx/subjects/ReplaySubject$NodeList$Node;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Lrx/subjects/ReplaySubject$NodeList$Node;

    move-result-object v0

    return-object v0
.end method

.method public replayObserverFromIndex(Lrx/subjects/ReplaySubject$NodeList$Node;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Lrx/subjects/ReplaySubject$NodeList$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/ReplaySubject$NodeList$Node",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver",
            "<-TT;>;)",
            "Lrx/subjects/ReplaySubject$NodeList$Node",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 668
    .local p0, "this":Lrx/subjects/ReplaySubject$BoundedState;, "Lrx/subjects/ReplaySubject$BoundedState<TT;>;"
    .local p1, "l":Lrx/subjects/ReplaySubject$NodeList$Node;, "Lrx/subjects/ReplaySubject$NodeList$Node<Ljava/lang/Object;>;"
    .local p2, "observer":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<-TT;>;"
    :goto_0
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$BoundedState;->tail()Lrx/subjects/ReplaySubject$NodeList$Node;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 669
    iget-object v0, p1, Lrx/subjects/ReplaySubject$NodeList$Node;->next:Lrx/subjects/ReplaySubject$NodeList$Node;

    invoke-virtual {p0, p2, v0}, Lrx/subjects/ReplaySubject$BoundedState;->accept(Lrx/Observer;Lrx/subjects/ReplaySubject$NodeList$Node;)V

    .line 670
    iget-object p1, p1, Lrx/subjects/ReplaySubject$NodeList$Node;->next:Lrx/subjects/ReplaySubject$NodeList$Node;

    goto :goto_0

    .line 672
    :cond_0
    return-object p1
.end method

.method public bridge synthetic replayObserverFromIndexTest(Ljava/lang/Object;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;J)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;
    .param p3, "x2"    # J

    .prologue
    .line 584
    .local p0, "this":Lrx/subjects/ReplaySubject$BoundedState;, "Lrx/subjects/ReplaySubject$BoundedState<TT;>;"
    check-cast p1, Lrx/subjects/ReplaySubject$NodeList$Node;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Lrx/subjects/ReplaySubject$BoundedState;->replayObserverFromIndexTest(Lrx/subjects/ReplaySubject$NodeList$Node;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;J)Lrx/subjects/ReplaySubject$NodeList$Node;

    move-result-object v0

    return-object v0
.end method

.method public replayObserverFromIndexTest(Lrx/subjects/ReplaySubject$NodeList$Node;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;J)Lrx/subjects/ReplaySubject$NodeList$Node;
    .locals 1
    .param p3, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/ReplaySubject$NodeList$Node",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver",
            "<-TT;>;J)",
            "Lrx/subjects/ReplaySubject$NodeList$Node",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 677
    .local p0, "this":Lrx/subjects/ReplaySubject$BoundedState;, "Lrx/subjects/ReplaySubject$BoundedState<TT;>;"
    .local p1, "l":Lrx/subjects/ReplaySubject$NodeList$Node;, "Lrx/subjects/ReplaySubject$NodeList$Node<Ljava/lang/Object;>;"
    .local p2, "observer":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<-TT;>;"
    :goto_0
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$BoundedState;->tail()Lrx/subjects/ReplaySubject$NodeList$Node;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 678
    iget-object v0, p1, Lrx/subjects/ReplaySubject$NodeList$Node;->next:Lrx/subjects/ReplaySubject$NodeList$Node;

    invoke-virtual {p0, p2, v0, p3, p4}, Lrx/subjects/ReplaySubject$BoundedState;->acceptTest(Lrx/Observer;Lrx/subjects/ReplaySubject$NodeList$Node;J)V

    .line 679
    iget-object p1, p1, Lrx/subjects/ReplaySubject$NodeList$Node;->next:Lrx/subjects/ReplaySubject$NodeList$Node;

    goto :goto_0

    .line 681
    :cond_0
    return-object p1
.end method

.method public size()I
    .locals 6

    .prologue
    .line 691
    .local p0, "this":Lrx/subjects/ReplaySubject$BoundedState;, "Lrx/subjects/ReplaySubject$BoundedState<TT;>;"
    const/4 v2, 0x0

    .line 692
    .local v2, "size":I
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$BoundedState;->head()Lrx/subjects/ReplaySubject$NodeList$Node;

    move-result-object v0

    .line 693
    .local v0, "l":Lrx/subjects/ReplaySubject$NodeList$Node;, "Lrx/subjects/ReplaySubject$NodeList$Node<Ljava/lang/Object;>;"
    iget-object v1, v0, Lrx/subjects/ReplaySubject$NodeList$Node;->next:Lrx/subjects/ReplaySubject$NodeList$Node;

    .line 694
    .local v1, "next":Lrx/subjects/ReplaySubject$NodeList$Node;, "Lrx/subjects/ReplaySubject$NodeList$Node<Ljava/lang/Object;>;"
    :goto_0
    if-eqz v1, :cond_0

    .line 695
    add-int/lit8 v2, v2, 0x1

    .line 696
    move-object v0, v1

    .line 697
    iget-object v1, v1, Lrx/subjects/ReplaySubject$NodeList$Node;->next:Lrx/subjects/ReplaySubject$NodeList$Node;

    goto :goto_0

    .line 699
    :cond_0
    iget-object v4, v0, Lrx/subjects/ReplaySubject$NodeList$Node;->value:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 700
    iget-object v4, p0, Lrx/subjects/ReplaySubject$BoundedState;->leaveTransform:Lrx/functions/Func1;

    iget-object v5, v0, Lrx/subjects/ReplaySubject$NodeList$Node;->value:Ljava/lang/Object;

    invoke-interface {v4, v5}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 701
    .local v3, "value":Ljava/lang/Object;
    if-eqz v3, :cond_2

    iget-object v4, p0, Lrx/subjects/ReplaySubject$BoundedState;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v4, v3}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lrx/subjects/ReplaySubject$BoundedState;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v4, v3}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 702
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 705
    .end local v2    # "size":I
    .end local v3    # "value":Ljava/lang/Object;
    :cond_2
    return v2
.end method

.method public tail()Lrx/subjects/ReplaySubject$NodeList$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/subjects/ReplaySubject$NodeList$Node",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 648
    .local p0, "this":Lrx/subjects/ReplaySubject$BoundedState;, "Lrx/subjects/ReplaySubject$BoundedState<TT;>;"
    iget-object v0, p0, Lrx/subjects/ReplaySubject$BoundedState;->tail:Lrx/subjects/ReplaySubject$NodeList$Node;

    return-object v0
.end method

.method public terminated()Z
    .locals 1

    .prologue
    .line 686
    .local p0, "this":Lrx/subjects/ReplaySubject$BoundedState;, "Lrx/subjects/ReplaySubject$BoundedState<TT;>;"
    iget-boolean v0, p0, Lrx/subjects/ReplaySubject$BoundedState;->terminated:Z

    return v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 720
    .local p0, "this":Lrx/subjects/ReplaySubject$BoundedState;, "Lrx/subjects/ReplaySubject$BoundedState<TT;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 721
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$BoundedState;->head()Lrx/subjects/ReplaySubject$NodeList$Node;

    move-result-object v0

    .line 722
    .local v0, "l":Lrx/subjects/ReplaySubject$NodeList$Node;, "Lrx/subjects/ReplaySubject$NodeList$Node<Ljava/lang/Object;>;"
    iget-object v2, v0, Lrx/subjects/ReplaySubject$NodeList$Node;->next:Lrx/subjects/ReplaySubject$NodeList$Node;

    .line 723
    .local v2, "next":Lrx/subjects/ReplaySubject$NodeList$Node;, "Lrx/subjects/ReplaySubject$NodeList$Node<Ljava/lang/Object;>;"
    :goto_0
    if-eqz v2, :cond_0

    .line 724
    iget-object v4, p0, Lrx/subjects/ReplaySubject$BoundedState;->leaveTransform:Lrx/functions/Func1;

    iget-object v5, v2, Lrx/subjects/ReplaySubject$NodeList$Node;->value:Ljava/lang/Object;

    invoke-interface {v4, v5}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 726
    .local v3, "o":Ljava/lang/Object;
    iget-object v4, v2, Lrx/subjects/ReplaySubject$NodeList$Node;->next:Lrx/subjects/ReplaySubject$NodeList$Node;

    if-nez v4, :cond_1

    iget-object v4, p0, Lrx/subjects/ReplaySubject$BoundedState;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v4, v3}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lrx/subjects/ReplaySubject$BoundedState;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v4, v3}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 734
    .end local v3    # "o":Ljava/lang/Object;
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 729
    .restart local v3    # "o":Ljava/lang/Object;
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 731
    move-object v0, v2

    .line 732
    iget-object v2, v2, Lrx/subjects/ReplaySubject$NodeList$Node;->next:Lrx/subjects/ReplaySubject$NodeList$Node;

    .line 733
    goto :goto_0
.end method
