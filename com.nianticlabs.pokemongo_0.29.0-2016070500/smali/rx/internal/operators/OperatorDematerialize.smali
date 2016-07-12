.class public final Lrx/internal/operators/OperatorDematerialize;
.super Ljava/lang/Object;
.source "OperatorDematerialize.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorDematerialize$2;,
        Lrx/internal/operators/OperatorDematerialize$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<TT;",
        "Lrx/Notification",
        "<TT;>;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    .local p0, "this":Lrx/internal/operators/OperatorDematerialize;, "Lrx/internal/operators/OperatorDematerialize<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lrx/internal/operators/OperatorDematerialize$1;)V
    .locals 0
    .param p1, "x0"    # Lrx/internal/operators/OperatorDematerialize$1;

    .prologue
    .line 32
    .local p0, "this":Lrx/internal/operators/OperatorDematerialize;, "Lrx/internal/operators/OperatorDematerialize<TT;>;"
    invoke-direct {p0}, Lrx/internal/operators/OperatorDematerialize;-><init>()V

    return-void
.end method

.method public static instance()Lrx/internal/operators/OperatorDematerialize;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lrx/internal/operators/OperatorDematerialize$Holder;->INSTANCE:Lrx/internal/operators/OperatorDematerialize;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    .local p0, "this":Lrx/internal/operators/OperatorDematerialize;, "Lrx/internal/operators/OperatorDematerialize<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorDematerialize;->call(Lrx/Subscriber;)Lrx/Subscriber;

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
            "<-",
            "Lrx/Notification",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lrx/internal/operators/OperatorDematerialize;, "Lrx/internal/operators/OperatorDematerialize<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorDematerialize$1;

    invoke-direct {v0, p0, p1, p1}, Lrx/internal/operators/OperatorDematerialize$1;-><init>(Lrx/internal/operators/OperatorDematerialize;Lrx/Subscriber;Lrx/Subscriber;)V

    return-object v0
.end method
