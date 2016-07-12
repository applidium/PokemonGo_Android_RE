.class final Lrx/subjects/ReplaySubject$DefaultOnAdd;
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
    name = "DefaultOnAdd"
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
.field final state:Lrx/subjects/ReplaySubject$BoundedState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/ReplaySubject$BoundedState",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/subjects/ReplaySubject$BoundedState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/ReplaySubject$BoundedState",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 991
    .local p0, "this":Lrx/subjects/ReplaySubject$DefaultOnAdd;, "Lrx/subjects/ReplaySubject$DefaultOnAdd<TT;>;"
    .local p1, "state":Lrx/subjects/ReplaySubject$BoundedState;, "Lrx/subjects/ReplaySubject$BoundedState<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 992
    iput-object p1, p0, Lrx/subjects/ReplaySubject$DefaultOnAdd;->state:Lrx/subjects/ReplaySubject$BoundedState;

    .line 993
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 988
    .local p0, "this":Lrx/subjects/ReplaySubject$DefaultOnAdd;, "Lrx/subjects/ReplaySubject$DefaultOnAdd<TT;>;"
    check-cast p1, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/subjects/ReplaySubject$DefaultOnAdd;->call(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)V

    return-void
.end method

.method public call(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 997
    .local p0, "this":Lrx/subjects/ReplaySubject$DefaultOnAdd;, "Lrx/subjects/ReplaySubject$DefaultOnAdd<TT;>;"
    .local p1, "t1":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    iget-object v1, p0, Lrx/subjects/ReplaySubject$DefaultOnAdd;->state:Lrx/subjects/ReplaySubject$BoundedState;

    iget-object v2, p0, Lrx/subjects/ReplaySubject$DefaultOnAdd;->state:Lrx/subjects/ReplaySubject$BoundedState;

    invoke-virtual {v2}, Lrx/subjects/ReplaySubject$BoundedState;->head()Lrx/subjects/ReplaySubject$NodeList$Node;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lrx/subjects/ReplaySubject$BoundedState;->replayObserverFromIndex(Lrx/subjects/ReplaySubject$NodeList$Node;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Lrx/subjects/ReplaySubject$NodeList$Node;

    move-result-object v0

    .line 998
    .local v0, "l":Lrx/subjects/ReplaySubject$NodeList$Node;, "Lrx/subjects/ReplaySubject$NodeList$Node<Ljava/lang/Object;>;"
    invoke-virtual {p1, v0}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->index(Ljava/lang/Object;)V

    .line 999
    return-void
.end method
