.class public Lrx/internal/operators/OperatorOnBackpressureBuffer;
.super Ljava/lang/Object;
.source "OperatorOnBackpressureBuffer.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorOnBackpressureBuffer$1;,
        Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;,
        Lrx/internal/operators/OperatorOnBackpressureBuffer$Holder;
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


# instance fields
.field private final capacity:Ljava/lang/Long;

.field private final onOverflow:Lrx/functions/Action0;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBuffer;, "Lrx/internal/operators/OperatorOnBackpressureBuffer<TT;>;"
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer;->capacity:Ljava/lang/Long;

    .line 45
    iput-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer;->onOverflow:Lrx/functions/Action0;

    .line 46
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "capacity"    # J

    .prologue
    .line 49
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBuffer;, "Lrx/internal/operators/OperatorOnBackpressureBuffer<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lrx/internal/operators/OperatorOnBackpressureBuffer;-><init>(JLrx/functions/Action0;)V

    .line 50
    return-void
.end method

.method public constructor <init>(JLrx/functions/Action0;)V
    .locals 3
    .param p1, "capacity"    # J
    .param p3, "onOverflow"    # Lrx/functions/Action0;

    .prologue
    .line 52
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBuffer;, "Lrx/internal/operators/OperatorOnBackpressureBuffer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer capacity must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer;->capacity:Ljava/lang/Long;

    .line 57
    iput-object p3, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer;->onOverflow:Lrx/functions/Action0;

    .line 58
    return-void
.end method

.method synthetic constructor <init>(Lrx/internal/operators/OperatorOnBackpressureBuffer$1;)V
    .locals 0
    .param p1, "x0"    # Lrx/internal/operators/OperatorOnBackpressureBuffer$1;

    .prologue
    .line 29
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBuffer;, "Lrx/internal/operators/OperatorOnBackpressureBuffer<TT;>;"
    invoke-direct {p0}, Lrx/internal/operators/OperatorOnBackpressureBuffer;-><init>()V

    return-void
.end method

.method public static instance()Lrx/internal/operators/OperatorOnBackpressureBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/internal/operators/OperatorOnBackpressureBuffer",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 40
    sget-object v0, Lrx/internal/operators/OperatorOnBackpressureBuffer$Holder;->INSTANCE:Lrx/internal/operators/OperatorOnBackpressureBuffer;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 29
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBuffer;, "Lrx/internal/operators/OperatorOnBackpressureBuffer<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorOnBackpressureBuffer;->call(Lrx/Subscriber;)Lrx/Subscriber;

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
    .line 65
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBuffer;, "Lrx/internal/operators/OperatorOnBackpressureBuffer<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer;->capacity:Ljava/lang/Long;

    iget-object v2, p0, Lrx/internal/operators/OperatorOnBackpressureBuffer;->onOverflow:Lrx/functions/Action0;

    invoke-direct {v0, p1, v1, v2}, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;-><init>(Lrx/Subscriber;Ljava/lang/Long;Lrx/functions/Action0;)V

    .line 68
    .local v0, "parent":Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;, "Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber<TT;>;"
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 69
    invoke-virtual {v0}, Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber;->manager()Lrx/Producer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 71
    return-object v0
.end method
