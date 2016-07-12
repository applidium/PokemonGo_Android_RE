.class final Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber;
.super Lrx/Subscriber;
.source "OperatorOnBackpressureLatest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorOnBackpressureLatest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LatestSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final producer:Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 197
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber<TT;>;"
    .local p1, "producer":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter<TT;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 198
    iput-object p1, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber;->producer:Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;

    .line 199
    return-void
.end method

.method synthetic constructor <init>(Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;Lrx/internal/operators/OperatorOnBackpressureLatest$1;)V
    .locals 0
    .param p1, "x0"    # Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;
    .param p2, "x1"    # Lrx/internal/operators/OperatorOnBackpressureLatest$1;

    .prologue
    .line 194
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber<TT;>;"
    invoke-direct {p0, p1}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber;-><init>(Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 219
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber;->producer:Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->onCompleted()V

    .line 220
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 214
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber;->producer:Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->onError(Ljava/lang/Throwable;)V

    .line 215
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 209
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber;->producer:Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestEmitter;->onNext(Ljava/lang/Object;)V

    .line 210
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 204
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber<TT;>;"
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber;->request(J)V

    .line 205
    return-void
.end method

.method requestMore(J)V
    .locals 1
    .param p1, "n"    # J

    .prologue
    .line 222
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber;, "Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber<TT;>;"
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorOnBackpressureLatest$LatestSubscriber;->request(J)V

    .line 223
    return-void
.end method
