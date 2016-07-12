.class Lrx/internal/operators/OperatorToMultimap$1;
.super Lrx/Subscriber;
.source "OperatorToMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorToMultimap;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lrx/internal/operators/OperatorToMultimap;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorToMultimap;Lrx/Subscriber;Lrx/Subscriber;)V
    .locals 1

    .prologue
    .line 106
    .local p0, "this":Lrx/internal/operators/OperatorToMultimap$1;, "Lrx/internal/operators/OperatorToMultimap.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorToMultimap$1;->this$0:Lrx/internal/operators/OperatorToMultimap;

    iput-object p3, p0, Lrx/internal/operators/OperatorToMultimap$1;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 107
    iget-object v0, p0, Lrx/internal/operators/OperatorToMultimap$1;->this$0:Lrx/internal/operators/OperatorToMultimap;

    # getter for: Lrx/internal/operators/OperatorToMultimap;->mapFactory:Lrx/functions/Func0;
    invoke-static {v0}, Lrx/internal/operators/OperatorToMultimap;->access$000(Lrx/internal/operators/OperatorToMultimap;)Lrx/functions/Func0;

    move-result-object v0

    invoke-interface {v0}, Lrx/functions/Func0;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lrx/internal/operators/OperatorToMultimap$1;->map:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 134
    .local p0, "this":Lrx/internal/operators/OperatorToMultimap$1;, "Lrx/internal/operators/OperatorToMultimap.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorToMultimap$1;->map:Ljava/util/Map;

    .line 135
    .local v0, "map0":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/internal/operators/OperatorToMultimap$1;->map:Ljava/util/Map;

    .line 136
    iget-object v1, p0, Lrx/internal/operators/OperatorToMultimap$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 137
    iget-object v1, p0, Lrx/internal/operators/OperatorToMultimap$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->onCompleted()V

    .line 138
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 128
    .local p0, "this":Lrx/internal/operators/OperatorToMultimap$1;, "Lrx/internal/operators/OperatorToMultimap.1;"
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/internal/operators/OperatorToMultimap$1;->map:Ljava/util/Map;

    .line 129
    iget-object v0, p0, Lrx/internal/operators/OperatorToMultimap$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 130
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lrx/internal/operators/OperatorToMultimap$1;, "Lrx/internal/operators/OperatorToMultimap.1;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lrx/internal/operators/OperatorToMultimap$1;->this$0:Lrx/internal/operators/OperatorToMultimap;

    # getter for: Lrx/internal/operators/OperatorToMultimap;->keySelector:Lrx/functions/Func1;
    invoke-static {v3}, Lrx/internal/operators/OperatorToMultimap;->access$100(Lrx/internal/operators/OperatorToMultimap;)Lrx/functions/Func1;

    move-result-object v3

    invoke-interface {v3, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 117
    .local v1, "key":Ljava/lang/Object;, "TK;"
    iget-object v3, p0, Lrx/internal/operators/OperatorToMultimap$1;->this$0:Lrx/internal/operators/OperatorToMultimap;

    # getter for: Lrx/internal/operators/OperatorToMultimap;->valueSelector:Lrx/functions/Func1;
    invoke-static {v3}, Lrx/internal/operators/OperatorToMultimap;->access$200(Lrx/internal/operators/OperatorToMultimap;)Lrx/functions/Func1;

    move-result-object v3

    invoke-interface {v3, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 118
    .local v2, "value":Ljava/lang/Object;, "TV;"
    iget-object v3, p0, Lrx/internal/operators/OperatorToMultimap$1;->map:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 119
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_0

    .line 120
    iget-object v3, p0, Lrx/internal/operators/OperatorToMultimap$1;->this$0:Lrx/internal/operators/OperatorToMultimap;

    # getter for: Lrx/internal/operators/OperatorToMultimap;->collectionFactory:Lrx/functions/Func1;
    invoke-static {v3}, Lrx/internal/operators/OperatorToMultimap;->access$300(Lrx/internal/operators/OperatorToMultimap;)Lrx/functions/Func1;

    move-result-object v3

    invoke-interface {v3, v1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    check-cast v0, Ljava/util/Collection;

    .line 121
    .restart local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    iget-object v3, p0, Lrx/internal/operators/OperatorToMultimap$1;->map:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 124
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 111
    .local p0, "this":Lrx/internal/operators/OperatorToMultimap$1;, "Lrx/internal/operators/OperatorToMultimap.1;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorToMultimap$1;->request(J)V

    .line 112
    return-void
.end method
