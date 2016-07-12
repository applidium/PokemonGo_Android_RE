.class public Lrx/internal/operators/OperatorDoOnRequest;
.super Ljava/lang/Object;
.source "OperatorDoOnRequest.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field private final request:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/functions/Action1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lrx/internal/operators/OperatorDoOnRequest;, "Lrx/internal/operators/OperatorDoOnRequest<TT;>;"
    .local p1, "request":Lrx/functions/Action1;, "Lrx/functions/Action1<Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lrx/internal/operators/OperatorDoOnRequest;->request:Lrx/functions/Action1;

    .line 35
    return-void
.end method

.method static synthetic access$100(Lrx/internal/operators/OperatorDoOnRequest;)Lrx/functions/Action1;
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorDoOnRequest;

    .prologue
    .line 29
    iget-object v0, p0, Lrx/internal/operators/OperatorDoOnRequest;->request:Lrx/functions/Action1;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 29
    .local p0, "this":Lrx/internal/operators/OperatorDoOnRequest;, "Lrx/internal/operators/OperatorDoOnRequest<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorDoOnRequest;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lrx/internal/operators/OperatorDoOnRequest;, "Lrx/internal/operators/OperatorDoOnRequest<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;-><init>(Lrx/Subscriber;Lrx/internal/operators/OperatorDoOnRequest$1;)V

    .line 42
    .local v0, "parent":Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;, "Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber<TT;>;"
    new-instance v1, Lrx/internal/operators/OperatorDoOnRequest$1;

    invoke-direct {v1, p0, v0}, Lrx/internal/operators/OperatorDoOnRequest$1;-><init>(Lrx/internal/operators/OperatorDoOnRequest;Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;)V

    invoke-virtual {p1, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 51
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 52
    return-object v0
.end method
