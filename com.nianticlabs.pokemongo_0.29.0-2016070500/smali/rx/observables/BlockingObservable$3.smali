.class Lrx/observables/BlockingObservable$3;
.super Lrx/Subscriber;
.source "BlockingObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/observables/BlockingObservable;->blockForSingle(Lrx/Observable;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/observables/BlockingObservable;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$returnException:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$returnItem:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lrx/observables/BlockingObservable;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .prologue
    .line 442
    .local p0, "this":Lrx/observables/BlockingObservable$3;, "Lrx/observables/BlockingObservable.3;"
    iput-object p1, p0, Lrx/observables/BlockingObservable$3;->this$0:Lrx/observables/BlockingObservable;

    iput-object p2, p0, Lrx/observables/BlockingObservable$3;->val$latch:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lrx/observables/BlockingObservable$3;->val$returnException:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lrx/observables/BlockingObservable$3;->val$returnItem:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 445
    .local p0, "this":Lrx/observables/BlockingObservable$3;, "Lrx/observables/BlockingObservable.3;"
    iget-object v0, p0, Lrx/observables/BlockingObservable$3;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 446
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 450
    .local p0, "this":Lrx/observables/BlockingObservable$3;, "Lrx/observables/BlockingObservable.3;"
    iget-object v0, p0, Lrx/observables/BlockingObservable$3;->val$returnException:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 451
    iget-object v0, p0, Lrx/observables/BlockingObservable$3;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 452
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
    .line 456
    .local p0, "this":Lrx/observables/BlockingObservable$3;, "Lrx/observables/BlockingObservable.3;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/observables/BlockingObservable$3;->val$returnItem:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 457
    return-void
.end method
