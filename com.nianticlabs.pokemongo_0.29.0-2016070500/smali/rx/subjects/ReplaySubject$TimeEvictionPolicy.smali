.class final Lrx/subjects/ReplaySubject$TimeEvictionPolicy;
.super Ljava/lang/Object;
.source "ReplaySubject.java"

# interfaces
.implements Lrx/subjects/ReplaySubject$EvictionPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subjects/ReplaySubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TimeEvictionPolicy"
.end annotation


# instance fields
.field final maxAgeMillis:J

.field final scheduler:Lrx/Scheduler;


# direct methods
.method public constructor <init>(JLrx/Scheduler;)V
    .locals 1
    .param p1, "maxAgeMillis"    # J
    .param p3, "scheduler"    # Lrx/Scheduler;

    .prologue
    .line 895
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 896
    iput-wide p1, p0, Lrx/subjects/ReplaySubject$TimeEvictionPolicy;->maxAgeMillis:J

    .line 897
    iput-object p3, p0, Lrx/subjects/ReplaySubject$TimeEvictionPolicy;->scheduler:Lrx/Scheduler;

    .line 898
    return-void
.end method


# virtual methods
.method public evict(Lrx/subjects/ReplaySubject$NodeList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/ReplaySubject$NodeList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 902
    .local p1, "t1":Lrx/subjects/ReplaySubject$NodeList;, "Lrx/subjects/ReplaySubject$NodeList<Ljava/lang/Object;>;"
    iget-object v1, p0, Lrx/subjects/ReplaySubject$TimeEvictionPolicy;->scheduler:Lrx/Scheduler;

    invoke-virtual {v1}, Lrx/Scheduler;->now()J

    move-result-wide v2

    .line 903
    .local v2, "now":J
    :goto_0
    invoke-virtual {p1}, Lrx/subjects/ReplaySubject$NodeList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 904
    iget-object v1, p1, Lrx/subjects/ReplaySubject$NodeList;->head:Lrx/subjects/ReplaySubject$NodeList$Node;

    iget-object v0, v1, Lrx/subjects/ReplaySubject$NodeList$Node;->next:Lrx/subjects/ReplaySubject$NodeList$Node;

    .line 905
    .local v0, "n":Lrx/subjects/ReplaySubject$NodeList$Node;, "Lrx/subjects/ReplaySubject$NodeList$Node<Ljava/lang/Object;>;"
    iget-object v1, v0, Lrx/subjects/ReplaySubject$NodeList$Node;->value:Ljava/lang/Object;

    invoke-virtual {p0, v1, v2, v3}, Lrx/subjects/ReplaySubject$TimeEvictionPolicy;->test(Ljava/lang/Object;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 906
    invoke-virtual {p1}, Lrx/subjects/ReplaySubject$NodeList;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 911
    .end local v0    # "n":Lrx/subjects/ReplaySubject$NodeList$Node;, "Lrx/subjects/ReplaySubject$NodeList$Node<Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method public evictFinal(Lrx/subjects/ReplaySubject$NodeList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/ReplaySubject$NodeList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 915
    .local p1, "t1":Lrx/subjects/ReplaySubject$NodeList;, "Lrx/subjects/ReplaySubject$NodeList<Ljava/lang/Object;>;"
    iget-object v1, p0, Lrx/subjects/ReplaySubject$TimeEvictionPolicy;->scheduler:Lrx/Scheduler;

    invoke-virtual {v1}, Lrx/Scheduler;->now()J

    move-result-wide v2

    .line 916
    .local v2, "now":J
    :goto_0
    iget v1, p1, Lrx/subjects/ReplaySubject$NodeList;->size:I

    const/4 v4, 0x1

    if-le v1, v4, :cond_0

    .line 917
    iget-object v1, p1, Lrx/subjects/ReplaySubject$NodeList;->head:Lrx/subjects/ReplaySubject$NodeList$Node;

    iget-object v0, v1, Lrx/subjects/ReplaySubject$NodeList$Node;->next:Lrx/subjects/ReplaySubject$NodeList$Node;

    .line 918
    .local v0, "n":Lrx/subjects/ReplaySubject$NodeList$Node;, "Lrx/subjects/ReplaySubject$NodeList$Node<Ljava/lang/Object;>;"
    iget-object v1, v0, Lrx/subjects/ReplaySubject$NodeList$Node;->value:Ljava/lang/Object;

    invoke-virtual {p0, v1, v2, v3}, Lrx/subjects/ReplaySubject$TimeEvictionPolicy;->test(Ljava/lang/Object;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 919
    invoke-virtual {p1}, Lrx/subjects/ReplaySubject$NodeList;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 924
    .end local v0    # "n":Lrx/subjects/ReplaySubject$NodeList$Node;, "Lrx/subjects/ReplaySubject$NodeList$Node<Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method public test(Ljava/lang/Object;J)Z
    .locals 6
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "now"    # J

    .prologue
    .line 928
    move-object v0, p1

    check-cast v0, Lrx/schedulers/Timestamped;

    .line 929
    .local v0, "ts":Lrx/schedulers/Timestamped;, "Lrx/schedulers/Timestamped<*>;"
    invoke-virtual {v0}, Lrx/schedulers/Timestamped;->getTimestampMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lrx/subjects/ReplaySubject$TimeEvictionPolicy;->maxAgeMillis:J

    sub-long v4, p2, v4

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
