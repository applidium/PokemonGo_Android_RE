.class public final Lrx/internal/operators/OperatorFilter;
.super Ljava/lang/Object;
.source "OperatorFilter.java"

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
.field private final predicate:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;"
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
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lrx/internal/operators/OperatorFilter;, "Lrx/internal/operators/OperatorFilter<TT;>;"
    .local p1, "predicate":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lrx/internal/operators/OperatorFilter;->predicate:Lrx/functions/Func1;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lrx/internal/operators/OperatorFilter;)Lrx/functions/Func1;
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorFilter;

    .prologue
    .line 28
    iget-object v0, p0, Lrx/internal/operators/OperatorFilter;->predicate:Lrx/functions/Func1;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28
    .local p0, "this":Lrx/internal/operators/OperatorFilter;, "Lrx/internal/operators/OperatorFilter<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorFilter;->call(Lrx/Subscriber;)Lrx/Subscriber;

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
    .line 38
    .local p0, "this":Lrx/internal/operators/OperatorFilter;, "Lrx/internal/operators/OperatorFilter<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorFilter$1;

    invoke-direct {v0, p0, p1, p1}, Lrx/internal/operators/OperatorFilter$1;-><init>(Lrx/internal/operators/OperatorFilter;Lrx/Subscriber;Lrx/Subscriber;)V

    return-object v0
.end method
