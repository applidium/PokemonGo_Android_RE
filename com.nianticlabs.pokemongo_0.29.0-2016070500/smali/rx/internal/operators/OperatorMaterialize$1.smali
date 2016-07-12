.class Lrx/internal/operators/OperatorMaterialize$1;
.super Lrx/Subscriber;
.source "OperatorMaterialize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorMaterialize;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field final synthetic this$0:Lrx/internal/operators/OperatorMaterialize;

.field final synthetic val$child:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorMaterialize;Lrx/Subscriber;Lrx/Subscriber;)V
    .locals 0

    .prologue
    .line 47
    .local p0, "this":Lrx/internal/operators/OperatorMaterialize$1;, "Lrx/internal/operators/OperatorMaterialize.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorMaterialize$1;->this$0:Lrx/internal/operators/OperatorMaterialize;

    iput-object p3, p0, Lrx/internal/operators/OperatorMaterialize$1;->val$child:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 51
    .local p0, "this":Lrx/internal/operators/OperatorMaterialize$1;, "Lrx/internal/operators/OperatorMaterialize.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMaterialize$1;->val$child:Lrx/Subscriber;

    invoke-static {}, Lrx/Notification;->createOnCompleted()Lrx/Notification;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lrx/internal/operators/OperatorMaterialize$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 53
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 57
    .local p0, "this":Lrx/internal/operators/OperatorMaterialize$1;, "Lrx/internal/operators/OperatorMaterialize.1;"
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    .line 58
    iget-object v0, p0, Lrx/internal/operators/OperatorMaterialize$1;->val$child:Lrx/Subscriber;

    invoke-static {p1}, Lrx/Notification;->createOnError(Ljava/lang/Throwable;)Lrx/Notification;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 59
    iget-object v0, p0, Lrx/internal/operators/OperatorMaterialize$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 60
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lrx/internal/operators/OperatorMaterialize$1;, "Lrx/internal/operators/OperatorMaterialize.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMaterialize$1;->val$child:Lrx/Subscriber;

    invoke-static {p1}, Lrx/Notification;->createOnNext(Ljava/lang/Object;)Lrx/Notification;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 65
    return-void
.end method
