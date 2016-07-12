.class public final Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;
.super Ljava/lang/Object;
.source "OperatorOnErrorResumeNextViaFunction.java"

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
.field private final resumeFunction:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<",
            "Ljava/lang/Throwable;",
            "+",
            "Lrx/Observable",
            "<+TT;>;>;"
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
            "<",
            "Ljava/lang/Throwable;",
            "+",
            "Lrx/Observable",
            "<+TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction<TT;>;"
    .local p1, "f":Lrx/functions/Func1;, "Lrx/functions/Func1<Ljava/lang/Throwable;+Lrx/Observable<+TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;->resumeFunction:Lrx/functions/Func1;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;)Lrx/functions/Func1;
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;

    .prologue
    .line 44
    iget-object v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;->resumeFunction:Lrx/functions/Func1;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 44
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 3
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
    .line 54
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/producers/ProducerArbiter;

    invoke-direct {v0}, Lrx/internal/producers/ProducerArbiter;-><init>()V

    .line 55
    .local v0, "pa":Lrx/internal/producers/ProducerArbiter;
    new-instance v2, Lrx/subscriptions/SerialSubscription;

    invoke-direct {v2}, Lrx/subscriptions/SerialSubscription;-><init>()V

    .line 56
    .local v2, "ssub":Lrx/subscriptions/SerialSubscription;
    new-instance v1, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;

    invoke-direct {v1, p0, p1, v0, v2}, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;-><init>(Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;Lrx/Subscriber;Lrx/internal/producers/ProducerArbiter;Lrx/subscriptions/SerialSubscription;)V

    .line 120
    .local v1, "parent":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    invoke-virtual {p1, v2}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 121
    invoke-virtual {v2, v1}, Lrx/subscriptions/SerialSubscription;->set(Lrx/Subscription;)V

    .line 122
    invoke-virtual {p1, v0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 123
    return-object v1
.end method
