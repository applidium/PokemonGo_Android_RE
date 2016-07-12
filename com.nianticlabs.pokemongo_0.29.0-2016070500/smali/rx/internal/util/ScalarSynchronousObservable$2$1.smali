.class Lrx/internal/util/ScalarSynchronousObservable$2$1;
.super Lrx/Subscriber;
.source "ScalarSynchronousObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/util/ScalarSynchronousObservable$2;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/util/ScalarSynchronousObservable$2;

.field final synthetic val$child:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/util/ScalarSynchronousObservable$2;Lrx/Subscriber;Lrx/Subscriber;)V
    .locals 0

    .prologue
    .line 133
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$2$1;, "Lrx/internal/util/ScalarSynchronousObservable$2.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/util/ScalarSynchronousObservable$2$1;->this$1:Lrx/internal/util/ScalarSynchronousObservable$2;

    iput-object p3, p0, Lrx/internal/util/ScalarSynchronousObservable$2$1;->val$child:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 144
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$2$1;, "Lrx/internal/util/ScalarSynchronousObservable$2.1;"
    iget-object v0, p0, Lrx/internal/util/ScalarSynchronousObservable$2$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 145
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 140
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$2$1;, "Lrx/internal/util/ScalarSynchronousObservable$2.1;"
    iget-object v0, p0, Lrx/internal/util/ScalarSynchronousObservable$2$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 141
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$2$1;, "Lrx/internal/util/ScalarSynchronousObservable$2.1;"
    .local p1, "v":Ljava/lang/Object;, "TR;"
    iget-object v0, p0, Lrx/internal/util/ScalarSynchronousObservable$2$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 137
    return-void
.end method
