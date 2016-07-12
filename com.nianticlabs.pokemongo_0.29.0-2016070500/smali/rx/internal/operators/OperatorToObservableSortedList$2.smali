.class Lrx/internal/operators/OperatorToObservableSortedList$2;
.super Lrx/Subscriber;
.source "OperatorToObservableSortedList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorToObservableSortedList;->call(Lrx/Subscriber;)Lrx/Subscriber;
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

.field final synthetic this$0:Lrx/internal/operators/OperatorToObservableSortedList;

.field final synthetic val$child:Lrx/Subscriber;

.field final synthetic val$producer:Lrx/internal/producers/SingleDelayedProducer;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorToObservableSortedList;Lrx/internal/producers/SingleDelayedProducer;Lrx/Subscriber;)V
    .locals 2

    .prologue
    .line 58
    .local p0, "this":Lrx/internal/operators/OperatorToObservableSortedList$2;, "Lrx/internal/operators/OperatorToObservableSortedList.2;"
    iput-object p1, p0, Lrx/internal/operators/OperatorToObservableSortedList$2;->this$0:Lrx/internal/operators/OperatorToObservableSortedList;

    iput-object p2, p0, Lrx/internal/operators/OperatorToObservableSortedList$2;->val$producer:Lrx/internal/producers/SingleDelayedProducer;

    iput-object p3, p0, Lrx/internal/operators/OperatorToObservableSortedList$2;->val$child:Lrx/Subscriber;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lrx/internal/operators/OperatorToObservableSortedList$2;->this$0:Lrx/internal/operators/OperatorToObservableSortedList;

    # getter for: Lrx/internal/operators/OperatorToObservableSortedList;->initialCapacity:I
    invoke-static {v1}, Lrx/internal/operators/OperatorToObservableSortedList;->access$000(Lrx/internal/operators/OperatorToObservableSortedList;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/OperatorToObservableSortedList$2;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 3

    .prologue
    .line 70
    .local p0, "this":Lrx/internal/operators/OperatorToObservableSortedList$2;, "Lrx/internal/operators/OperatorToObservableSortedList.2;"
    iget-boolean v2, p0, Lrx/internal/operators/OperatorToObservableSortedList$2;->completed:Z

    if-nez v2, :cond_0

    .line 71
    const/4 v2, 0x1

    iput-boolean v2, p0, Lrx/internal/operators/OperatorToObservableSortedList$2;->completed:Z

    .line 72
    iget-object v0, p0, Lrx/internal/operators/OperatorToObservableSortedList$2;->list:Ljava/util/List;

    .line 73
    .local v0, "a":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v2, 0x0

    iput-object v2, p0, Lrx/internal/operators/OperatorToObservableSortedList$2;->list:Ljava/util/List;

    .line 76
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/OperatorToObservableSortedList$2;->this$0:Lrx/internal/operators/OperatorToObservableSortedList;

    # getter for: Lrx/internal/operators/OperatorToObservableSortedList;->sortFunction:Ljava/util/Comparator;
    invoke-static {v2}, Lrx/internal/operators/OperatorToObservableSortedList;->access$100(Lrx/internal/operators/OperatorToObservableSortedList;)Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    iget-object v2, p0, Lrx/internal/operators/OperatorToObservableSortedList$2;->val$producer:Lrx/internal/producers/SingleDelayedProducer;

    invoke-virtual {v2, v0}, Lrx/internal/producers/SingleDelayedProducer;->setValue(Ljava/lang/Object;)V

    .line 83
    .end local v0    # "a":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_0
    :goto_0
    return-void

    .line 77
    .restart local v0    # "a":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :catch_0
    move-exception v1

    .line 78
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v1}, Lrx/internal/operators/OperatorToObservableSortedList$2;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 87
    .local p0, "this":Lrx/internal/operators/OperatorToObservableSortedList$2;, "Lrx/internal/operators/OperatorToObservableSortedList.2;"
    iget-object v0, p0, Lrx/internal/operators/OperatorToObservableSortedList$2;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 88
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
    .line 92
    .local p0, "this":Lrx/internal/operators/OperatorToObservableSortedList$2;, "Lrx/internal/operators/OperatorToObservableSortedList.2;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorToObservableSortedList$2;->completed:Z

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lrx/internal/operators/OperatorToObservableSortedList$2;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 65
    .local p0, "this":Lrx/internal/operators/OperatorToObservableSortedList$2;, "Lrx/internal/operators/OperatorToObservableSortedList.2;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorToObservableSortedList$2;->request(J)V

    .line 66
    return-void
.end method
