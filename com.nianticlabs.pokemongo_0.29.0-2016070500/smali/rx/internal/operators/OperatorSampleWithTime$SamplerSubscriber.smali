.class final Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;
.super Lrx/Subscriber;
.source "OperatorSampleWithTime.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorSampleWithTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SamplerSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;",
        "Lrx/functions/Action0;"
    }
.end annotation


# static fields
.field private static final EMPTY_TOKEN:Ljava/lang/Object;

.field static final VALUE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater",
            "<",
            "Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final subscriber:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field volatile value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;->EMPTY_TOKEN:Ljava/lang/Object;

    .line 69
    const-class v0, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;

    const-class v1, Ljava/lang/Object;

    const-string v2, "value"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;->VALUE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lrx/Subscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;, "Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 66
    sget-object v0, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;->EMPTY_TOKEN:Ljava/lang/Object;

    iput-object v0, p0, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;->value:Ljava/lang/Object;

    .line 72
    iput-object p1, p0, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;->subscriber:Lrx/Subscriber;

    .line 73
    return-void
.end method


# virtual methods
.method public call()V
    .locals 5

    .prologue
    .line 99
    .local p0, "this":Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;, "Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber<TT;>;"
    sget-object v3, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;->VALUE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v4, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;->EMPTY_TOKEN:Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 100
    .local v1, "localValue":Ljava/lang/Object;
    sget-object v3, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;->EMPTY_TOKEN:Ljava/lang/Object;

    if-eq v1, v3, :cond_0

    .line 103
    move-object v2, v1

    .line 104
    .local v2, "v":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v3, p0, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;->subscriber:Lrx/Subscriber;

    invoke-virtual {v3, v2}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v2    # "v":Ljava/lang/Object;, "TT;"
    :cond_0
    :goto_0
    return-void

    .line 105
    .restart local v2    # "v":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 93
    .local p0, "this":Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;, "Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;->subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 94
    invoke-virtual {p0}, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;->unsubscribe()V

    .line 95
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 87
    .local p0, "this":Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;, "Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;->subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 88
    invoke-virtual {p0}, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;->unsubscribe()V

    .line 89
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;, "Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;->value:Ljava/lang/Object;

    .line 83
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 77
    .local p0, "this":Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;, "Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber<TT;>;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;->request(J)V

    .line 78
    return-void
.end method
