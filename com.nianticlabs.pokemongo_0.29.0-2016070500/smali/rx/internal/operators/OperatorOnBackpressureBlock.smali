.class public Lrx/internal/operators/OperatorOnBackpressureBlock;
.super Ljava/lang/Object;
.source "OperatorOnBackpressureBlock.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final max:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 31
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBlock;, "Lrx/internal/operators/OperatorOnBackpressureBlock<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lrx/internal/operators/OperatorOnBackpressureBlock;->max:I

    .line 33
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 29
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBlock;, "Lrx/internal/operators/OperatorOnBackpressureBlock<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorOnBackpressureBlock;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBlock;, "Lrx/internal/operators/OperatorOnBackpressureBlock<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;

    iget v1, p0, Lrx/internal/operators/OperatorOnBackpressureBlock;->max:I

    invoke-direct {v0, v1, p1}, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;-><init>(ILrx/Subscriber;)V

    .line 37
    .local v0, "s":Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;, "Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber<TT;>;"
    invoke-virtual {v0}, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->init()V

    .line 38
    return-object v0
.end method
