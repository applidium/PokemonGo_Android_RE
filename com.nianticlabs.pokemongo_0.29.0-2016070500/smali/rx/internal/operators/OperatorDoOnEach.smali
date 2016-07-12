.class public Lrx/internal/operators/OperatorDoOnEach;
.super Ljava/lang/Object;
.source "OperatorDoOnEach.java"

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
.field private final doOnEachObserver:Lrx/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observer",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observer",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lrx/internal/operators/OperatorDoOnEach;, "Lrx/internal/operators/OperatorDoOnEach<TT;>;"
    .local p1, "doOnEachObserver":Lrx/Observer;, "Lrx/Observer<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lrx/internal/operators/OperatorDoOnEach;->doOnEachObserver:Lrx/Observer;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lrx/internal/operators/OperatorDoOnEach;)Lrx/Observer;
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorDoOnEach;

    .prologue
    .line 27
    iget-object v0, p0, Lrx/internal/operators/OperatorDoOnEach;->doOnEachObserver:Lrx/Observer;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 27
    .local p0, "this":Lrx/internal/operators/OperatorDoOnEach;, "Lrx/internal/operators/OperatorDoOnEach<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorDoOnEach;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 1
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
    .line 36
    .local p0, "this":Lrx/internal/operators/OperatorDoOnEach;, "Lrx/internal/operators/OperatorDoOnEach<TT;>;"
    .local p1, "observer":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorDoOnEach$1;

    invoke-direct {v0, p0, p1, p1}, Lrx/internal/operators/OperatorDoOnEach$1;-><init>(Lrx/internal/operators/OperatorDoOnEach;Lrx/Subscriber;Lrx/Subscriber;)V

    return-object v0
.end method
