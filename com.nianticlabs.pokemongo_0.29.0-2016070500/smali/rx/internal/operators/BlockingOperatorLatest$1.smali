.class final Lrx/internal/operators/BlockingOperatorLatest$1;
.super Ljava/lang/Object;
.source "BlockingOperatorLatest.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/BlockingOperatorLatest;->latest(Lrx/Observable;)Ljava/lang/Iterable;
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
.field final synthetic val$source:Lrx/Observable;


# direct methods
.method constructor <init>(Lrx/Observable;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lrx/internal/operators/BlockingOperatorLatest$1;->val$source:Lrx/Observable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;

    invoke-direct {v0}, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;-><init>()V

    .line 52
    .local v0, "lio":Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;, "Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator<TT;>;"
    iget-object v1, p0, Lrx/internal/operators/BlockingOperatorLatest$1;->val$source:Lrx/Observable;

    invoke-virtual {v1}, Lrx/Observable;->materialize()Lrx/Observable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 53
    return-object v0
.end method
