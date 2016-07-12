.class Lrx/internal/operators/OperatorTakeLastOne$1;
.super Ljava/lang/Object;
.source "OperatorTakeLastOne.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorTakeLastOne;->call(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorTakeLastOne;

.field final synthetic val$parent:Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorTakeLastOne;Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;)V
    .locals 0

    .prologue
    .line 27
    .local p0, "this":Lrx/internal/operators/OperatorTakeLastOne$1;, "Lrx/internal/operators/OperatorTakeLastOne.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorTakeLastOne$1;->this$0:Lrx/internal/operators/OperatorTakeLastOne;

    iput-object p2, p0, Lrx/internal/operators/OperatorTakeLastOne$1;->val$parent:Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 1
    .param p1, "n"    # J

    .prologue
    .line 31
    .local p0, "this":Lrx/internal/operators/OperatorTakeLastOne$1;, "Lrx/internal/operators/OperatorTakeLastOne.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLastOne$1;->val$parent:Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;

    invoke-virtual {v0, p1, p2}, Lrx/internal/operators/OperatorTakeLastOne$ParentSubscriber;->requestMore(J)V

    .line 32
    return-void
.end method
