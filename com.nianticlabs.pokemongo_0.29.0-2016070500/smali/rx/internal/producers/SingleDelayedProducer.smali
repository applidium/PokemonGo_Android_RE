.class public final Lrx/internal/producers/SingleDelayedProducer;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SingleDelayedProducer.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lrx/Producer;"
    }
.end annotation


# static fields
.field static final HAS_REQUEST_HAS_VALUE:I = 0x3

.field static final HAS_REQUEST_NO_VALUE:I = 0x2

.field static final NO_REQUEST_HAS_VALUE:I = 0x1

.field static final NO_REQUEST_NO_VALUE:I = 0x0

.field private static final serialVersionUID:J = -0x27e09bdfa51658b2L


# instance fields
.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Subscriber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lrx/internal/producers/SingleDelayedProducer;, "Lrx/internal/producers/SingleDelayedProducer<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 47
    iput-object p1, p0, Lrx/internal/producers/SingleDelayedProducer;->child:Lrx/Subscriber;

    .line 48
    return-void
.end method

.method private static emit(Lrx/Subscriber;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Subscriber",
            "<-TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "c":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    invoke-virtual {p0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 112
    invoke-virtual {p0}, Lrx/Subscriber;->onCompleted()V

    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 105
    invoke-static {v0, p1}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    .line 106
    .local v1, "e1":Ljava/lang/Throwable;
    invoke-virtual {p0, v1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public request(J)V
    .locals 7
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/producers/SingleDelayedProducer;, "Lrx/internal/producers/SingleDelayedProducer<TT;>;"
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    .line 52
    cmp-long v1, p1, v4

    if-gez v1, :cond_0

    .line 53
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "n >= 0 required"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 55
    :cond_0
    cmp-long v1, p1, v4

    if-nez v1, :cond_2

    .line 70
    :cond_1
    :goto_0
    return-void

    .line 59
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lrx/internal/producers/SingleDelayedProducer;->get()I

    move-result v0

    .line 60
    .local v0, "s":I
    if-nez v0, :cond_3

    .line 61
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lrx/internal/producers/SingleDelayedProducer;->compareAndSet(II)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 65
    :cond_3
    if-ne v0, v3, :cond_1

    .line 66
    const/4 v1, 0x3

    invoke-virtual {p0, v3, v1}, Lrx/internal/producers/SingleDelayedProducer;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    iget-object v1, p0, Lrx/internal/producers/SingleDelayedProducer;->child:Lrx/Subscriber;

    iget-object v2, p0, Lrx/internal/producers/SingleDelayedProducer;->value:Ljava/lang/Object;

    invoke-static {v1, v2}, Lrx/internal/producers/SingleDelayedProducer;->emit(Lrx/Subscriber;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/producers/SingleDelayedProducer;, "Lrx/internal/producers/SingleDelayedProducer<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x2

    .line 76
    :cond_0
    invoke-virtual {p0}, Lrx/internal/producers/SingleDelayedProducer;->get()I

    move-result v0

    .line 77
    .local v0, "s":I
    if-nez v0, :cond_2

    .line 78
    iput-object p1, p0, Lrx/internal/producers/SingleDelayedProducer;->value:Ljava/lang/Object;

    .line 79
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lrx/internal/producers/SingleDelayedProducer;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    :cond_1
    :goto_0
    return-void

    .line 83
    :cond_2
    if-ne v0, v3, :cond_1

    .line 84
    const/4 v1, 0x3

    invoke-virtual {p0, v3, v1}, Lrx/internal/producers/SingleDelayedProducer;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    iget-object v1, p0, Lrx/internal/producers/SingleDelayedProducer;->child:Lrx/Subscriber;

    invoke-static {v1, p1}, Lrx/internal/producers/SingleDelayedProducer;->emit(Lrx/Subscriber;Ljava/lang/Object;)V

    goto :goto_0
.end method
