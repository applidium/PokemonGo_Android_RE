.class final Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;
.super Lrx/Subscriber;
.source "OperatorDoOnRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorDoOnRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ParentSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lrx/Subscriber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;, "Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 59
    iput-object p1, p0, Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;->child:Lrx/Subscriber;

    .line 60
    return-void
.end method

.method synthetic constructor <init>(Lrx/Subscriber;Lrx/internal/operators/OperatorDoOnRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lrx/Subscriber;
    .param p2, "x1"    # Lrx/internal/operators/OperatorDoOnRequest$1;

    .prologue
    .line 55
    .local p0, "this":Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;, "Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber<TT;>;"
    invoke-direct {p0, p1}, Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method

.method static synthetic access$200(Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;J)V
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;
    .param p1, "x1"    # J

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;->requestMore(J)V

    return-void
.end method

.method private requestMore(J)V
    .locals 1
    .param p1, "n"    # J

    .prologue
    .line 63
    .local p0, "this":Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;, "Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber<TT;>;"
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;->request(J)V

    .line 64
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 68
    .local p0, "this":Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;, "Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 69
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 73
    .local p0, "this":Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;, "Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 74
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
    .line 78
    .local p0, "this":Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;, "Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 79
    return-void
.end method
