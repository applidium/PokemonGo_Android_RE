.class Lrx/internal/operators/OperatorMapPair$2$1;
.super Ljava/lang/Object;
.source "OperatorMapPair.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorMapPair$2;->onNext(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<TU;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/OperatorMapPair$2;

.field final synthetic val$outer:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorMapPair$2;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 80
    .local p0, "this":Lrx/internal/operators/OperatorMapPair$2$1;, "Lrx/internal/operators/OperatorMapPair$2.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorMapPair$2$1;->this$1:Lrx/internal/operators/OperatorMapPair$2;

    iput-object p2, p0, Lrx/internal/operators/OperatorMapPair$2$1;->val$outer:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)TR;"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lrx/internal/operators/OperatorMapPair$2$1;, "Lrx/internal/operators/OperatorMapPair$2.1;"
    .local p1, "inner":Ljava/lang/Object;, "TU;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMapPair$2$1;->this$1:Lrx/internal/operators/OperatorMapPair$2;

    iget-object v0, v0, Lrx/internal/operators/OperatorMapPair$2;->this$0:Lrx/internal/operators/OperatorMapPair;

    iget-object v0, v0, Lrx/internal/operators/OperatorMapPair;->resultSelector:Lrx/functions/Func2;

    iget-object v1, p0, Lrx/internal/operators/OperatorMapPair$2$1;->val$outer:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lrx/functions/Func2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
