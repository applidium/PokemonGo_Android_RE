.class Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber$1;
.super Ljava/lang/Object;
.source "OperatorBufferWithTime.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->scheduleChunk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;)V
    .locals 0

    .prologue
    .line 169
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber$1;, "Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber$1;->this$1:Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .prologue
    .line 172
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber$1;, "Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber$1;->this$1:Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->startNewChunk()V

    .line 173
    return-void
.end method
