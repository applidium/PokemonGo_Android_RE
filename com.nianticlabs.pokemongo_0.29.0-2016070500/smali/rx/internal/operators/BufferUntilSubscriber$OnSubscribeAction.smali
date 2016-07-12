.class final Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction;
.super Ljava/lang/Object;
.source "BufferUntilSubscriber.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/BufferUntilSubscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OnSubscribeAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final state:Lrx/internal/operators/BufferUntilSubscriber$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/BufferUntilSubscriber$State",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/internal/operators/BufferUntilSubscriber$State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/BufferUntilSubscriber$State",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction;, "Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction<TT;>;"
    .local p1, "state":Lrx/internal/operators/BufferUntilSubscriber$State;, "Lrx/internal/operators/BufferUntilSubscriber$State<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    .line 86
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 81
    .local p0, "this":Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction;, "Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction;, "Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction<TT;>;"
    .local p1, "s":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v3, p0, Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p1}, Lrx/internal/operators/BufferUntilSubscriber$State;->casObserverRef(Lrx/Observer;Lrx/Observer;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 91
    new-instance v3, Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction$1;

    invoke-direct {v3, p0}, Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction$1;-><init>(Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction;)V

    invoke-static {v3}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v3

    invoke-virtual {p1, v3}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 98
    const/4 v2, 0x0

    .line 99
    .local v2, "win":Z
    iget-object v3, p0, Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    iget-object v4, v3, Lrx/internal/operators/BufferUntilSubscriber$State;->guard:Ljava/lang/Object;

    monitor-enter v4

    .line 100
    :try_start_0
    iget-object v3, p0, Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    iget-boolean v3, v3, Lrx/internal/operators/BufferUntilSubscriber$State;->emitting:Z

    if-nez v3, :cond_0

    .line 101
    iget-object v3, p0, Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    const/4 v5, 0x1

    iput-boolean v5, v3, Lrx/internal/operators/BufferUntilSubscriber$State;->emitting:Z

    .line 102
    const/4 v2, 0x1

    .line 104
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    if-eqz v2, :cond_2

    .line 106
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    .line 109
    .local v0, "nl":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    :goto_0
    iget-object v3, p0, Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    iget-object v3, v3, Lrx/internal/operators/BufferUntilSubscriber$State;->buffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    .local v1, "o":Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 110
    iget-object v3, p0, Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    iget-object v3, v3, Lrx/internal/operators/BufferUntilSubscriber$State;->observerRef:Lrx/Observer;

    invoke-virtual {v0, v3, v1}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z

    goto :goto_0

    .line 104
    .end local v0    # "nl":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    .end local v1    # "o":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 112
    .restart local v0    # "nl":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_1
    iget-object v3, p0, Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    iget-object v4, v3, Lrx/internal/operators/BufferUntilSubscriber$State;->guard:Ljava/lang/Object;

    monitor-enter v4

    .line 113
    :try_start_2
    iget-object v3, p0, Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    iget-object v3, v3, Lrx/internal/operators/BufferUntilSubscriber$State;->buffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 117
    iget-object v3, p0, Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    const/4 v5, 0x0

    iput-boolean v5, v3, Lrx/internal/operators/BufferUntilSubscriber$State;->emitting:Z

    .line 118
    monitor-exit v4

    .line 126
    .end local v0    # "nl":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    .end local v1    # "o":Ljava/lang/Object;
    .end local v2    # "win":Z
    :cond_2
    :goto_1
    return-void

    .line 120
    .restart local v0    # "nl":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    .restart local v1    # "o":Ljava/lang/Object;
    .restart local v2    # "win":Z
    :cond_3
    monitor-exit v4

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 124
    .end local v0    # "nl":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    .end local v1    # "o":Ljava/lang/Object;
    .end local v2    # "win":Z
    :cond_4
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Only one subscriber allowed!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
