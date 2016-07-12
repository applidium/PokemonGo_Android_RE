.class final Lrx/internal/operators/BlockingOperatorNext$1;
.super Ljava/lang/Object;
.source "BlockingOperatorNext.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/BlockingOperatorNext;->next(Lrx/Observable;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$items:Lrx/Observable;


# direct methods
.method constructor <init>(Lrx/Observable;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lrx/internal/operators/BlockingOperatorNext$1;->val$items:Lrx/Observable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 51
    new-instance v0, Lrx/internal/operators/BlockingOperatorNext$NextObserver;

    invoke-direct {v0, v3}, Lrx/internal/operators/BlockingOperatorNext$NextObserver;-><init>(Lrx/internal/operators/BlockingOperatorNext$1;)V

    .line 52
    .local v0, "nextObserver":Lrx/internal/operators/BlockingOperatorNext$NextObserver;, "Lrx/internal/operators/BlockingOperatorNext$NextObserver<TT;>;"
    new-instance v1, Lrx/internal/operators/BlockingOperatorNext$NextIterator;

    iget-object v2, p0, Lrx/internal/operators/BlockingOperatorNext$1;->val$items:Lrx/Observable;

    invoke-direct {v1, v2, v0, v3}, Lrx/internal/operators/BlockingOperatorNext$NextIterator;-><init>(Lrx/Observable;Lrx/internal/operators/BlockingOperatorNext$NextObserver;Lrx/internal/operators/BlockingOperatorNext$1;)V

    return-object v1
.end method
