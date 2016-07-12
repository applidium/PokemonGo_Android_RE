.class Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction$1;
.super Ljava/lang/Object;
.source "BufferUntilSubscriber.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction;


# direct methods
.method constructor <init>(Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction;)V
    .locals 0

    .prologue
    .line 91
    .local p0, "this":Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction$1;, "Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction.1;"
    iput-object p1, p0, Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction$1;->this$0:Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 95
    .local p0, "this":Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction$1;, "Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction.1;"
    iget-object v0, p0, Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction$1;->this$0:Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction;

    iget-object v0, v0, Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    # getter for: Lrx/internal/operators/BufferUntilSubscriber;->EMPTY_OBSERVER:Lrx/Observer;
    invoke-static {}, Lrx/internal/operators/BufferUntilSubscriber;->access$000()Lrx/Observer;

    move-result-object v1

    iput-object v1, v0, Lrx/internal/operators/BufferUntilSubscriber$State;->observerRef:Lrx/Observer;

    .line 96
    return-void
.end method
