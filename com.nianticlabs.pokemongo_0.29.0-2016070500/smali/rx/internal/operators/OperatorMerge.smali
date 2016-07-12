.class public final Lrx/internal/operators/OperatorMerge;
.super Ljava/lang/Object;
.source "OperatorMerge.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorMerge$1;,
        Lrx/internal/operators/OperatorMerge$InnerSubscriber;,
        Lrx/internal/operators/OperatorMerge$MergeSubscriber;,
        Lrx/internal/operators/OperatorMerge$MergeProducer;,
        Lrx/internal/operators/OperatorMerge$HolderDelayErrors;,
        Lrx/internal/operators/OperatorMerge$HolderNoDelay;
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


# instance fields
.field final delayErrors:Z

.field final maxConcurrent:I


# direct methods
.method private constructor <init>(ZI)V
    .locals 0
    .param p1, "delayErrors"    # Z
    .param p2, "maxConcurrent"    # I

    .prologue
    .line 91
    .local p0, "this":Lrx/internal/operators/OperatorMerge;, "Lrx/internal/operators/OperatorMerge<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-boolean p1, p0, Lrx/internal/operators/OperatorMerge;->delayErrors:Z

    .line 93
    iput p2, p0, Lrx/internal/operators/OperatorMerge;->maxConcurrent:I

    .line 94
    return-void
.end method

.method synthetic constructor <init>(ZILrx/internal/operators/OperatorMerge$1;)V
    .locals 0
    .param p1, "x0"    # Z
    .param p2, "x1"    # I
    .param p3, "x2"    # Lrx/internal/operators/OperatorMerge$1;

    .prologue
    .line 53
    .local p0, "this":Lrx/internal/operators/OperatorMerge;, "Lrx/internal/operators/OperatorMerge<TT;>;"
    invoke-direct {p0, p1, p2}, Lrx/internal/operators/OperatorMerge;-><init>(ZI)V

    return-void
.end method

.method public static instance(Z)Lrx/internal/operators/OperatorMerge;
    .locals 1
    .param p0, "delayErrors"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z)",
            "Lrx/internal/operators/OperatorMerge",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 70
    if-eqz p0, :cond_0

    .line 71
    sget-object v0, Lrx/internal/operators/OperatorMerge$HolderDelayErrors;->INSTANCE:Lrx/internal/operators/OperatorMerge;

    .line 73
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lrx/internal/operators/OperatorMerge$HolderNoDelay;->INSTANCE:Lrx/internal/operators/OperatorMerge;

    goto :goto_0
.end method

.method public static instance(ZI)Lrx/internal/operators/OperatorMerge;
    .locals 1
    .param p0, "delayErrors"    # Z
    .param p1, "maxConcurrent"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ZI)",
            "Lrx/internal/operators/OperatorMerge",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 82
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 83
    invoke-static {p0}, Lrx/internal/operators/OperatorMerge;->instance(Z)Lrx/internal/operators/OperatorMerge;

    move-result-object v0

    .line 85
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lrx/internal/operators/OperatorMerge;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/OperatorMerge;-><init>(ZI)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 53
    .local p0, "this":Lrx/internal/operators/OperatorMerge;, "Lrx/internal/operators/OperatorMerge<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorMerge;->call(Lrx/Subscriber;)Lrx/Subscriber;

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
            "<",
            "Lrx/Observable",
            "<+TT;>;>;"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lrx/internal/operators/OperatorMerge;, "Lrx/internal/operators/OperatorMerge<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    iget-boolean v2, p0, Lrx/internal/operators/OperatorMerge;->delayErrors:Z

    iget v3, p0, Lrx/internal/operators/OperatorMerge;->maxConcurrent:I

    invoke-direct {v1, p1, v2, v3}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;-><init>(Lrx/Subscriber;ZI)V

    .line 99
    .local v1, "subscriber":Lrx/internal/operators/OperatorMerge$MergeSubscriber;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorMerge$MergeProducer;

    invoke-direct {v0, v1}, Lrx/internal/operators/OperatorMerge$MergeProducer;-><init>(Lrx/internal/operators/OperatorMerge$MergeSubscriber;)V

    .line 100
    .local v0, "producer":Lrx/internal/operators/OperatorMerge$MergeProducer;, "Lrx/internal/operators/OperatorMerge$MergeProducer<TT;>;"
    iput-object v0, v1, Lrx/internal/operators/OperatorMerge$MergeSubscriber;->producer:Lrx/internal/operators/OperatorMerge$MergeProducer;

    .line 102
    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 103
    invoke-virtual {p1, v0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 105
    return-object v1
.end method
