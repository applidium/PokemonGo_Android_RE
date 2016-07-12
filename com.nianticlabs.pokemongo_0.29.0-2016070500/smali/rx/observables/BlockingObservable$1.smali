.class Lrx/observables/BlockingObservable$1;
.super Lrx/Subscriber;
.source "BlockingObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/observables/BlockingObservable;->forEach(Lrx/functions/Action1;)V
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

.field final synthetic val$exceptionFromOnError:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$onNext:Lrx/functions/Action1;


# direct methods
.method constructor <init>(Lrx/observables/BlockingObservable;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;Lrx/functions/Action1;)V
    .locals 0

    .prologue
    .line 101
    .local p0, "this":Lrx/observables/BlockingObservable$1;, "Lrx/observables/BlockingObservable.1;"
    iput-object p1, p0, Lrx/observables/BlockingObservable$1;->this$0:Lrx/observables/BlockingObservable;

    iput-object p2, p0, Lrx/observables/BlockingObservable$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lrx/observables/BlockingObservable$1;->val$exceptionFromOnError:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lrx/observables/BlockingObservable$1;->val$onNext:Lrx/functions/Action1;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 104
    .local p0, "this":Lrx/observables/BlockingObservable$1;, "Lrx/observables/BlockingObservable.1;"
    iget-object v0, p0, Lrx/observables/BlockingObservable$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 105
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 117
    .local p0, "this":Lrx/observables/BlockingObservable$1;, "Lrx/observables/BlockingObservable.1;"
    iget-object v0, p0, Lrx/observables/BlockingObservable$1;->val$exceptionFromOnError:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lrx/observables/BlockingObservable$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 119
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
    .line 123
    .local p0, "this":Lrx/observables/BlockingObservable$1;, "Lrx/observables/BlockingObservable.1;"
    .local p1, "args":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/observables/BlockingObservable$1;->val$onNext:Lrx/functions/Action1;

    invoke-interface {v0, p1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 124
    return-void
.end method
