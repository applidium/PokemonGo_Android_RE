.class public Lrx/internal/operators/OperatorTakeLastOne;
.super Ljava/lang/Object;
.source "OperatorTakeLastOne.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;,
        Lrx/internal/operators/OperatorTakeLastOne$Holder;
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
    .line 20
    .local p0, "this":Lrx/internal/operators/OperatorTakeLastOne;, "Lrx/internal/operators/OperatorTakeLastOne<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method synthetic constructor <init>(Lrx/internal/operators/OperatorTakeLastOne$1;)V
    .locals 0
    .param p1, "x0"    # Lrx/internal/operators/OperatorTakeLastOne$1;

    .prologue
    .line 9
    .local p0, "this":Lrx/internal/operators/OperatorTakeLastOne;, "Lrx/internal/operators/OperatorTakeLastOne<TT;>;"
    invoke-direct {p0}, Lrx/internal/operators/OperatorTakeLastOne;-><init>()V

    return-void
.end method

.method public static instance()Lrx/internal/operators/OperatorTakeLastOne;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/internal/operators/OperatorTakeLastOne",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 17
    sget-object v0, Lrx/internal/operators/OperatorTakeLastOne$Holder;->INSTANCE:Lrx/internal/operators/OperatorTakeLastOne;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 9
    .local p0, "this":Lrx/internal/operators/OperatorTakeLastOne;, "Lrx/internal/operators/OperatorTakeLastOne<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorTakeLastOne;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 2
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
    .line 26
    .local p0, "this":Lrx/internal/operators/OperatorTakeLastOne;, "Lrx/internal/operators/OperatorTakeLastOne<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;-><init>(Lrx/Subscriber;)V

    .line 27
    .local v0, "parent":Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;, "Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber<TT;>;"
    new-instance v1, Lrx/internal/operators/OperatorTakeLastOne$1;

    invoke-direct {v1, p0, v0}, Lrx/internal/operators/OperatorTakeLastOne$1;-><init>(Lrx/internal/operators/OperatorTakeLastOne;Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;)V

    invoke-virtual {p1, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 34
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 35
    return-object v0
.end method
