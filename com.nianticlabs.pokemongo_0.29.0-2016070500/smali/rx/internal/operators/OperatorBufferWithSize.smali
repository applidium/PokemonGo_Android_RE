.class public final Lrx/internal/operators/OperatorBufferWithSize;
.super Ljava/lang/Object;
.source "OperatorBufferWithSize.java"

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
        "<",
        "Ljava/util/List",
        "<TT;>;TT;>;"
    }
.end annotation


# instance fields
.field final count:I

.field final skip:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "count"    # I
    .param p2, "skip"    # I

    .prologue
    .line 55
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize;, "Lrx/internal/operators/OperatorBufferWithSize<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    if-gtz p1, :cond_0

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "count must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    if-gtz p2, :cond_1

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "skip must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_1
    iput p1, p0, Lrx/internal/operators/OperatorBufferWithSize;->count:I

    .line 63
    iput p2, p0, Lrx/internal/operators/OperatorBufferWithSize;->skip:I

    .line 64
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 41
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize;, "Lrx/internal/operators/OperatorBufferWithSize<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorBufferWithSize;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;)",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize;, "Lrx/internal/operators/OperatorBufferWithSize<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/util/List<TT;>;>;"
    iget v0, p0, Lrx/internal/operators/OperatorBufferWithSize;->count:I

    iget v1, p0, Lrx/internal/operators/OperatorBufferWithSize;->skip:I

    if-ne v0, v1, :cond_0

    .line 69
    new-instance v0, Lrx/internal/operators/OperatorBufferWithSize$1;

    invoke-direct {v0, p0, p1, p1}, Lrx/internal/operators/OperatorBufferWithSize$1;-><init>(Lrx/internal/operators/OperatorBufferWithSize;Lrx/Subscriber;Lrx/Subscriber;)V

    .line 129
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lrx/internal/operators/OperatorBufferWithSize$2;

    invoke-direct {v0, p0, p1, p1}, Lrx/internal/operators/OperatorBufferWithSize$2;-><init>(Lrx/internal/operators/OperatorBufferWithSize;Lrx/Subscriber;Lrx/Subscriber;)V

    goto :goto_0
.end method
