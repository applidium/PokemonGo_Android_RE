.class public final Lrx/internal/operators/OperatorScan;
.super Ljava/lang/Object;
.source "OperatorScan.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<TR;TT;>;"
    }
.end annotation


# static fields
.field private static final NO_INITIAL_VALUE:Ljava/lang/Object;


# instance fields
.field private final accumulator:Lrx/functions/Func2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func2",
            "<TR;-TT;TR;>;"
        }
    .end annotation
.end field

.field private final initialValueFactory:Lrx/functions/Func0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func0",
            "<TR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/OperatorScan;->NO_INITIAL_VALUE:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lrx/functions/Func2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lrx/functions/Func2",
            "<TR;-TT;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lrx/internal/operators/OperatorScan;, "Lrx/internal/operators/OperatorScan<TR;TT;>;"
    .local p1, "initialValue":Ljava/lang/Object;, "TR;"
    .local p2, "accumulator":Lrx/functions/Func2;, "Lrx/functions/Func2<TR;-TT;TR;>;"
    new-instance v0, Lrx/internal/operators/OperatorScan$1;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorScan$1;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0, p2}, Lrx/internal/operators/OperatorScan;-><init>(Lrx/functions/Func0;Lrx/functions/Func2;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func0;Lrx/functions/Func2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func0",
            "<TR;>;",
            "Lrx/functions/Func2",
            "<TR;-TT;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lrx/internal/operators/OperatorScan;, "Lrx/internal/operators/OperatorScan<TR;TT;>;"
    .local p1, "initialValueFactory":Lrx/functions/Func0;, "Lrx/functions/Func0<TR;>;"
    .local p2, "accumulator":Lrx/functions/Func2;, "Lrx/functions/Func2<TR;-TT;TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lrx/internal/operators/OperatorScan;->initialValueFactory:Lrx/functions/Func0;

    .line 72
    iput-object p2, p0, Lrx/internal/operators/OperatorScan;->accumulator:Lrx/functions/Func2;

    .line 73
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func2",
            "<TR;-TT;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lrx/internal/operators/OperatorScan;, "Lrx/internal/operators/OperatorScan<TR;TT;>;"
    .local p1, "accumulator":Lrx/functions/Func2;, "Lrx/functions/Func2<TR;-TT;TR;>;"
    sget-object v0, Lrx/internal/operators/OperatorScan;->NO_INITIAL_VALUE:Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lrx/internal/operators/OperatorScan;-><init>(Ljava/lang/Object;Lrx/functions/Func2;)V

    .line 86
    return-void
.end method

.method static synthetic access$000(Lrx/internal/operators/OperatorScan;)Lrx/functions/Func0;
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorScan;

    .prologue
    .line 41
    iget-object v0, p0, Lrx/internal/operators/OperatorScan;->initialValueFactory:Lrx/functions/Func0;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lrx/internal/operators/OperatorScan;->NO_INITIAL_VALUE:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lrx/internal/operators/OperatorScan;)Lrx/functions/Func2;
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorScan;

    .prologue
    .line 41
    iget-object v0, p0, Lrx/internal/operators/OperatorScan;->accumulator:Lrx/functions/Func2;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 41
    .local p0, "this":Lrx/internal/operators/OperatorScan;, "Lrx/internal/operators/OperatorScan<TR;TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorScan;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;)",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lrx/internal/operators/OperatorScan;, "Lrx/internal/operators/OperatorScan<TR;TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    new-instance v0, Lrx/internal/operators/OperatorScan$2;

    invoke-direct {v0, p0, p1, p1}, Lrx/internal/operators/OperatorScan$2;-><init>(Lrx/internal/operators/OperatorScan;Lrx/Subscriber;Lrx/Subscriber;)V

    return-object v0
.end method
