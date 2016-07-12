.class Lrx/internal/operators/OperatorUnsubscribeOn$2$1;
.super Ljava/lang/Object;
.source "OperatorUnsubscribeOn.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorUnsubscribeOn$2;->call()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/OperatorUnsubscribeOn$2;

.field final synthetic val$inner:Lrx/Scheduler$Worker;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorUnsubscribeOn$2;Lrx/Scheduler$Worker;)V
    .locals 0

    .prologue
    .line 62
    .local p0, "this":Lrx/internal/operators/OperatorUnsubscribeOn$2$1;, "Lrx/internal/operators/OperatorUnsubscribeOn$2.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorUnsubscribeOn$2$1;->this$1:Lrx/internal/operators/OperatorUnsubscribeOn$2;

    iput-object p2, p0, Lrx/internal/operators/OperatorUnsubscribeOn$2$1;->val$inner:Lrx/Scheduler$Worker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .prologue
    .line 66
    .local p0, "this":Lrx/internal/operators/OperatorUnsubscribeOn$2$1;, "Lrx/internal/operators/OperatorUnsubscribeOn$2.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorUnsubscribeOn$2$1;->this$1:Lrx/internal/operators/OperatorUnsubscribeOn$2;

    iget-object v0, v0, Lrx/internal/operators/OperatorUnsubscribeOn$2;->val$parent:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->unsubscribe()V

    .line 67
    iget-object v0, p0, Lrx/internal/operators/OperatorUnsubscribeOn$2$1;->val$inner:Lrx/Scheduler$Worker;

    invoke-virtual {v0}, Lrx/Scheduler$Worker;->unsubscribe()V

    .line 68
    return-void
.end method
