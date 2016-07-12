.class public final Lrx/internal/operators/OnSubscribeRedo$RetryWithPredicate;
.super Ljava/lang/Object;
.source "OnSubscribeRedo.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeRedo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RetryWithPredicate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Lrx/Observable",
        "<+",
        "Lrx/Notification",
        "<*>;>;",
        "Lrx/Observable",
        "<+",
        "Lrx/Notification",
        "<*>;>;>;"
    }
.end annotation


# instance fields
.field private predicate:Lrx/functions/Func2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func2",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/functions/Func2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func2",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, "predicate":Lrx/functions/Func2;, "Lrx/functions/Func2<Ljava/lang/Integer;Ljava/lang/Throwable;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeRedo$RetryWithPredicate;->predicate:Lrx/functions/Func2;

    .line 105
    return-void
.end method

.method static synthetic access$100(Lrx/internal/operators/OnSubscribeRedo$RetryWithPredicate;)Lrx/functions/Func2;
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OnSubscribeRedo$RetryWithPredicate;

    .prologue
    .line 100
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRedo$RetryWithPredicate;->predicate:Lrx/functions/Func2;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 100
    check-cast p1, Lrx/Observable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeRedo$RetryWithPredicate;->call(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Observable;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+",
            "Lrx/Notification",
            "<*>;>;)",
            "Lrx/Observable",
            "<+",
            "Lrx/Notification",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "ts":Lrx/Observable;, "Lrx/Observable<+Lrx/Notification<*>;>;"
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lrx/Notification;->createOnNext(Ljava/lang/Object;)Lrx/Notification;

    move-result-object v0

    new-instance v1, Lrx/internal/operators/OnSubscribeRedo$RetryWithPredicate$1;

    invoke-direct {v1, p0}, Lrx/internal/operators/OnSubscribeRedo$RetryWithPredicate$1;-><init>(Lrx/internal/operators/OnSubscribeRedo$RetryWithPredicate;)V

    invoke-virtual {p1, v0, v1}, Lrx/Observable;->scan(Ljava/lang/Object;Lrx/functions/Func2;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
