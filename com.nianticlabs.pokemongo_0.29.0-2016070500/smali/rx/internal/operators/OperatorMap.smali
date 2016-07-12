.class public final Lrx/internal/operators/OperatorMap;
.super Ljava/lang/Object;
.source "OperatorMap.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<TR;TT;>;"
    }
.end annotation


# instance fields
.field private final transformer:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TT;+TR;>;"
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
            "<-TT;+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lrx/internal/operators/OperatorMap;, "Lrx/internal/operators/OperatorMap<TT;TR;>;"
    .local p1, "transformer":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lrx/internal/operators/OperatorMap;->transformer:Lrx/functions/Func1;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lrx/internal/operators/OperatorMap;)Lrx/functions/Func1;
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorMap;

    .prologue
    .line 30
    iget-object v0, p0, Lrx/internal/operators/OperatorMap;->transformer:Lrx/functions/Func1;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    .local p0, "this":Lrx/internal/operators/OperatorMap;, "Lrx/internal/operators/OperatorMap<TT;TR;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorMap;->call(Lrx/Subscriber;)Lrx/Subscriber;

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
    .line 40
    .local p0, "this":Lrx/internal/operators/OperatorMap;, "Lrx/internal/operators/OperatorMap<TT;TR;>;"
    .local p1, "o":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    new-instance v0, Lrx/internal/operators/OperatorMap$1;

    invoke-direct {v0, p0, p1, p1}, Lrx/internal/operators/OperatorMap$1;-><init>(Lrx/internal/operators/OperatorMap;Lrx/Subscriber;Lrx/Subscriber;)V

    return-object v0
.end method
