.class Lrx/internal/operators/OperatorSkipTimed$1;
.super Ljava/lang/Object;
.source "OperatorSkipTimed.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorSkipTimed;->call(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorSkipTimed;

.field final synthetic val$gate:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorSkipTimed;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .prologue
    .line 46
    .local p0, "this":Lrx/internal/operators/OperatorSkipTimed$1;, "Lrx/internal/operators/OperatorSkipTimed.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorSkipTimed$1;->this$0:Lrx/internal/operators/OperatorSkipTimed;

    iput-object p2, p0, Lrx/internal/operators/OperatorSkipTimed$1;->val$gate:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 49
    .local p0, "this":Lrx/internal/operators/OperatorSkipTimed$1;, "Lrx/internal/operators/OperatorSkipTimed.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSkipTimed$1;->val$gate:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 50
    return-void
.end method
