.class Lrx/internal/operators/OperatorBufferWithSingleObservable$1;
.super Ljava/lang/Object;
.source "OperatorBufferWithSingleObservable.java"

# interfaces
.implements Lrx/functions/Func0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorBufferWithSingleObservable;-><init>(Lrx/Observable;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func0",
        "<",
        "Lrx/Observable",
        "<+TTClosing;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorBufferWithSingleObservable;

.field final synthetic val$bufferClosing:Lrx/Observable;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorBufferWithSingleObservable;Lrx/Observable;)V
    .locals 0

    .prologue
    .line 67
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSingleObservable$1;, "Lrx/internal/operators/OperatorBufferWithSingleObservable.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorBufferWithSingleObservable$1;->this$0:Lrx/internal/operators/OperatorBufferWithSingleObservable;

    iput-object p2, p0, Lrx/internal/operators/OperatorBufferWithSingleObservable$1;->val$bufferClosing:Lrx/Observable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSingleObservable$1;, "Lrx/internal/operators/OperatorBufferWithSingleObservable.1;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorBufferWithSingleObservable$1;->call()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<+TTClosing;>;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSingleObservable$1;, "Lrx/internal/operators/OperatorBufferWithSingleObservable.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSingleObservable$1;->val$bufferClosing:Lrx/Observable;

    return-object v0
.end method
