.class interface abstract Lrx/subjects/ReplaySubject$ReplayState;
.super Ljava/lang/Object;
.source "ReplaySubject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subjects/ReplaySubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ReplayState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "I:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract complete()V
.end method

.method public abstract error(Ljava/lang/Throwable;)V
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract latest()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract next(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract replayObserver(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver",
            "<-TT;>;)Z"
        }
    .end annotation
.end method

.method public abstract replayObserverFromIndex(Ljava/lang/Object;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver",
            "<-TT;>;)TI;"
        }
    .end annotation
.end method

.method public abstract replayObserverFromIndexTest(Ljava/lang/Object;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;J)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver",
            "<-TT;>;J)TI;"
        }
    .end annotation
.end method

.method public abstract size()I
.end method

.method public abstract terminated()Z
.end method

.method public abstract toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation
.end method
