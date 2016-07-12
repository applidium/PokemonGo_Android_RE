.class public final Lrx/internal/operators/OperatorSequenceEqual;
.super Ljava/lang/Object;
.source "OperatorSequenceEqual.java"


# static fields
.field private static final LOCAL_ONCOMPLETED:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/OperatorSequenceEqual;->LOCAL_ONCOMPLETED:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lrx/internal/operators/OperatorSequenceEqual;->LOCAL_ONCOMPLETED:Ljava/lang/Object;

    return-object v0
.end method

.method static materializeLite(Lrx/Observable;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT;>;)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorSequenceEqual$1;

    invoke-direct {v0}, Lrx/internal/operators/OperatorSequenceEqual$1;-><init>()V

    invoke-virtual {p0, v0}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    sget-object v1, Lrx/internal/operators/OperatorSequenceEqual;->LOCAL_ONCOMPLETED:Ljava/lang/Object;

    invoke-static {v1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v1

    invoke-static {v0, v1}, Lrx/Observable;->concat(Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static sequenceEqual(Lrx/Observable;Lrx/Observable;Lrx/functions/Func2;)Lrx/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/functions/Func2",
            "<-TT;-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "first":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "second":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "equality":Lrx/functions/Func2;, "Lrx/functions/Func2<-TT;-TT;Ljava/lang/Boolean;>;"
    invoke-static {p0}, Lrx/internal/operators/OperatorSequenceEqual;->materializeLite(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    .line 67
    .local v0, "firstObservable":Lrx/Observable;, "Lrx/Observable<Ljava/lang/Object;>;"
    invoke-static {p1}, Lrx/internal/operators/OperatorSequenceEqual;->materializeLite(Lrx/Observable;)Lrx/Observable;

    move-result-object v1

    .line 69
    .local v1, "secondObservable":Lrx/Observable;, "Lrx/Observable<Ljava/lang/Object;>;"
    new-instance v2, Lrx/internal/operators/OperatorSequenceEqual$2;

    invoke-direct {v2, p2}, Lrx/internal/operators/OperatorSequenceEqual$2;-><init>(Lrx/functions/Func2;)V

    invoke-static {v0, v1, v2}, Lrx/Observable;->zip(Lrx/Observable;Lrx/Observable;Lrx/functions/Func2;)Lrx/Observable;

    move-result-object v2

    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/functions/Func1;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->all(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    return-object v2
.end method
