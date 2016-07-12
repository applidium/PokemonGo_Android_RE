.class final Lrx/internal/operators/OperatorPublish$2;
.super Ljava/lang/Object;
.source "OperatorPublish.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorPublish;->create(Lrx/Observable;Lrx/functions/Func1;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$selector:Lrx/functions/Func1;

.field final synthetic val$source:Lrx/Observable;


# direct methods
.method constructor <init>(Lrx/Observable;Lrx/functions/Func1;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lrx/internal/operators/OperatorPublish$2;->val$source:Lrx/Observable;

    iput-object p2, p0, Lrx/internal/operators/OperatorPublish$2;->val$selector:Lrx/functions/Func1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 120
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorPublish$2;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    iget-object v1, p0, Lrx/internal/operators/OperatorPublish$2;->val$source:Lrx/Observable;

    invoke-static {v1}, Lrx/internal/operators/OperatorPublish;->create(Lrx/Observable;)Lrx/observables/ConnectableObservable;

    move-result-object v0

    .line 125
    .local v0, "op":Lrx/observables/ConnectableObservable;, "Lrx/observables/ConnectableObservable<TT;>;"
    iget-object v1, p0, Lrx/internal/operators/OperatorPublish$2;->val$selector:Lrx/functions/Func1;

    invoke-interface {v1, v0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Observable;

    invoke-virtual {v1, p1}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 127
    new-instance v1, Lrx/internal/operators/OperatorPublish$2$1;

    invoke-direct {v1, p0, p1}, Lrx/internal/operators/OperatorPublish$2$1;-><init>(Lrx/internal/operators/OperatorPublish$2;Lrx/Subscriber;)V

    invoke-virtual {v0, v1}, Lrx/observables/ConnectableObservable;->connect(Lrx/functions/Action1;)V

    .line 133
    return-void
.end method
