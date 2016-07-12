.class Lrx/internal/operators/OperatorBufferWithSize$1;
.super Lrx/Subscriber;
.source "OperatorBufferWithSize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorBufferWithSize;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field buffer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lrx/internal/operators/OperatorBufferWithSize;

.field final synthetic val$child:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorBufferWithSize;Lrx/Subscriber;Lrx/Subscriber;)V
    .locals 0

    .prologue
    .line 69
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$1;, "Lrx/internal/operators/OperatorBufferWithSize.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->this$0:Lrx/internal/operators/OperatorBufferWithSize;

    iput-object p3, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->val$child:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 3

    .prologue
    .line 115
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$1;, "Lrx/internal/operators/OperatorBufferWithSize.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->buffer:Ljava/util/List;

    .line 116
    .local v0, "oldBuffer":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v2, 0x0

    iput-object v2, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->buffer:Ljava/util/List;

    .line 117
    if-eqz v0, :cond_0

    .line 119
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v2, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :cond_0
    iget-object v2, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v2}, Lrx/Subscriber;->onCompleted()V

    .line 126
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v1

    .line 121
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {p0, v1}, Lrx/internal/operators/OperatorBufferWithSize$1;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 109
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$1;, "Lrx/internal/operators/OperatorBufferWithSize.1;"
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->buffer:Ljava/util/List;

    .line 110
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 111
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
    .line 96
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$1;, "Lrx/internal/operators/OperatorBufferWithSize.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->buffer:Ljava/util/List;

    if-nez v1, :cond_0

    .line 97
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->this$0:Lrx/internal/operators/OperatorBufferWithSize;

    iget v2, v2, Lrx/internal/operators/OperatorBufferWithSize;->count:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->buffer:Ljava/util/List;

    .line 99
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->buffer:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->buffer:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->this$0:Lrx/internal/operators/OperatorBufferWithSize;

    iget v2, v2, Lrx/internal/operators/OperatorBufferWithSize;->count:I

    if-ne v1, v2, :cond_1

    .line 101
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->buffer:Ljava/util/List;

    .line 102
    .local v0, "oldBuffer":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->buffer:Ljava/util/List;

    .line 103
    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 105
    .end local v0    # "oldBuffer":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_1
    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .locals 2
    .param p1, "producer"    # Lrx/Producer;

    .prologue
    .line 74
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$1;, "Lrx/internal/operators/OperatorBufferWithSize.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$1;->val$child:Lrx/Subscriber;

    new-instance v1, Lrx/internal/operators/OperatorBufferWithSize$1$1;

    invoke-direct {v1, p0, p1}, Lrx/internal/operators/OperatorBufferWithSize$1$1;-><init>(Lrx/internal/operators/OperatorBufferWithSize$1;Lrx/Producer;)V

    invoke-virtual {v0, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 92
    return-void
.end method
