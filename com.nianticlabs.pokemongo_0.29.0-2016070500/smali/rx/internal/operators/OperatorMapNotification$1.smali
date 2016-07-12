.class Lrx/internal/operators/OperatorMapNotification$1;
.super Lrx/Subscriber;
.source "OperatorMapNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorMapNotification;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field emitter:Lrx/internal/operators/OperatorMapNotification$SingleEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorMapNotification$SingleEmitter",
            "<TR;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lrx/internal/operators/OperatorMapNotification;

.field final synthetic val$o:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorMapNotification;Lrx/Subscriber;)V
    .locals 0

    .prologue
    .line 53
    .local p0, "this":Lrx/internal/operators/OperatorMapNotification$1;, "Lrx/internal/operators/OperatorMapNotification.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorMapNotification$1;->this$0:Lrx/internal/operators/OperatorMapNotification;

    iput-object p2, p0, Lrx/internal/operators/OperatorMapNotification$1;->val$o:Lrx/Subscriber;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 3

    .prologue
    .line 64
    .local p0, "this":Lrx/internal/operators/OperatorMapNotification$1;, "Lrx/internal/operators/OperatorMapNotification.1;"
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OperatorMapNotification$1;->emitter:Lrx/internal/operators/OperatorMapNotification$SingleEmitter;

    iget-object v2, p0, Lrx/internal/operators/OperatorMapNotification$1;->this$0:Lrx/internal/operators/OperatorMapNotification;

    # getter for: Lrx/internal/operators/OperatorMapNotification;->onCompleted:Lrx/functions/Func0;
    invoke-static {v2}, Lrx/internal/operators/OperatorMapNotification;->access$000(Lrx/internal/operators/OperatorMapNotification;)Lrx/functions/Func0;

    move-result-object v2

    invoke-interface {v2}, Lrx/functions/Func0;->call()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->offerAndComplete(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lrx/internal/operators/OperatorMapNotification$1;->val$o:Lrx/Subscriber;

    invoke-virtual {v1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 73
    .local p0, "this":Lrx/internal/operators/OperatorMapNotification$1;, "Lrx/internal/operators/OperatorMapNotification.1;"
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OperatorMapNotification$1;->emitter:Lrx/internal/operators/OperatorMapNotification$SingleEmitter;

    iget-object v2, p0, Lrx/internal/operators/OperatorMapNotification$1;->this$0:Lrx/internal/operators/OperatorMapNotification;

    # getter for: Lrx/internal/operators/OperatorMapNotification;->onError:Lrx/functions/Func1;
    invoke-static {v2}, Lrx/internal/operators/OperatorMapNotification;->access$100(Lrx/internal/operators/OperatorMapNotification;)Lrx/functions/Func1;

    move-result-object v2

    invoke-interface {v2, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->offerAndComplete(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e2":Ljava/lang/Throwable;
    iget-object v1, p0, Lrx/internal/operators/OperatorMapNotification$1;->val$o:Lrx/Subscriber;

    invoke-virtual {v1, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lrx/internal/operators/OperatorMapNotification$1;, "Lrx/internal/operators/OperatorMapNotification.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OperatorMapNotification$1;->emitter:Lrx/internal/operators/OperatorMapNotification$SingleEmitter;

    iget-object v2, p0, Lrx/internal/operators/OperatorMapNotification$1;->this$0:Lrx/internal/operators/OperatorMapNotification;

    # getter for: Lrx/internal/operators/OperatorMapNotification;->onNext:Lrx/functions/Func1;
    invoke-static {v2}, Lrx/internal/operators/OperatorMapNotification;->access$200(Lrx/internal/operators/OperatorMapNotification;)Lrx/functions/Func1;

    move-result-object v2

    invoke-interface {v2, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->offer(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lrx/internal/operators/OperatorMapNotification$1;->val$o:Lrx/Subscriber;

    invoke-static {v0, p1}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setProducer(Lrx/Producer;)V
    .locals 2
    .param p1, "producer"    # Lrx/Producer;

    .prologue
    .line 57
    .local p0, "this":Lrx/internal/operators/OperatorMapNotification$1;, "Lrx/internal/operators/OperatorMapNotification.1;"
    new-instance v0, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;

    iget-object v1, p0, Lrx/internal/operators/OperatorMapNotification$1;->val$o:Lrx/Subscriber;

    invoke-direct {v0, v1, p1, p0}, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;-><init>(Lrx/Subscriber;Lrx/Producer;Lrx/Subscription;)V

    iput-object v0, p0, Lrx/internal/operators/OperatorMapNotification$1;->emitter:Lrx/internal/operators/OperatorMapNotification$SingleEmitter;

    .line 58
    iget-object v0, p0, Lrx/internal/operators/OperatorMapNotification$1;->val$o:Lrx/Subscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorMapNotification$1;->emitter:Lrx/internal/operators/OperatorMapNotification$SingleEmitter;

    invoke-virtual {v0, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 59
    return-void
.end method
