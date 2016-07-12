.class public Lrx/internal/operators/OperatorSkipLast;
.super Ljava/lang/Object;
.source "OperatorSkipLast.java"

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
.field private final count:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 31
    .local p0, "this":Lrx/internal/operators/OperatorSkipLast;, "Lrx/internal/operators/OperatorSkipLast<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    if-gez p1, :cond_0

    .line 33
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "count could not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_0
    iput p1, p0, Lrx/internal/operators/OperatorSkipLast;->count:I

    .line 36
    return-void
.end method

.method static synthetic access$000(Lrx/internal/operators/OperatorSkipLast;)I
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorSkipLast;

    .prologue
    .line 27
    iget v0, p0, Lrx/internal/operators/OperatorSkipLast;->count:I

    return v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 27
    .local p0, "this":Lrx/internal/operators/OperatorSkipLast;, "Lrx/internal/operators/OperatorSkipLast<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorSkipLast;->call(Lrx/Subscriber;)Lrx/Subscriber;

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
    .line 40
    .local p0, "this":Lrx/internal/operators/OperatorSkipLast;, "Lrx/internal/operators/OperatorSkipLast<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorSkipLast$1;

    invoke-direct {v0, p0, p1, p1}, Lrx/internal/operators/OperatorSkipLast$1;-><init>(Lrx/internal/operators/OperatorSkipLast;Lrx/Subscriber;Lrx/Subscriber;)V

    return-object v0
.end method
