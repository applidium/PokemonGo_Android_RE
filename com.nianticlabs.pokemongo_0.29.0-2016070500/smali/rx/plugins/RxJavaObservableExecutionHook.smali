.class public abstract Lrx/plugins/RxJavaObservableExecutionHook;
.super Ljava/lang/Object;
.source "RxJavaObservableExecutionHook.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Lrx/Observable$OnSubscribe;)Lrx/Observable$OnSubscribe;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;)",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "f":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<TT;>;"
    return-object p1
.end method

.method public onLift(Lrx/Observable$Operator;)Lrx/Observable$Operator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable$Operator",
            "<+TR;-TT;>;)",
            "Lrx/Observable$Operator",
            "<+TR;-TT;>;"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "lift":Lrx/Observable$Operator;, "Lrx/Observable$Operator<+TR;-TT;>;"
    return-object p1
.end method

.method public onSubscribeError(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .prologue
    .line 103
    return-object p1
.end method

.method public onSubscribeReturn(Lrx/Subscription;)Lrx/Subscription;
    .locals 0
    .param p1, "subscription"    # Lrx/Subscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Subscription;",
            ")",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 88
    return-object p1
.end method

.method public onSubscribeStart(Lrx/Observable;Lrx/Observable$OnSubscribe;)Lrx/Observable$OnSubscribe;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;)",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "observableInstance":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "onSubscribe":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<TT;>;"
    return-object p2
.end method
