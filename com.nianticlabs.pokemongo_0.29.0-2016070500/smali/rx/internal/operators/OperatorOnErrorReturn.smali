.class public final Lrx/internal/operators/OperatorOnErrorReturn;
.super Ljava/lang/Object;
.source "OperatorOnErrorReturn.java"

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
.field final resultFunction:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<",
            "Ljava/lang/Throwable;",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/functions/Func1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<",
            "Ljava/lang/Throwable;",
            "+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorReturn;, "Lrx/internal/operators/OperatorOnErrorReturn<TT;>;"
    .local p1, "resultFunction":Lrx/functions/Func1;, "Lrx/functions/Func1<Ljava/lang/Throwable;+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lrx/internal/operators/OperatorOnErrorReturn;->resultFunction:Lrx/functions/Func1;

    .line 52
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 47
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorReturn;, "Lrx/internal/operators/OperatorOnErrorReturn<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorOnErrorReturn;->call(Lrx/Subscriber;)Lrx/Subscriber;

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
    .line 56
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorReturn;, "Lrx/internal/operators/OperatorOnErrorReturn<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorOnErrorReturn$1;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/OperatorOnErrorReturn$1;-><init>(Lrx/internal/operators/OperatorOnErrorReturn;Lrx/Subscriber;)V

    .line 107
    .local v0, "parent":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 108
    return-object v0
.end method
