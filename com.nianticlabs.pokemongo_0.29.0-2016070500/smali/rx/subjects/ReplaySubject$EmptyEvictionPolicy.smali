.class final Lrx/subjects/ReplaySubject$EmptyEvictionPolicy;
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
    name = "EmptyEvictionPolicy"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1085
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evict(Lrx/subjects/ReplaySubject$NodeList;)V
    .locals 0
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
    .line 1092
    .local p1, "list":Lrx/subjects/ReplaySubject$NodeList;, "Lrx/subjects/ReplaySubject$NodeList<Ljava/lang/Object;>;"
    return-void
.end method

.method public evictFinal(Lrx/subjects/ReplaySubject$NodeList;)V
    .locals 0
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
    .line 1095
    .local p1, "list":Lrx/subjects/ReplaySubject$NodeList;, "Lrx/subjects/ReplaySubject$NodeList<Ljava/lang/Object;>;"
    return-void
.end method

.method public test(Ljava/lang/Object;J)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "now"    # J

    .prologue
    .line 1088
    const/4 v0, 0x1

    return v0
.end method
