.class public final Lrx/internal/operators/OperatorTakeUntil;
.super Ljava/lang/Object;
.source "OperatorTakeUntil.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field private final other:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<+TE;>;"
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
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lrx/internal/operators/OperatorTakeUntil;, "Lrx/internal/operators/OperatorTakeUntil<TT;TE;>;"
    .local p1, "other":Lrx/Observable;, "Lrx/Observable<+TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lrx/internal/operators/OperatorTakeUntil;->other:Lrx/Observable;

    .line 35
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 29
    .local p0, "this":Lrx/internal/operators/OperatorTakeUntil;, "Lrx/internal/operators/OperatorTakeUntil<TT;TE;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorTakeUntil;->call(Lrx/Subscriber;)Lrx/Subscriber;

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
    .local p0, "this":Lrx/internal/operators/OperatorTakeUntil;, "Lrx/internal/operators/OperatorTakeUntil<TT;TE;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    const/4 v3, 0x0

    .line 39
    new-instance v1, Lrx/observers/SerializedSubscriber;

    invoke-direct {v1, p1, v3}, Lrx/observers/SerializedSubscriber;-><init>(Lrx/Subscriber;Z)V

    .line 41
    .local v1, "serial":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorTakeUntil$1;

    invoke-direct {v0, p0, v1, v3, v1}, Lrx/internal/operators/OperatorTakeUntil$1;-><init>(Lrx/internal/operators/OperatorTakeUntil;Lrx/Subscriber;ZLrx/Subscriber;)V

    .line 64
    .local v0, "main":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    new-instance v2, Lrx/internal/operators/OperatorTakeUntil$2;

    invoke-direct {v2, p0, v0}, Lrx/internal/operators/OperatorTakeUntil$2;-><init>(Lrx/internal/operators/OperatorTakeUntil;Lrx/Subscriber;)V

    .line 87
    .local v2, "so":Lrx/Subscriber;, "Lrx/Subscriber<TE;>;"
    invoke-virtual {v1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 88
    invoke-virtual {v1, v2}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 90
    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 92
    iget-object v3, p0, Lrx/internal/operators/OperatorTakeUntil;->other:Lrx/Observable;

    invoke-virtual {v3, v2}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 94
    return-object v0
.end method
