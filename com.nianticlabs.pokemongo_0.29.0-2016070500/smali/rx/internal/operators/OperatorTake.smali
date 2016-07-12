.class public final Lrx/internal/operators/OperatorTake;
.super Ljava/lang/Object;
.source "OperatorTake.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
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
.field final limit:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "limit"    # I

    .prologue
    .line 38
    .local p0, "this":Lrx/internal/operators/OperatorTake;, "Lrx/internal/operators/OperatorTake<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lrx/internal/operators/OperatorTake;->limit:I

    .line 40
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 34
    .local p0, "this":Lrx/internal/operators/OperatorTake;, "Lrx/internal/operators/OperatorTake<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorTake;->call(Lrx/Subscriber;)Lrx/Subscriber;

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
    .line 44
    .local p0, "this":Lrx/internal/operators/OperatorTake;, "Lrx/internal/operators/OperatorTake<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorTake$1;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/OperatorTake$1;-><init>(Lrx/internal/operators/OperatorTake;Lrx/Subscriber;)V

    .line 109
    .local v0, "parent":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    iget v1, p0, Lrx/internal/operators/OperatorTake;->limit:I

    if-nez v1, :cond_0

    .line 110
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    .line 111
    invoke-virtual {v0}, Lrx/Subscriber;->unsubscribe()V

    .line 123
    :cond_0
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 125
    return-object v0
.end method
