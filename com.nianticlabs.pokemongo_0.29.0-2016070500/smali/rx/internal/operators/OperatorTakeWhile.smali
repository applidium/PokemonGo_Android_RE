.class public final Lrx/internal/operators/OperatorTakeWhile;
.super Ljava/lang/Object;
.source "OperatorTakeWhile.java"

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
            "<-TT;-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/functions/Func1;)V
    .locals 1
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
    .line 36
    .local p0, "this":Lrx/internal/operators/OperatorTakeWhile;, "Lrx/internal/operators/OperatorTakeWhile<TT;>;"
    .local p1, "underlying":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    new-instance v0, Lrx/internal/operators/OperatorTakeWhile$1;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorTakeWhile$1;-><init>(Lrx/functions/Func1;)V

    invoke-direct {p0, v0}, Lrx/internal/operators/OperatorTakeWhile;-><init>(Lrx/functions/Func2;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func2",
            "<-TT;-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lrx/internal/operators/OperatorTakeWhile;, "Lrx/internal/operators/OperatorTakeWhile<TT;>;"
    .local p1, "predicate":Lrx/functions/Func2;, "Lrx/functions/Func2<-TT;-Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lrx/internal/operators/OperatorTakeWhile;->predicate:Lrx/functions/Func2;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lrx/internal/operators/OperatorTakeWhile;)Lrx/functions/Func2;
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorTakeWhile;

    .prologue
    .line 31
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeWhile;->predicate:Lrx/functions/Func2;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 31
    .local p0, "this":Lrx/internal/operators/OperatorTakeWhile;, "Lrx/internal/operators/OperatorTakeWhile<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorTakeWhile;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 2
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
    .line 50
    .local p0, "this":Lrx/internal/operators/OperatorTakeWhile;, "Lrx/internal/operators/OperatorTakeWhile<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorTakeWhile$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, p1}, Lrx/internal/operators/OperatorTakeWhile$2;-><init>(Lrx/internal/operators/OperatorTakeWhile;Lrx/Subscriber;ZLrx/Subscriber;)V

    .line 92
    .local v0, "s":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 93
    return-object v0
.end method
