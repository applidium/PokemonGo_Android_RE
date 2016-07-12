.class Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber$1;
.super Ljava/lang/Object;
.source "OperatorWindowWithSize.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber;)V
    .locals 0

    .prologue
    .line 162
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber$1;, "Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber$1;->this$1:Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .prologue
    .line 167
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber$1;, "Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber$1;->this$1:Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber;

    iget-boolean v0, v0, Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber;->noWindow:Z

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber$1;->this$1:Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber;->unsubscribe()V

    .line 170
    :cond_0
    return-void
.end method
