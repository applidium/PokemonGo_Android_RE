.class public final Lrx/internal/operators/OperatorOnBackpressureLatest;
.super Ljava/lang/Object;
.source "OperatorOnBackpressureLatest.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorOnBackpressureLatest$1;,
        Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber;,
        Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;,
        Lrx/internal/operators/OperatorOnBackpressureLatest$Holder;
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
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest;, "Lrx/internal/operators/OperatorOnBackpressureLatest<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    return-void
.end method

.method public static instance()Lrx/internal/operators/OperatorOnBackpressureLatest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/internal/operators/OperatorOnBackpressureLatest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 39
    sget-object v0, Lrx/internal/operators/OperatorOnBackpressureLatest$Holder;->INSTANCE:Lrx/internal/operators/OperatorOnBackpressureLatest;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 27
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest;, "Lrx/internal/operators/OperatorOnBackpressureLatest<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorOnBackpressureLatest;->call(Lrx/Subscriber;)Lrx/Subscriber;

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
    .line 44
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest;, "Lrx/internal/operators/OperatorOnBackpressureLatest<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v1, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;

    invoke-direct {v1, p1}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;-><init>(Lrx/Subscriber;)V

    .line 45
    .local v1, "producer":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber;-><init>(Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;Lrx/internal/operators/OperatorOnBackpressureLatest$1;)V

    .line 46
    .local v0, "parent":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber<TT;>;"
    iput-object v0, v1, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->parent:Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber;

    .line 47
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 48
    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 49
    invoke-virtual {p1, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 50
    return-object v0
.end method
