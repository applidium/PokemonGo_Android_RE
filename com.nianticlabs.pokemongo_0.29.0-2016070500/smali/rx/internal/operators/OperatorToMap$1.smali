.class Lrx/internal/operators/OperatorToMap$1;
.super Lrx/Subscriber;
.source "OperatorToMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorToMap;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lrx/internal/operators/OperatorToMap;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorToMap;Lrx/Subscriber;Lrx/Subscriber;)V
    .locals 1

    .prologue
    .line 78
    .local p0, "this":Lrx/internal/operators/OperatorToMap$1;, "Lrx/internal/operators/OperatorToMap.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorToMap$1;->this$0:Lrx/internal/operators/OperatorToMap;

    iput-object p3, p0, Lrx/internal/operators/OperatorToMap$1;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 80
    iget-object v0, p0, Lrx/internal/operators/OperatorToMap$1;->this$0:Lrx/internal/operators/OperatorToMap;

    # getter for: Lrx/internal/operators/OperatorToMap;->mapFactory:Lrx/functions/Func0;
    invoke-static {v0}, Lrx/internal/operators/OperatorToMap;->access$000(Lrx/internal/operators/OperatorToMap;)Lrx/functions/Func0;

    move-result-object v0

    invoke-interface {v0}, Lrx/functions/Func0;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lrx/internal/operators/OperatorToMap$1;->map:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 102
    .local p0, "this":Lrx/internal/operators/OperatorToMap$1;, "Lrx/internal/operators/OperatorToMap.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorToMap$1;->map:Ljava/util/Map;

    .line 103
    .local v0, "map0":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/internal/operators/OperatorToMap$1;->map:Ljava/util/Map;

    .line 104
    iget-object v1, p0, Lrx/internal/operators/OperatorToMap$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 105
    iget-object v1, p0, Lrx/internal/operators/OperatorToMap$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->onCompleted()V

    .line 106
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 96
    .local p0, "this":Lrx/internal/operators/OperatorToMap$1;, "Lrx/internal/operators/OperatorToMap.1;"
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/internal/operators/OperatorToMap$1;->map:Ljava/util/Map;

    .line 97
    iget-object v0, p0, Lrx/internal/operators/OperatorToMap$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 98
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
    .line 89
    .local p0, "this":Lrx/internal/operators/OperatorToMap$1;, "Lrx/internal/operators/OperatorToMap.1;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lrx/internal/operators/OperatorToMap$1;->this$0:Lrx/internal/operators/OperatorToMap;

    # getter for: Lrx/internal/operators/OperatorToMap;->keySelector:Lrx/functions/Func1;
    invoke-static {v2}, Lrx/internal/operators/OperatorToMap;->access$100(Lrx/internal/operators/OperatorToMap;)Lrx/functions/Func1;

    move-result-object v2

    invoke-interface {v2, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 90
    .local v0, "key":Ljava/lang/Object;, "TK;"
    iget-object v2, p0, Lrx/internal/operators/OperatorToMap$1;->this$0:Lrx/internal/operators/OperatorToMap;

    # getter for: Lrx/internal/operators/OperatorToMap;->valueSelector:Lrx/functions/Func1;
    invoke-static {v2}, Lrx/internal/operators/OperatorToMap;->access$200(Lrx/internal/operators/OperatorToMap;)Lrx/functions/Func1;

    move-result-object v2

    invoke-interface {v2, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 91
    .local v1, "value":Ljava/lang/Object;, "TV;"
    iget-object v2, p0, Lrx/internal/operators/OperatorToMap$1;->map:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 84
    .local p0, "this":Lrx/internal/operators/OperatorToMap$1;, "Lrx/internal/operators/OperatorToMap.1;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorToMap$1;->request(J)V

    .line 85
    return-void
.end method
