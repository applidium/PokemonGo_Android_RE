.class public final Lrx/internal/operators/OperatorDistinct;
.super Ljava/lang/Object;
.source "OperatorDistinct.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorDistinct$Holder;
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
    .line 50
    .local p0, "this":Lrx/internal/operators/OperatorDistinct;, "Lrx/internal/operators/OperatorDistinct<TT;TU;>;"
    .local p1, "keySelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TU;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lrx/internal/operators/OperatorDistinct;->keySelector:Lrx/functions/Func1;

    .line 52
    return-void
.end method

.method public static instance()Lrx/internal/operators/OperatorDistinct;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/internal/operators/OperatorDistinct",
            "<TT;TT;>;"
        }
    .end annotation

    .prologue
    .line 47
    sget-object v0, Lrx/internal/operators/OperatorDistinct$Holder;->INSTANCE:Lrx/internal/operators/OperatorDistinct;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    .local p0, "this":Lrx/internal/operators/OperatorDistinct;, "Lrx/internal/operators/OperatorDistinct<TT;TU;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorDistinct;->call(Lrx/Subscriber;)Lrx/Subscriber;

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
    .local p0, "this":Lrx/internal/operators/OperatorDistinct;, "Lrx/internal/operators/OperatorDistinct<TT;TU;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorDistinct$1;

    invoke-direct {v0, p0, p1, p1}, Lrx/internal/operators/OperatorDistinct$1;-><init>(Lrx/internal/operators/OperatorDistinct;Lrx/Subscriber;Lrx/Subscriber;)V

    return-object v0
.end method
