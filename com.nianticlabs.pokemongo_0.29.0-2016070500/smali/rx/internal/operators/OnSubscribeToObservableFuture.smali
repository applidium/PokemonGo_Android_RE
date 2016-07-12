.class public final Lrx/internal/operators/OnSubscribeToObservableFuture;
.super Ljava/lang/Object;
.source "OnSubscribeToObservableFuture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toObservableFuture(Ljava/util/concurrent/Future;)Lrx/Observable$OnSubscribe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<+TT;>;)",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "that":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<+TT;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;

    invoke-direct {v0, p0}, Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public static toObservableFuture(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Lrx/Observable$OnSubscribe;
    .locals 1
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "that":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<+TT;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;

    invoke-direct {v0, p0, p1, p2, p3}, Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture;-><init>(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method
