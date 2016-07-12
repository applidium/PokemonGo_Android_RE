.class Lrx/internal/util/ScalarSynchronousObservable$2;
.super Ljava/lang/Object;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/util/ScalarSynchronousObservable;->scalarFlatMap(Lrx/functions/Func1;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/util/ScalarSynchronousObservable;

.field final synthetic val$func:Lrx/functions/Func1;


# direct methods
.method constructor <init>(Lrx/internal/util/ScalarSynchronousObservable;Lrx/functions/Func1;)V
    .locals 0

    .prologue
    .line 125
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$2;, "Lrx/internal/util/ScalarSynchronousObservable.2;"
    iput-object p1, p0, Lrx/internal/util/ScalarSynchronousObservable$2;->this$0:Lrx/internal/util/ScalarSynchronousObservable;

    iput-object p2, p0, Lrx/internal/util/ScalarSynchronousObservable$2;->val$func:Lrx/functions/Func1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 125
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$2;, "Lrx/internal/util/ScalarSynchronousObservable.2;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/util/ScalarSynchronousObservable$2;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$2;, "Lrx/internal/util/ScalarSynchronousObservable.2;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    iget-object v1, p0, Lrx/internal/util/ScalarSynchronousObservable$2;->val$func:Lrx/functions/Func1;

    iget-object v2, p0, Lrx/internal/util/ScalarSynchronousObservable$2;->this$0:Lrx/internal/util/ScalarSynchronousObservable;

    # getter for: Lrx/internal/util/ScalarSynchronousObservable;->t:Ljava/lang/Object;
    invoke-static {v2}, Lrx/internal/util/ScalarSynchronousObservable;->access$100(Lrx/internal/util/ScalarSynchronousObservable;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Observable;

    .line 129
    .local v0, "o":Lrx/Observable;, "Lrx/Observable<+TR;>;"
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lrx/internal/util/ScalarSynchronousObservable;

    if-ne v1, v2, :cond_0

    .line 130
    check-cast v0, Lrx/internal/util/ScalarSynchronousObservable;

    .end local v0    # "o":Lrx/Observable;, "Lrx/Observable<+TR;>;"
    # getter for: Lrx/internal/util/ScalarSynchronousObservable;->t:Ljava/lang/Object;
    invoke-static {v0}, Lrx/internal/util/ScalarSynchronousObservable;->access$100(Lrx/internal/util/ScalarSynchronousObservable;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 131
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    .line 148
    :goto_0
    return-void

    .line 133
    .restart local v0    # "o":Lrx/Observable;, "Lrx/Observable<+TR;>;"
    :cond_0
    new-instance v1, Lrx/internal/util/ScalarSynchronousObservable$2$1;

    invoke-direct {v1, p0, p1, p1}, Lrx/internal/util/ScalarSynchronousObservable$2$1;-><init>(Lrx/internal/util/ScalarSynchronousObservable$2;Lrx/Subscriber;Lrx/Subscriber;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    goto :goto_0
.end method
