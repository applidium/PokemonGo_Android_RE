.class public final Lrx/internal/operators/OperatorWithLatestFrom;
.super Ljava/lang/Object;
.source "OperatorWithLatestFrom.java"

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
        "<TR;TT;>;"
    }
.end annotation


# static fields
.field static final EMPTY:Ljava/lang/Object;


# instance fields
.field final other:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<+TU;>;"
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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/OperatorWithLatestFrom;->EMPTY:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lrx/Observable;Lrx/functions/Func2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+TU;>;",
            "Lrx/functions/Func2",
            "<-TT;-TU;+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lrx/internal/operators/OperatorWithLatestFrom;, "Lrx/internal/operators/OperatorWithLatestFrom<TT;TU;TR;>;"
    .local p1, "other":Lrx/Observable;, "Lrx/Observable<+TU;>;"
    .local p2, "resultSelector":Lrx/functions/Func2;, "Lrx/functions/Func2<-TT;-TU;+TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lrx/internal/operators/OperatorWithLatestFrom;->other:Lrx/Observable;

    .line 39
    iput-object p2, p0, Lrx/internal/operators/OperatorWithLatestFrom;->resultSelector:Lrx/functions/Func2;

    .line 40
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 31
    .local p0, "this":Lrx/internal/operators/OperatorWithLatestFrom;, "Lrx/internal/operators/OperatorWithLatestFrom<TT;TU;TR;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorWithLatestFrom;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;)",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lrx/internal/operators/OperatorWithLatestFrom;, "Lrx/internal/operators/OperatorWithLatestFrom<TT;TU;TR;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    new-instance v2, Lrx/observers/SerializedSubscriber;

    const/4 v1, 0x0

    invoke-direct {v2, p1, v1}, Lrx/observers/SerializedSubscriber;-><init>(Lrx/Subscriber;Z)V

    .line 45
    .local v2, "s":Lrx/observers/SerializedSubscriber;, "Lrx/observers/SerializedSubscriber<TR;>;"
    invoke-virtual {p1, v2}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 47
    new-instance v4, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lrx/internal/operators/OperatorWithLatestFrom;->EMPTY:Ljava/lang/Object;

    invoke-direct {v4, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 49
    .local v4, "current":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Object;>;"
    new-instance v0, Lrx/internal/operators/OperatorWithLatestFrom$1;

    const/4 v3, 0x1

    move-object v1, p0

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/OperatorWithLatestFrom$1;-><init>(Lrx/internal/operators/OperatorWithLatestFrom;Lrx/Subscriber;ZLjava/util/concurrent/atomic/AtomicReference;Lrx/observers/SerializedSubscriber;)V

    .line 78
    .local v0, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    new-instance v6, Lrx/internal/operators/OperatorWithLatestFrom$2;

    invoke-direct {v6, p0, v4, v2}, Lrx/internal/operators/OperatorWithLatestFrom$2;-><init>(Lrx/internal/operators/OperatorWithLatestFrom;Ljava/util/concurrent/atomic/AtomicReference;Lrx/observers/SerializedSubscriber;)V

    .line 96
    .local v6, "otherSubscriber":Lrx/Subscriber;, "Lrx/Subscriber<TU;>;"
    invoke-virtual {v2, v0}, Lrx/observers/SerializedSubscriber;->add(Lrx/Subscription;)V

    .line 97
    invoke-virtual {v2, v6}, Lrx/observers/SerializedSubscriber;->add(Lrx/Subscription;)V

    .line 99
    iget-object v1, p0, Lrx/internal/operators/OperatorWithLatestFrom;->other:Lrx/Observable;

    invoke-virtual {v1, v6}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 101
    return-object v0
.end method
