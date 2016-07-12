.class Lrx/internal/operators/OperatorBufferWithSize$2;
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
.field final chunks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field index:I

.field final synthetic this$0:Lrx/internal/operators/OperatorBufferWithSize;

.field final synthetic val$child:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorBufferWithSize;Lrx/Subscriber;Lrx/Subscriber;)V
    .locals 1

    .prologue
    .line 129
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$2;, "Lrx/internal/operators/OperatorBufferWithSize.2;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorBufferWithSize$2;->this$0:Lrx/internal/operators/OperatorBufferWithSize;

    iput-object p3, p0, Lrx/internal/operators/OperatorBufferWithSize$2;->val$child:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 130
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$2;->chunks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 5

    .prologue
    .line 217
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$2;, "Lrx/internal/operators/OperatorBufferWithSize.2;"
    :try_start_0
    iget-object v3, p0, Lrx/internal/operators/OperatorBufferWithSize$2;->chunks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    .local v0, "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :try_start_1
    iget-object v3, p0, Lrx/internal/operators/OperatorBufferWithSize$2;->val$child:Lrx/Subscriber;

    invoke-virtual {v3, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 220
    :catch_0
    move-exception v2

    .line 221
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {p0, v2}, Lrx/internal/operators/OperatorBufferWithSize$2;->onError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 227
    iget-object v3, p0, Lrx/internal/operators/OperatorBufferWithSize$2;->chunks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 229
    .end local v0    # "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_1
    return-void

    .line 225
    :cond_0
    :try_start_3
    iget-object v3, p0, Lrx/internal/operators/OperatorBufferWithSize$2;->val$child:Lrx/Subscriber;

    invoke-virtual {v3}, Lrx/Subscriber;->onCompleted()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 227
    iget-object v3, p0, Lrx/internal/operators/OperatorBufferWithSize$2;->chunks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto :goto_1

    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lrx/internal/operators/OperatorBufferWithSize$2;->chunks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    throw v3
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 211
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$2;, "Lrx/internal/operators/OperatorBufferWithSize.2;"
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$2;->chunks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 212
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$2;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 213
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$2;, "Lrx/internal/operators/OperatorBufferWithSize.2;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget v2, p0, Lrx/internal/operators/OperatorBufferWithSize$2;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lrx/internal/operators/OperatorBufferWithSize$2;->index:I

    iget-object v3, p0, Lrx/internal/operators/OperatorBufferWithSize$2;->this$0:Lrx/internal/operators/OperatorBufferWithSize;

    iget v3, v3, Lrx/internal/operators/OperatorBufferWithSize;->skip:I

    rem-int/2addr v2, v3

    if-nez v2, :cond_0

    .line 195
    iget-object v2, p0, Lrx/internal/operators/OperatorBufferWithSize$2;->chunks:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lrx/internal/operators/OperatorBufferWithSize$2;->this$0:Lrx/internal/operators/OperatorBufferWithSize;

    iget v4, v4, Lrx/internal/operators/OperatorBufferWithSize;->count:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_0
    iget-object v2, p0, Lrx/internal/operators/OperatorBufferWithSize$2;->chunks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 199
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<TT;>;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 200
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 201
    .local v0, "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lrx/internal/operators/OperatorBufferWithSize$2;->this$0:Lrx/internal/operators/OperatorBufferWithSize;

    iget v3, v3, Lrx/internal/operators/OperatorBufferWithSize;->count:I

    if-ne v2, v3, :cond_1

    .line 203
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 204
    iget-object v2, p0, Lrx/internal/operators/OperatorBufferWithSize$2;->val$child:Lrx/Subscriber;

    invoke-virtual {v2, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 207
    .end local v0    # "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_2
    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .locals 2
    .param p1, "producer"    # Lrx/Producer;

    .prologue
    .line 135
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$2;, "Lrx/internal/operators/OperatorBufferWithSize.2;"
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$2;->val$child:Lrx/Subscriber;

    new-instance v1, Lrx/internal/operators/OperatorBufferWithSize$2$1;

    invoke-direct {v1, p0, p1}, Lrx/internal/operators/OperatorBufferWithSize$2$1;-><init>(Lrx/internal/operators/OperatorBufferWithSize$2;Lrx/Producer;)V

    invoke-virtual {v0, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 190
    return-void
.end method
