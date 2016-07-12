.class public Lrx/internal/operators/OperatorIgnoreElements;
.super Ljava/lang/Object;
.source "OperatorIgnoreElements.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorIgnoreElements$Holder;
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
    .line 32
    .local p0, "this":Lrx/internal/operators/OperatorIgnoreElements;, "Lrx/internal/operators/OperatorIgnoreElements<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method synthetic constructor <init>(Lrx/internal/operators/OperatorIgnoreElements$1;)V
    .locals 0
    .param p1, "x0"    # Lrx/internal/operators/OperatorIgnoreElements$1;

    .prologue
    .line 21
    .local p0, "this":Lrx/internal/operators/OperatorIgnoreElements;, "Lrx/internal/operators/OperatorIgnoreElements<TT;>;"
    invoke-direct {p0}, Lrx/internal/operators/OperatorIgnoreElements;-><init>()V

    return-void
.end method

.method public static instance()Lrx/internal/operators/OperatorIgnoreElements;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/internal/operators/OperatorIgnoreElements",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 29
    sget-object v0, Lrx/internal/operators/OperatorIgnoreElements$Holder;->INSTANCE:Lrx/internal/operators/OperatorIgnoreElements;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 21
    .local p0, "this":Lrx/internal/operators/OperatorIgnoreElements;, "Lrx/internal/operators/OperatorIgnoreElements<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorIgnoreElements;->call(Lrx/Subscriber;)Lrx/Subscriber;

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
    .local p0, "this":Lrx/internal/operators/OperatorIgnoreElements;, "Lrx/internal/operators/OperatorIgnoreElements<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorIgnoreElements$1;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/OperatorIgnoreElements$1;-><init>(Lrx/internal/operators/OperatorIgnoreElements;Lrx/Subscriber;)V

    .line 56
    .local v0, "parent":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 57
    return-object v0
.end method
