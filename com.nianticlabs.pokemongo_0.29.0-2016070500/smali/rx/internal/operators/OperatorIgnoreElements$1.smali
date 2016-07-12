.class Lrx/internal/operators/OperatorIgnoreElements$1;
.super Lrx/Subscriber;
.source "OperatorIgnoreElements.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorIgnoreElements;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field final synthetic this$0:Lrx/internal/operators/OperatorIgnoreElements;

.field final synthetic val$child:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorIgnoreElements;Lrx/Subscriber;)V
    .locals 0

    .prologue
    .line 38
    .local p0, "this":Lrx/internal/operators/OperatorIgnoreElements$1;, "Lrx/internal/operators/OperatorIgnoreElements.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorIgnoreElements$1;->this$0:Lrx/internal/operators/OperatorIgnoreElements;

    iput-object p2, p0, Lrx/internal/operators/OperatorIgnoreElements$1;->val$child:Lrx/Subscriber;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 42
    .local p0, "this":Lrx/internal/operators/OperatorIgnoreElements$1;, "Lrx/internal/operators/OperatorIgnoreElements.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorIgnoreElements$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 43
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 47
    .local p0, "this":Lrx/internal/operators/OperatorIgnoreElements$1;, "Lrx/internal/operators/OperatorIgnoreElements.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorIgnoreElements$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 48
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lrx/internal/operators/OperatorIgnoreElements$1;, "Lrx/internal/operators/OperatorIgnoreElements.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    return-void
.end method
