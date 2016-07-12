.class public final Lrx/internal/operators/OperatorZipIterable;
.super Ljava/lang/Object;
.source "OperatorZipIterable.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<TR;TT1;>;"
    }
.end annotation


# instance fields
.field final iterable:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<+TT2;>;"
        }
    .end annotation
.end field

.field final zipFunction:Lrx/functions/Func2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func2",
            "<-TT1;-TT2;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Lrx/functions/Func2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TT2;>;",
            "Lrx/functions/Func2",
            "<-TT1;-TT2;+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lrx/internal/operators/OperatorZipIterable;, "Lrx/internal/operators/OperatorZipIterable<TT1;TT2;TR;>;"
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT2;>;"
    .local p2, "zipFunction":Lrx/functions/Func2;, "Lrx/functions/Func2<-TT1;-TT2;+TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lrx/internal/operators/OperatorZipIterable;->iterable:Ljava/lang/Iterable;

    .line 32
    iput-object p2, p0, Lrx/internal/operators/OperatorZipIterable;->zipFunction:Lrx/functions/Func2;

    .line 33
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 25
    .local p0, "this":Lrx/internal/operators/OperatorZipIterable;, "Lrx/internal/operators/OperatorZipIterable<TT1;TT2;TR;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorZipIterable;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;)",
            "Lrx/Subscriber",
            "<-TT1;>;"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lrx/internal/operators/OperatorZipIterable;, "Lrx/internal/operators/OperatorZipIterable<TT1;TT2;TR;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    iget-object v2, p0, Lrx/internal/operators/OperatorZipIterable;->iterable:Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 39
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT2;>;"
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 40
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    .line 41
    invoke-static {}, Lrx/observers/Subscribers;->empty()Lrx/Subscriber;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 46
    :goto_0
    return-object v2

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 46
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    new-instance v2, Lrx/internal/operators/OperatorZipIterable$1;

    invoke-direct {v2, p0, p1, p1, v1}, Lrx/internal/operators/OperatorZipIterable$1;-><init>(Lrx/internal/operators/OperatorZipIterable;Lrx/Subscriber;Lrx/Subscriber;Ljava/util/Iterator;)V

    goto :goto_0
.end method
