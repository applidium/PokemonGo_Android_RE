.class interface abstract Lrx/subjects/ReplaySubject$EvictionPolicy;
.super Ljava/lang/Object;
.source "ReplaySubject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subjects/ReplaySubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "EvictionPolicy"
.end annotation


# virtual methods
.method public abstract evict(Lrx/subjects/ReplaySubject$NodeList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/ReplaySubject$NodeList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract evictFinal(Lrx/subjects/ReplaySubject$NodeList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/ReplaySubject$NodeList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract test(Ljava/lang/Object;J)Z
.end method
