.class final Lrx/subjects/ReplaySubject$PairEvictionPolicy;
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
    name = "PairEvictionPolicy"
.end annotation


# instance fields
.field final first:Lrx/subjects/ReplaySubject$EvictionPolicy;

.field final second:Lrx/subjects/ReplaySubject$EvictionPolicy;


# direct methods
.method public constructor <init>(Lrx/subjects/ReplaySubject$EvictionPolicy;Lrx/subjects/ReplaySubject$EvictionPolicy;)V
    .locals 0
    .param p1, "first"    # Lrx/subjects/ReplaySubject$EvictionPolicy;
    .param p2, "second"    # Lrx/subjects/ReplaySubject$EvictionPolicy;

    .prologue
    .line 940
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 941
    iput-object p1, p0, Lrx/subjects/ReplaySubject$PairEvictionPolicy;->first:Lrx/subjects/ReplaySubject$EvictionPolicy;

    .line 942
    iput-object p2, p0, Lrx/subjects/ReplaySubject$PairEvictionPolicy;->second:Lrx/subjects/ReplaySubject$EvictionPolicy;

    .line 943
    return-void
.end method


# virtual methods
.method public evict(Lrx/subjects/ReplaySubject$NodeList;)V
    .locals 1
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
    .line 947
    .local p1, "t1":Lrx/subjects/ReplaySubject$NodeList;, "Lrx/subjects/ReplaySubject$NodeList<Ljava/lang/Object;>;"
    iget-object v0, p0, Lrx/subjects/ReplaySubject$PairEvictionPolicy;->first:Lrx/subjects/ReplaySubject$EvictionPolicy;

    invoke-interface {v0, p1}, Lrx/subjects/ReplaySubject$EvictionPolicy;->evict(Lrx/subjects/ReplaySubject$NodeList;)V

    .line 948
    iget-object v0, p0, Lrx/subjects/ReplaySubject$PairEvictionPolicy;->second:Lrx/subjects/ReplaySubject$EvictionPolicy;

    invoke-interface {v0, p1}, Lrx/subjects/ReplaySubject$EvictionPolicy;->evict(Lrx/subjects/ReplaySubject$NodeList;)V

    .line 949
    return-void
.end method

.method public evictFinal(Lrx/subjects/ReplaySubject$NodeList;)V
    .locals 1
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
    .line 953
    .local p1, "t1":Lrx/subjects/ReplaySubject$NodeList;, "Lrx/subjects/ReplaySubject$NodeList<Ljava/lang/Object;>;"
    iget-object v0, p0, Lrx/subjects/ReplaySubject$PairEvictionPolicy;->first:Lrx/subjects/ReplaySubject$EvictionPolicy;

    invoke-interface {v0, p1}, Lrx/subjects/ReplaySubject$EvictionPolicy;->evictFinal(Lrx/subjects/ReplaySubject$NodeList;)V

    .line 954
    iget-object v0, p0, Lrx/subjects/ReplaySubject$PairEvictionPolicy;->second:Lrx/subjects/ReplaySubject$EvictionPolicy;

    invoke-interface {v0, p1}, Lrx/subjects/ReplaySubject$EvictionPolicy;->evictFinal(Lrx/subjects/ReplaySubject$NodeList;)V

    .line 955
    return-void
.end method

.method public test(Ljava/lang/Object;J)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "now"    # J

    .prologue
    .line 959
    iget-object v0, p0, Lrx/subjects/ReplaySubject$PairEvictionPolicy;->first:Lrx/subjects/ReplaySubject$EvictionPolicy;

    invoke-interface {v0, p1, p2, p3}, Lrx/subjects/ReplaySubject$EvictionPolicy;->test(Ljava/lang/Object;J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lrx/subjects/ReplaySubject$PairEvictionPolicy;->second:Lrx/subjects/ReplaySubject$EvictionPolicy;

    invoke-interface {v0, p1, p2, p3}, Lrx/subjects/ReplaySubject$EvictionPolicy;->test(Ljava/lang/Object;J)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
