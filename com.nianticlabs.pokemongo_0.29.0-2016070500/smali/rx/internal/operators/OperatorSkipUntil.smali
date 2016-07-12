.class public final Lrx/internal/operators/OperatorSkipUntil;
.super Ljava/lang/Object;
.source "OperatorSkipUntil.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final other:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<TU;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lrx/internal/operators/OperatorSkipUntil;, "Lrx/internal/operators/OperatorSkipUntil<TT;TU;>;"
    .local p1, "other":Lrx/Observable;, "Lrx/Observable<TU;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lrx/internal/operators/OperatorSkipUntil;->other:Lrx/Observable;

    .line 40
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 35
    .local p0, "this":Lrx/internal/operators/OperatorSkipUntil;, "Lrx/internal/operators/OperatorSkipUntil<TT;TU;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorSkipUntil;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 4
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
    .local p0, "this":Lrx/internal/operators/OperatorSkipUntil;, "Lrx/internal/operators/OperatorSkipUntil<TT;TU;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v1, Lrx/observers/SerializedSubscriber;

    invoke-direct {v1, p1}, Lrx/observers/SerializedSubscriber;-><init>(Lrx/Subscriber;)V

    .line 45
    .local v1, "s":Lrx/observers/SerializedSubscriber;, "Lrx/observers/SerializedSubscriber<TT;>;"
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 47
    .local v0, "gate":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v2, Lrx/internal/operators/OperatorSkipUntil$1;

    invoke-direct {v2, p0, v0, v1}, Lrx/internal/operators/OperatorSkipUntil$1;-><init>(Lrx/internal/operators/OperatorSkipUntil;Ljava/util/concurrent/atomic/AtomicBoolean;Lrx/observers/SerializedSubscriber;)V

    .line 66
    .local v2, "u":Lrx/Subscriber;, "Lrx/Subscriber<TU;>;"
    invoke-virtual {p1, v2}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 67
    iget-object v3, p0, Lrx/internal/operators/OperatorSkipUntil;->other:Lrx/Observable;

    invoke-virtual {v3, v2}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 69
    new-instance v3, Lrx/internal/operators/OperatorSkipUntil$2;

    invoke-direct {v3, p0, p1, v0, v1}, Lrx/internal/operators/OperatorSkipUntil$2;-><init>(Lrx/internal/operators/OperatorSkipUntil;Lrx/Subscriber;Ljava/util/concurrent/atomic/AtomicBoolean;Lrx/observers/SerializedSubscriber;)V

    return-object v3
.end method
