.class Lrx/internal/operators/OperatorToObservableList$1;
.super Lrx/Subscriber;
.source "OperatorToObservableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorToObservableList;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field completed:Z

.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lrx/internal/operators/OperatorToObservableList;

.field final synthetic val$o:Lrx/Subscriber;

.field final synthetic val$producer:Lrx/internal/producers/SingleDelayedProducer;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorToObservableList;Lrx/internal/producers/SingleDelayedProducer;Lrx/Subscriber;)V
    .locals 1

    .prologue
    .line 55
    .local p0, "this":Lrx/internal/operators/OperatorToObservableList$1;, "Lrx/internal/operators/OperatorToObservableList.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorToObservableList$1;->this$0:Lrx/internal/operators/OperatorToObservableList;

    iput-object p2, p0, Lrx/internal/operators/OperatorToObservableList$1;->val$producer:Lrx/internal/producers/SingleDelayedProducer;

    iput-object p3, p0, Lrx/internal/operators/OperatorToObservableList$1;->val$o:Lrx/Subscriber;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/OperatorToObservableList$1;->completed:Z

    .line 58
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorToObservableList$1;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 3

    .prologue
    .line 67
    .local p0, "this":Lrx/internal/operators/OperatorToObservableList$1;, "Lrx/internal/operators/OperatorToObservableList.1;"
    iget-boolean v2, p0, Lrx/internal/operators/OperatorToObservableList$1;->completed:Z

    if-nez v2, :cond_0

    .line 68
    const/4 v2, 0x1

    iput-boolean v2, p0, Lrx/internal/operators/OperatorToObservableList$1;->completed:Z

    .line 86
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lrx/internal/operators/OperatorToObservableList$1;->list:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v2, 0x0

    iput-object v2, p0, Lrx/internal/operators/OperatorToObservableList$1;->list:Ljava/util/List;

    .line 92
    iget-object v2, p0, Lrx/internal/operators/OperatorToObservableList$1;->val$producer:Lrx/internal/producers/SingleDelayedProducer;

    invoke-virtual {v2, v0}, Lrx/internal/producers/SingleDelayedProducer;->setValue(Ljava/lang/Object;)V

    .line 94
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_0
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v1

    .line 88
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {p0, v1}, Lrx/internal/operators/OperatorToObservableList$1;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 98
    .local p0, "this":Lrx/internal/operators/OperatorToObservableList$1;, "Lrx/internal/operators/OperatorToObservableList.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorToObservableList$1;->val$o:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 99
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
    .line 103
    .local p0, "this":Lrx/internal/operators/OperatorToObservableList$1;, "Lrx/internal/operators/OperatorToObservableList.1;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorToObservableList$1;->completed:Z

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lrx/internal/operators/OperatorToObservableList$1;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 62
    .local p0, "this":Lrx/internal/operators/OperatorToObservableList$1;, "Lrx/internal/operators/OperatorToObservableList.1;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorToObservableList$1;->request(J)V

    .line 63
    return-void
.end method
