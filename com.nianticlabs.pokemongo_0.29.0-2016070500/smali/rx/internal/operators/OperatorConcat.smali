.class public final Lrx/internal/operators/OperatorConcat;
.super Ljava/lang/Object;
.source "OperatorConcat.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorConcat$1;,
        Lrx/internal/operators/OperatorConcat$ConcatInnerSubscriber;,
        Lrx/internal/operators/OperatorConcat$ConcatSubscriber;,
        Lrx/internal/operators/OperatorConcat$ConcatProducer;,
        Lrx/internal/operators/OperatorConcat$Holder;
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
        "Lrx/Observable",
        "<+TT;>;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    .local p0, "this":Lrx/internal/operators/OperatorConcat;, "Lrx/internal/operators/OperatorConcat<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lrx/internal/operators/OperatorConcat$1;)V
    .locals 0
    .param p1, "x0"    # Lrx/internal/operators/OperatorConcat$1;

    .prologue
    .line 40
    .local p0, "this":Lrx/internal/operators/OperatorConcat;, "Lrx/internal/operators/OperatorConcat<TT;>;"
    invoke-direct {p0}, Lrx/internal/operators/OperatorConcat;-><init>()V

    return-void
.end method

.method public static instance()Lrx/internal/operators/OperatorConcat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/internal/operators/OperatorConcat",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 51
    sget-object v0, Lrx/internal/operators/OperatorConcat$Holder;->INSTANCE:Lrx/internal/operators/OperatorConcat;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 40
    .local p0, "this":Lrx/internal/operators/OperatorConcat;, "Lrx/internal/operators/OperatorConcat<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorConcat;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)",
            "Lrx/Subscriber",
            "<-",
            "Lrx/Observable",
            "<+TT;>;>;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lrx/internal/operators/OperatorConcat;, "Lrx/internal/operators/OperatorConcat<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v3, Lrx/observers/SerializedSubscriber;

    invoke-direct {v3, p1}, Lrx/observers/SerializedSubscriber;-><init>(Lrx/Subscriber;)V

    .line 57
    .local v3, "s":Lrx/observers/SerializedSubscriber;, "Lrx/observers/SerializedSubscriber<TT;>;"
    new-instance v2, Lrx/subscriptions/SerialSubscription;

    invoke-direct {v2}, Lrx/subscriptions/SerialSubscription;-><init>()V

    .line 58
    .local v2, "current":Lrx/subscriptions/SerialSubscription;
    invoke-virtual {p1, v2}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 59
    new-instance v1, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;

    invoke-direct {v1, v3, v2}, Lrx/internal/operators/OperatorConcat$ConcatSubscriber;-><init>(Lrx/Subscriber;Lrx/subscriptions/SerialSubscription;)V

    .line 60
    .local v1, "cs":Lrx/internal/operators/OperatorConcat$ConcatSubscriber;, "Lrx/internal/operators/OperatorConcat$ConcatSubscriber<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorConcat$ConcatProducer;

    invoke-direct {v0, v1}, Lrx/internal/operators/OperatorConcat$ConcatProducer;-><init>(Lrx/internal/operators/OperatorConcat$ConcatSubscriber;)V

    .line 61
    .local v0, "cp":Lrx/internal/operators/OperatorConcat$ConcatProducer;, "Lrx/internal/operators/OperatorConcat$ConcatProducer<TT;>;"
    invoke-virtual {p1, v0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 62
    return-object v1
.end method
