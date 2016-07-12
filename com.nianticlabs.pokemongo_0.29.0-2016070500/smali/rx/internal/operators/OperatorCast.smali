.class public Lrx/internal/operators/OperatorCast;
.super Ljava/lang/Object;
.source "OperatorCast.java"

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
.field private final castClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "this":Lrx/internal/operators/OperatorCast;, "Lrx/internal/operators/OperatorCast<TT;TR;>;"
    .local p1, "castClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lrx/internal/operators/OperatorCast;->castClass:Ljava/lang/Class;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lrx/internal/operators/OperatorCast;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorCast;

    .prologue
    .line 25
    iget-object v0, p0, Lrx/internal/operators/OperatorCast;->castClass:Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 25
    .local p0, "this":Lrx/internal/operators/OperatorCast;, "Lrx/internal/operators/OperatorCast<TT;TR;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorCast;->call(Lrx/Subscriber;)Lrx/Subscriber;

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
    .line 35
    .local p0, "this":Lrx/internal/operators/OperatorCast;, "Lrx/internal/operators/OperatorCast<TT;TR;>;"
    .local p1, "o":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    new-instance v0, Lrx/internal/operators/OperatorCast$1;

    invoke-direct {v0, p0, p1, p1}, Lrx/internal/operators/OperatorCast$1;-><init>(Lrx/internal/operators/OperatorCast;Lrx/Subscriber;Lrx/Subscriber;)V

    return-object v0
.end method
