.class public final Lrx/internal/operators/OperatorSkipWhile;
.super Ljava/lang/Object;
.source "OperatorSkipWhile.java"

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
.field private final predicate:Lrx/functions/Func2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func2",
            "<-TT;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/functions/Func2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func2",
            "<-TT;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lrx/internal/operators/OperatorSkipWhile;, "Lrx/internal/operators/OperatorSkipWhile<TT;>;"
    .local p1, "predicate":Lrx/functions/Func2;, "Lrx/functions/Func2<-TT;Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lrx/internal/operators/OperatorSkipWhile;->predicate:Lrx/functions/Func2;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lrx/internal/operators/OperatorSkipWhile;)Lrx/functions/Func2;
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorSkipWhile;

    .prologue
    .line 27
    iget-object v0, p0, Lrx/internal/operators/OperatorSkipWhile;->predicate:Lrx/functions/Func2;

    return-object v0
.end method

.method public static toPredicate2(Lrx/functions/Func1;)Lrx/functions/Func2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/functions/Func2",
            "<TT;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "predicate":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    new-instance v0, Lrx/internal/operators/OperatorSkipWhile$2;

    invoke-direct {v0, p0}, Lrx/internal/operators/OperatorSkipWhile$2;-><init>(Lrx/functions/Func1;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 27
    .local p0, "this":Lrx/internal/operators/OperatorSkipWhile;, "Lrx/internal/operators/OperatorSkipWhile<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorSkipWhile;->call(Lrx/Subscriber;)Lrx/Subscriber;

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
    .line 35
    .local p0, "this":Lrx/internal/operators/OperatorSkipWhile;, "Lrx/internal/operators/OperatorSkipWhile<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorSkipWhile$1;

    invoke-direct {v0, p0, p1, p1}, Lrx/internal/operators/OperatorSkipWhile$1;-><init>(Lrx/internal/operators/OperatorSkipWhile;Lrx/Subscriber;Lrx/Subscriber;)V

    return-object v0
.end method
