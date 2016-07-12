.class public final Lrx/internal/operators/OperatorDistinctUntilChanged;
.super Ljava/lang/Object;
.source "OperatorDistinctUntilChanged.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorDistinctUntilChanged$Holder;
    }
.end annotation

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
.field final keySelector:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TT;+TU;>;"
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
            "<-TT;+TU;>;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lrx/internal/operators/OperatorDistinctUntilChanged;, "Lrx/internal/operators/OperatorDistinctUntilChanged<TT;TU;>;"
    .local p1, "keySelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TU;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lrx/internal/operators/OperatorDistinctUntilChanged;->keySelector:Lrx/functions/Func1;

    .line 49
    return-void
.end method

.method public static instance()Lrx/internal/operators/OperatorDistinctUntilChanged;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/internal/operators/OperatorDistinctUntilChanged",
            "<TT;TT;>;"
        }
    .end annotation

    .prologue
    .line 44
    sget-object v0, Lrx/internal/operators/OperatorDistinctUntilChanged$Holder;->INSTANCE:Lrx/internal/operators/OperatorDistinctUntilChanged;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28
    .local p0, "this":Lrx/internal/operators/OperatorDistinctUntilChanged;, "Lrx/internal/operators/OperatorDistinctUntilChanged<TT;TU;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorDistinctUntilChanged;->call(Lrx/Subscriber;)Lrx/Subscriber;

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
    .line 53
    .local p0, "this":Lrx/internal/operators/OperatorDistinctUntilChanged;, "Lrx/internal/operators/OperatorDistinctUntilChanged<TT;TU;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorDistinctUntilChanged$1;

    invoke-direct {v0, p0, p1, p1}, Lrx/internal/operators/OperatorDistinctUntilChanged$1;-><init>(Lrx/internal/operators/OperatorDistinctUntilChanged;Lrx/Subscriber;Lrx/Subscriber;)V

    return-object v0
.end method
