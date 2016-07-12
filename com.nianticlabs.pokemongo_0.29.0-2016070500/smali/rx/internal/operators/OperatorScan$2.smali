.class Lrx/internal/operators/OperatorScan$2;
.super Lrx/Subscriber;
.source "OperatorScan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorScan;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field private final initialValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field initialized:Z

.field final synthetic this$0:Lrx/internal/operators/OperatorScan;

.field final synthetic val$child:Lrx/Subscriber;

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorScan;Lrx/Subscriber;Lrx/Subscriber;)V
    .locals 1

    .prologue
    .line 90
    .local p0, "this":Lrx/internal/operators/OperatorScan$2;, "Lrx/internal/operators/OperatorScan.2;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorScan$2;->this$0:Lrx/internal/operators/OperatorScan;

    iput-object p3, p0, Lrx/internal/operators/OperatorScan$2;->val$child:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 91
    iget-object v0, p0, Lrx/internal/operators/OperatorScan$2;->this$0:Lrx/internal/operators/OperatorScan;

    # getter for: Lrx/internal/operators/OperatorScan;->initialValueFactory:Lrx/functions/Func0;
    invoke-static {v0}, Lrx/internal/operators/OperatorScan;->access$000(Lrx/internal/operators/OperatorScan;)Lrx/functions/Func0;

    move-result-object v0

    invoke-interface {v0}, Lrx/functions/Func0;->call()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorScan$2;->initialValue:Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lrx/internal/operators/OperatorScan$2;->initialValue:Ljava/lang/Object;

    iput-object v0, p0, Lrx/internal/operators/OperatorScan$2;->value:Ljava/lang/Object;

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/OperatorScan$2;->initialized:Z

    return-void
.end method

.method static synthetic access$300(Lrx/internal/operators/OperatorScan$2;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorScan$2;

    .prologue
    .line 90
    iget-object v0, p0, Lrx/internal/operators/OperatorScan$2;->initialValue:Ljava/lang/Object;

    return-object v0
.end method

.method private emitInitialValueIfNeeded(Lrx/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "this":Lrx/internal/operators/OperatorScan$2;, "Lrx/internal/operators/OperatorScan.2;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorScan$2;->initialized:Z

    if-nez v0, :cond_0

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorScan$2;->initialized:Z

    .line 130
    iget-object v0, p0, Lrx/internal/operators/OperatorScan$2;->initialValue:Ljava/lang/Object;

    # getter for: Lrx/internal/operators/OperatorScan;->NO_INITIAL_VALUE:Ljava/lang/Object;
    invoke-static {}, Lrx/internal/operators/OperatorScan;->access$100()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 131
    iget-object v0, p0, Lrx/internal/operators/OperatorScan$2;->initialValue:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 134
    :cond_0
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 122
    .local p0, "this":Lrx/internal/operators/OperatorScan$2;, "Lrx/internal/operators/OperatorScan.2;"
    iget-object v0, p0, Lrx/internal/operators/OperatorScan$2;->val$child:Lrx/Subscriber;

    invoke-direct {p0, v0}, Lrx/internal/operators/OperatorScan$2;->emitInitialValueIfNeeded(Lrx/Subscriber;)V

    .line 123
    iget-object v0, p0, Lrx/internal/operators/OperatorScan$2;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 124
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 117
    .local p0, "this":Lrx/internal/operators/OperatorScan$2;, "Lrx/internal/operators/OperatorScan.2;"
    iget-object v0, p0, Lrx/internal/operators/OperatorScan$2;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 118
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lrx/internal/operators/OperatorScan$2;, "Lrx/internal/operators/OperatorScan.2;"
    .local p1, "currentValue":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lrx/internal/operators/OperatorScan$2;->val$child:Lrx/Subscriber;

    invoke-direct {p0, v1}, Lrx/internal/operators/OperatorScan$2;->emitInitialValueIfNeeded(Lrx/Subscriber;)V

    .line 100
    iget-object v1, p0, Lrx/internal/operators/OperatorScan$2;->value:Ljava/lang/Object;

    # getter for: Lrx/internal/operators/OperatorScan;->NO_INITIAL_VALUE:Ljava/lang/Object;
    invoke-static {}, Lrx/internal/operators/OperatorScan;->access$100()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 102
    iput-object p1, p0, Lrx/internal/operators/OperatorScan$2;->value:Ljava/lang/Object;

    .line 112
    :goto_0
    iget-object v1, p0, Lrx/internal/operators/OperatorScan$2;->val$child:Lrx/Subscriber;

    iget-object v2, p0, Lrx/internal/operators/OperatorScan$2;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 113
    :goto_1
    return-void

    .line 105
    :cond_0
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OperatorScan$2;->this$0:Lrx/internal/operators/OperatorScan;

    # getter for: Lrx/internal/operators/OperatorScan;->accumulator:Lrx/functions/Func2;
    invoke-static {v1}, Lrx/internal/operators/OperatorScan;->access$200(Lrx/internal/operators/OperatorScan;)Lrx/functions/Func2;

    move-result-object v1

    iget-object v2, p0, Lrx/internal/operators/OperatorScan$2;->value:Ljava/lang/Object;

    invoke-interface {v1, v2, p1}, Lrx/functions/Func2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lrx/internal/operators/OperatorScan$2;->value:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 108
    iget-object v1, p0, Lrx/internal/operators/OperatorScan$2;->val$child:Lrx/Subscriber;

    invoke-static {v0, p1}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setProducer(Lrx/Producer;)V
    .locals 2
    .param p1, "producer"    # Lrx/Producer;

    .prologue
    .line 141
    .local p0, "this":Lrx/internal/operators/OperatorScan$2;, "Lrx/internal/operators/OperatorScan.2;"
    iget-object v0, p0, Lrx/internal/operators/OperatorScan$2;->val$child:Lrx/Subscriber;

    new-instance v1, Lrx/internal/operators/OperatorScan$2$1;

    invoke-direct {v1, p0, p1}, Lrx/internal/operators/OperatorScan$2$1;-><init>(Lrx/internal/operators/OperatorScan$2;Lrx/Producer;)V

    invoke-virtual {v0, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 170
    return-void
.end method
