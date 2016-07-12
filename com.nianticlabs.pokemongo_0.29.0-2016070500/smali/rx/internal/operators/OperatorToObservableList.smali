.class public final Lrx/internal/operators/OperatorToObservableList;
.super Ljava/lang/Object;
.source "OperatorToObservableList.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorToObservableList$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<",
        "Ljava/util/List",
        "<TT;>;TT;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    .local p0, "this":Lrx/internal/operators/OperatorToObservableList;, "Lrx/internal/operators/OperatorToObservableList<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lrx/internal/operators/OperatorToObservableList$1;)V
    .locals 0
    .param p1, "x0"    # Lrx/internal/operators/OperatorToObservableList$1;

    .prologue
    .line 38
    .local p0, "this":Lrx/internal/operators/OperatorToObservableList;, "Lrx/internal/operators/OperatorToObservableList<TT;>;"
    invoke-direct {p0}, Lrx/internal/operators/OperatorToObservableList;-><init>()V

    return-void
.end method

.method public static instance()Lrx/internal/operators/OperatorToObservableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/internal/operators/OperatorToObservableList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 49
    sget-object v0, Lrx/internal/operators/OperatorToObservableList$Holder;->INSTANCE:Lrx/internal/operators/OperatorToObservableList;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 38
    .local p0, "this":Lrx/internal/operators/OperatorToObservableList;, "Lrx/internal/operators/OperatorToObservableList<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorToObservableList;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;)",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lrx/internal/operators/OperatorToObservableList;, "Lrx/internal/operators/OperatorToObservableList<TT;>;"
    .local p1, "o":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/util/List<TT;>;>;"
    new-instance v0, Lrx/internal/producers/SingleDelayedProducer;

    invoke-direct {v0, p1}, Lrx/internal/producers/SingleDelayedProducer;-><init>(Lrx/Subscriber;)V

    .line 55
    .local v0, "producer":Lrx/internal/producers/SingleDelayedProducer;, "Lrx/internal/producers/SingleDelayedProducer<Ljava/util/List<TT;>;>;"
    new-instance v1, Lrx/internal/operators/OperatorToObservableList$1;

    invoke-direct {v1, p0, v0, p1}, Lrx/internal/operators/OperatorToObservableList$1;-><init>(Lrx/internal/operators/OperatorToObservableList;Lrx/internal/producers/SingleDelayedProducer;Lrx/Subscriber;)V

    .line 109
    .local v1, "result":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 110
    invoke-virtual {p1, v0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 111
    return-object v1
.end method
