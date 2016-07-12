.class final Lrx/internal/operators/BlockingOperatorMostRecent$1;
.super Ljava/lang/Object;
.source "BlockingOperatorMostRecent.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/BlockingOperatorMostRecent;->mostRecent(Lrx/Observable;Ljava/lang/Object;)Ljava/lang/Iterable;
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
.field final synthetic val$initialValue:Ljava/lang/Object;

.field final synthetic val$source:Lrx/Observable;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lrx/Observable;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lrx/internal/operators/BlockingOperatorMostRecent$1;->val$initialValue:Ljava/lang/Object;

    iput-object p2, p0, Lrx/internal/operators/BlockingOperatorMostRecent$1;->val$source:Lrx/Observable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;

    iget-object v1, p0, Lrx/internal/operators/BlockingOperatorMostRecent$1;->val$initialValue:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;-><init>(Ljava/lang/Object;Lrx/internal/operators/BlockingOperatorMostRecent$1;)V

    .line 56
    .local v0, "mostRecentObserver":Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;, "Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver<TT;>;"
    iget-object v1, p0, Lrx/internal/operators/BlockingOperatorMostRecent$1;->val$source:Lrx/Observable;

    invoke-virtual {v1, v0}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 58
    invoke-virtual {v0}, Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver;->getIterable()Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method
