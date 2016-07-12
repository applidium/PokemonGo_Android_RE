.class public final Lrx/internal/operators/BlockingOperatorLatest;
.super Ljava/lang/Object;
.source "BlockingOperatorLatest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static latest(Lrx/Observable;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    new-instance v0, Lrx/internal/operators/BlockingOperatorLatest$1;

    invoke-direct {v0, p0}, Lrx/internal/operators/BlockingOperatorLatest$1;-><init>(Lrx/Observable;)V

    return-object v0
.end method
