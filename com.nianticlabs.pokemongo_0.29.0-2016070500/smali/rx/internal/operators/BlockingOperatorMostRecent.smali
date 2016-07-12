.class public final Lrx/internal/operators/BlockingOperatorMostRecent;
.super Ljava/lang/Object;
.source "BlockingOperatorMostRecent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static mostRecent(Lrx/Observable;Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;TT;)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "initialValue":Ljava/lang/Object;, "TT;"
    new-instance v0, Lrx/internal/operators/BlockingOperatorMostRecent$1;

    invoke-direct {v0, p1, p0}, Lrx/internal/operators/BlockingOperatorMostRecent$1;-><init>(Ljava/lang/Object;Lrx/Observable;)V

    return-object v0
.end method
