.class public final Lrx/internal/operators/OperatorAsObservable;
.super Ljava/lang/Object;
.source "OperatorAsObservable.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorAsObservable$1;,
        Lrx/internal/operators/OperatorAsObservable$Holder;
    }
.end annotation

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


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    .local p0, "this":Lrx/internal/operators/OperatorAsObservable;, "Lrx/internal/operators/OperatorAsObservable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lrx/internal/operators/OperatorAsObservable$1;)V
    .locals 0
    .param p1, "x0"    # Lrx/internal/operators/OperatorAsObservable$1;

    .prologue
    .line 27
    .local p0, "this":Lrx/internal/operators/OperatorAsObservable;, "Lrx/internal/operators/OperatorAsObservable<TT;>;"
    invoke-direct {p0}, Lrx/internal/operators/OperatorAsObservable;-><init>()V

    return-void
.end method

.method public static instance()Lrx/internal/operators/OperatorAsObservable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/internal/operators/OperatorAsObservable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 38
    sget-object v0, Lrx/internal/operators/OperatorAsObservable$Holder;->INSTANCE:Lrx/internal/operators/OperatorAsObservable;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 27
    .local p0, "this":Lrx/internal/operators/OperatorAsObservable;, "Lrx/internal/operators/OperatorAsObservable<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorAsObservable;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 0
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
    .line 43
    .local p0, "this":Lrx/internal/operators/OperatorAsObservable;, "Lrx/internal/operators/OperatorAsObservable<TT;>;"
    .local p1, "s":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    return-object p1
.end method
