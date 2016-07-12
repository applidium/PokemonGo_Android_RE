.class public final Lrx/internal/operators/OperatorMapPair;
.super Ljava/lang/Object;
.source "OperatorMapPair.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<",
        "Lrx/Observable",
        "<+TR;>;TT;>;"
    }
.end annotation


# instance fields
.field final collectionSelector:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Observable",
            "<+TU;>;>;"
        }
    .end annotation
.end field

.field final resultSelector:Lrx/functions/Func2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func2",
            "<-TT;-TU;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/functions/Func1;Lrx/functions/Func2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Observable",
            "<+TU;>;>;",
            "Lrx/functions/Func2",
            "<-TT;-TU;+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lrx/internal/operators/OperatorMapPair;, "Lrx/internal/operators/OperatorMapPair<TT;TU;TR;>;"
    .local p1, "collectionSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Observable<+TU;>;>;"
    .local p2, "resultSelector":Lrx/functions/Func2;, "Lrx/functions/Func2<-TT;-TU;+TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lrx/internal/operators/OperatorMapPair;->collectionSelector:Lrx/functions/Func1;

    .line 60
    iput-object p2, p0, Lrx/internal/operators/OperatorMapPair;->resultSelector:Lrx/functions/Func2;

    .line 61
    return-void
.end method

.method public static convertSelector(Lrx/functions/Func1;)Lrx/functions/Func1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Ljava/lang/Iterable",
            "<+TU;>;>;)",
            "Lrx/functions/Func1",
            "<TT;",
            "Lrx/Observable",
            "<TU;>;>;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "selector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Ljava/lang/Iterable<+TU;>;>;"
    new-instance v0, Lrx/internal/operators/OperatorMapPair$1;

    invoke-direct {v0, p0}, Lrx/internal/operators/OperatorMapPair$1;-><init>(Lrx/functions/Func1;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 37
    .local p0, "this":Lrx/internal/operators/OperatorMapPair;, "Lrx/internal/operators/OperatorMapPair<TT;TU;TR;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorMapPair;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Lrx/Observable",
            "<+TR;>;>;)",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lrx/internal/operators/OperatorMapPair;, "Lrx/internal/operators/OperatorMapPair<TT;TU;TR;>;"
    .local p1, "o":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/Observable<+TR;>;>;"
    new-instance v0, Lrx/internal/operators/OperatorMapPair$2;

    invoke-direct {v0, p0, p1, p1}, Lrx/internal/operators/OperatorMapPair$2;-><init>(Lrx/internal/operators/OperatorMapPair;Lrx/Subscriber;Lrx/Subscriber;)V

    return-object v0
.end method
