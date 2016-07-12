.class Lrx/internal/operators/OnSubscribeRedo$RetryWithPredicate$1;
.super Ljava/lang/Object;
.source "OnSubscribeRedo.java"

# interfaces
.implements Lrx/functions/Func2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OnSubscribeRedo$RetryWithPredicate;->call(Lrx/Observable;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func2",
        "<",
        "Lrx/Notification",
        "<",
        "Ljava/lang/Integer;",
        ">;",
        "Lrx/Notification",
        "<*>;",
        "Lrx/Notification",
        "<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OnSubscribeRedo$RetryWithPredicate;


# direct methods
.method constructor <init>(Lrx/internal/operators/OnSubscribeRedo$RetryWithPredicate;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeRedo$RetryWithPredicate$1;->this$0:Lrx/internal/operators/OnSubscribeRedo$RetryWithPredicate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 109
    check-cast p1, Lrx/Notification;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lrx/Notification;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OnSubscribeRedo$RetryWithPredicate$1;->call(Lrx/Notification;Lrx/Notification;)Lrx/Notification;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Notification;Lrx/Notification;)Lrx/Notification;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Notification",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lrx/Notification",
            "<*>;)",
            "Lrx/Notification",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "n":Lrx/Notification;, "Lrx/Notification<Ljava/lang/Integer;>;"
    .local p2, "term":Lrx/Notification;, "Lrx/Notification<*>;"
    invoke-virtual {p1}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 114
    .local v0, "value":I
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeRedo$RetryWithPredicate$1;->this$0:Lrx/internal/operators/OnSubscribeRedo$RetryWithPredicate;

    # getter for: Lrx/internal/operators/OnSubscribeRedo$RetryWithPredicate;->predicate:Lrx/functions/Func2;
    invoke-static {v1}, Lrx/internal/operators/OnSubscribeRedo$RetryWithPredicate;->access$100(Lrx/internal/operators/OnSubscribeRedo$RetryWithPredicate;)Lrx/functions/Func2;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2}, Lrx/Notification;->getThrowable()Ljava/lang/Throwable;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lrx/functions/Func2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lrx/Notification;->createOnNext(Ljava/lang/Object;)Lrx/Notification;

    move-result-object p2

    .line 117
    .end local p2    # "term":Lrx/Notification;, "Lrx/Notification<*>;"
    :cond_0
    return-object p2
.end method
