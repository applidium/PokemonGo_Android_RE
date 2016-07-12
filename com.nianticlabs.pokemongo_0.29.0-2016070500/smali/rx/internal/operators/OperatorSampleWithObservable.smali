.class public final Lrx/internal/operators/OperatorSampleWithObservable;
.super Ljava/lang/Object;
.source "OperatorSampleWithObservable.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<TT;TT;>;"
    }
.end annotation


# static fields
.field static final EMPTY_TOKEN:Ljava/lang/Object;


# instance fields
.field final sampler:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<TU;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/OperatorSampleWithObservable;->EMPTY_TOKEN:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lrx/Observable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<TU;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lrx/internal/operators/OperatorSampleWithObservable;, "Lrx/internal/operators/OperatorSampleWithObservable<TT;TU;>;"
    .local p1, "sampler":Lrx/Observable;, "Lrx/Observable<TU;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lrx/internal/operators/OperatorSampleWithObservable;->sampler:Lrx/Observable;

    .line 39
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    .local p0, "this":Lrx/internal/operators/OperatorSampleWithObservable;, "Lrx/internal/operators/OperatorSampleWithObservable<TT;TU;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorSampleWithObservable;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 5
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
    .local p0, "this":Lrx/internal/operators/OperatorSampleWithObservable;, "Lrx/internal/operators/OperatorSampleWithObservable<TT;TU;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v1, Lrx/observers/SerializedSubscriber;

    invoke-direct {v1, p1}, Lrx/observers/SerializedSubscriber;-><init>(Lrx/Subscriber;)V

    .line 45
    .local v1, "s":Lrx/observers/SerializedSubscriber;, "Lrx/observers/SerializedSubscriber<TT;>;"
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v4, Lrx/internal/operators/OperatorSampleWithObservable;->EMPTY_TOKEN:Ljava/lang/Object;

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 47
    .local v3, "value":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Object;>;"
    new-instance v2, Lrx/internal/operators/OperatorSampleWithObservable$1;

    invoke-direct {v2, p0, p1, v3, v1}, Lrx/internal/operators/OperatorSampleWithObservable$1;-><init>(Lrx/internal/operators/OperatorSampleWithObservable;Lrx/Subscriber;Ljava/util/concurrent/atomic/AtomicReference;Lrx/observers/SerializedSubscriber;)V

    .line 72
    .local v2, "samplerSub":Lrx/Subscriber;, "Lrx/Subscriber<TU;>;"
    new-instance v0, Lrx/internal/operators/OperatorSampleWithObservable$2;

    invoke-direct {v0, p0, p1, v3, v1}, Lrx/internal/operators/OperatorSampleWithObservable$2;-><init>(Lrx/internal/operators/OperatorSampleWithObservable;Lrx/Subscriber;Ljava/util/concurrent/atomic/AtomicReference;Lrx/observers/SerializedSubscriber;)V

    .line 91
    .local v0, "result":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    iget-object v4, p0, Lrx/internal/operators/OperatorSampleWithObservable;->sampler:Lrx/Observable;

    invoke-virtual {v4, v2}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 93
    return-object v0
.end method
