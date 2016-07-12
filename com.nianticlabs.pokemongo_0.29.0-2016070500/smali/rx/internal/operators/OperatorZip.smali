.class public final Lrx/internal/operators/OperatorZip;
.super Ljava/lang/Object;
.source "OperatorZip.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorZip$Zip;,
        Lrx/internal/operators/OperatorZip$ZipProducer;,
        Lrx/internal/operators/OperatorZip$ZipSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<TR;[",
        "Lrx/Observable",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final zipFunction:Lrx/functions/FuncN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/FuncN",
            "<+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/functions/Func2;)V
    .locals 1
    .param p1, "f"    # Lrx/functions/Func2;

    .prologue
    .line 71
    .local p0, "this":Lrx/internal/operators/OperatorZip;, "Lrx/internal/operators/OperatorZip<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-static {p1}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func2;)Lrx/functions/FuncN;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorZip;->zipFunction:Lrx/functions/FuncN;

    .line 73
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func3;)V
    .locals 1
    .param p1, "f"    # Lrx/functions/Func3;

    .prologue
    .line 76
    .local p0, "this":Lrx/internal/operators/OperatorZip;, "Lrx/internal/operators/OperatorZip<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-static {p1}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func3;)Lrx/functions/FuncN;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorZip;->zipFunction:Lrx/functions/FuncN;

    .line 78
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func4;)V
    .locals 1
    .param p1, "f"    # Lrx/functions/Func4;

    .prologue
    .line 81
    .local p0, "this":Lrx/internal/operators/OperatorZip;, "Lrx/internal/operators/OperatorZip<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-static {p1}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func4;)Lrx/functions/FuncN;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorZip;->zipFunction:Lrx/functions/FuncN;

    .line 83
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func5;)V
    .locals 1
    .param p1, "f"    # Lrx/functions/Func5;

    .prologue
    .line 86
    .local p0, "this":Lrx/internal/operators/OperatorZip;, "Lrx/internal/operators/OperatorZip<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-static {p1}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func5;)Lrx/functions/FuncN;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorZip;->zipFunction:Lrx/functions/FuncN;

    .line 88
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func6;)V
    .locals 1
    .param p1, "f"    # Lrx/functions/Func6;

    .prologue
    .line 91
    .local p0, "this":Lrx/internal/operators/OperatorZip;, "Lrx/internal/operators/OperatorZip<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-static {p1}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func6;)Lrx/functions/FuncN;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorZip;->zipFunction:Lrx/functions/FuncN;

    .line 93
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func7;)V
    .locals 1
    .param p1, "f"    # Lrx/functions/Func7;

    .prologue
    .line 96
    .local p0, "this":Lrx/internal/operators/OperatorZip;, "Lrx/internal/operators/OperatorZip<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-static {p1}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func7;)Lrx/functions/FuncN;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorZip;->zipFunction:Lrx/functions/FuncN;

    .line 98
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func8;)V
    .locals 1
    .param p1, "f"    # Lrx/functions/Func8;

    .prologue
    .line 101
    .local p0, "this":Lrx/internal/operators/OperatorZip;, "Lrx/internal/operators/OperatorZip<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-static {p1}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func8;)Lrx/functions/FuncN;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorZip;->zipFunction:Lrx/functions/FuncN;

    .line 103
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func9;)V
    .locals 1
    .param p1, "f"    # Lrx/functions/Func9;

    .prologue
    .line 106
    .local p0, "this":Lrx/internal/operators/OperatorZip;, "Lrx/internal/operators/OperatorZip<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    invoke-static {p1}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func9;)Lrx/functions/FuncN;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorZip;->zipFunction:Lrx/functions/FuncN;

    .line 108
    return-void
.end method

.method public constructor <init>(Lrx/functions/FuncN;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/FuncN",
            "<+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lrx/internal/operators/OperatorZip;, "Lrx/internal/operators/OperatorZip<TR;>;"
    .local p1, "f":Lrx/functions/FuncN;, "Lrx/functions/FuncN<+TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lrx/internal/operators/OperatorZip;->zipFunction:Lrx/functions/FuncN;

    .line 68
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 58
    .local p0, "this":Lrx/internal/operators/OperatorZip;, "Lrx/internal/operators/OperatorZip<TR;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorZip;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;)",
            "Lrx/Subscriber",
            "<-[",
            "Lrx/Observable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "this":Lrx/internal/operators/OperatorZip;, "Lrx/internal/operators/OperatorZip<TR;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    new-instance v2, Lrx/internal/operators/OperatorZip$Zip;

    iget-object v3, p0, Lrx/internal/operators/OperatorZip;->zipFunction:Lrx/functions/FuncN;

    invoke-direct {v2, p1, v3}, Lrx/internal/operators/OperatorZip$Zip;-><init>(Lrx/Subscriber;Lrx/functions/FuncN;)V

    .line 114
    .local v2, "zipper":Lrx/internal/operators/OperatorZip$Zip;, "Lrx/internal/operators/OperatorZip$Zip<TR;>;"
    new-instance v0, Lrx/internal/operators/OperatorZip$ZipProducer;

    invoke-direct {v0, v2}, Lrx/internal/operators/OperatorZip$ZipProducer;-><init>(Lrx/internal/operators/OperatorZip$Zip;)V

    .line 115
    .local v0, "producer":Lrx/internal/operators/OperatorZip$ZipProducer;, "Lrx/internal/operators/OperatorZip$ZipProducer<TR;>;"
    invoke-virtual {p1, v0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 116
    new-instance v1, Lrx/internal/operators/OperatorZip$ZipSubscriber;

    invoke-direct {v1, p0, p1, v2, v0}, Lrx/internal/operators/OperatorZip$ZipSubscriber;-><init>(Lrx/internal/operators/OperatorZip;Lrx/Subscriber;Lrx/internal/operators/OperatorZip$Zip;Lrx/internal/operators/OperatorZip$ZipProducer;)V

    .line 117
    .local v1, "subscriber":Lrx/internal/operators/OperatorZip$ZipSubscriber;, "Lrx/internal/operators/OperatorZip<TR;>.ZipSubscriber;"
    return-object v1
.end method
