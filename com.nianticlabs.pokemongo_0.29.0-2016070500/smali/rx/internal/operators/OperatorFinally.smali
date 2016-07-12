.class public final Lrx/internal/operators/OperatorFinally;
.super Ljava/lang/Object;
.source "OperatorFinally.java"

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
.field final action:Lrx/functions/Action0;


# direct methods
.method public constructor <init>(Lrx/functions/Action0;)V
    .locals 0
    .param p1, "action"    # Lrx/functions/Action0;

    .prologue
    .line 35
    .local p0, "this":Lrx/internal/operators/OperatorFinally;, "Lrx/internal/operators/OperatorFinally<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lrx/internal/operators/OperatorFinally;->action:Lrx/functions/Action0;

    .line 37
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    .local p0, "this":Lrx/internal/operators/OperatorFinally;, "Lrx/internal/operators/OperatorFinally<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorFinally;->call(Lrx/Subscriber;)Lrx/Subscriber;

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
    .line 41
    .local p0, "this":Lrx/internal/operators/OperatorFinally;, "Lrx/internal/operators/OperatorFinally<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorFinally$1;

    invoke-direct {v0, p0, p1, p1}, Lrx/internal/operators/OperatorFinally$1;-><init>(Lrx/internal/operators/OperatorFinally;Lrx/Subscriber;Lrx/Subscriber;)V

    return-object v0
.end method
