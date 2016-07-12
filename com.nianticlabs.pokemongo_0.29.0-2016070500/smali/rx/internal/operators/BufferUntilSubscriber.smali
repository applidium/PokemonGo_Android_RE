.class public final Lrx/internal/operators/BufferUntilSubscriber;
.super Lrx/subjects/Subject;
.source "BufferUntilSubscriber.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction;,
        Lrx/internal/operators/BufferUntilSubscriber$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/subjects/Subject",
        "<TT;TT;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_OBSERVER:Lrx/Observer;


# instance fields
.field private forward:Z

.field final state:Lrx/internal/operators/BufferUntilSubscriber$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/BufferUntilSubscriber$State",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 196
    new-instance v0, Lrx/internal/operators/BufferUntilSubscriber$1;

    invoke-direct {v0}, Lrx/internal/operators/BufferUntilSubscriber$1;-><init>()V

    sput-object v0, Lrx/internal/operators/BufferUntilSubscriber;->EMPTY_OBSERVER:Lrx/Observer;

    return-void
.end method

.method private constructor <init>(Lrx/internal/operators/BufferUntilSubscriber$State;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/BufferUntilSubscriber$State",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, "this":Lrx/internal/operators/BufferUntilSubscriber;, "Lrx/internal/operators/BufferUntilSubscriber<TT;>;"
    .local p1, "state":Lrx/internal/operators/BufferUntilSubscriber$State;, "Lrx/internal/operators/BufferUntilSubscriber$State<TT;>;"
    new-instance v0, Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction;

    invoke-direct {v0, p1}, Lrx/internal/operators/BufferUntilSubscriber$OnSubscribeAction;-><init>(Lrx/internal/operators/BufferUntilSubscriber$State;)V

    invoke-direct {p0, v0}, Lrx/subjects/Subject;-><init>(Lrx/Observable$OnSubscribe;)V

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/BufferUntilSubscriber;->forward:Z

    .line 135
    iput-object p1, p0, Lrx/internal/operators/BufferUntilSubscriber;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    .line 136
    return-void
.end method

.method static synthetic access$000()Lrx/Observer;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lrx/internal/operators/BufferUntilSubscriber;->EMPTY_OBSERVER:Lrx/Observer;

    return-object v0
.end method

.method public static create()Lrx/internal/operators/BufferUntilSubscriber;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/internal/operators/BufferUntilSubscriber",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Lrx/internal/operators/BufferUntilSubscriber$State;

    invoke-direct {v0}, Lrx/internal/operators/BufferUntilSubscriber$State;-><init>()V

    .line 58
    .local v0, "state":Lrx/internal/operators/BufferUntilSubscriber$State;, "Lrx/internal/operators/BufferUntilSubscriber$State<TT;>;"
    new-instance v1, Lrx/internal/operators/BufferUntilSubscriber;

    invoke-direct {v1, v0}, Lrx/internal/operators/BufferUntilSubscriber;-><init>(Lrx/internal/operators/BufferUntilSubscriber$State;)V

    return-object v1
.end method

.method private emit(Ljava/lang/Object;)V
    .locals 4
    .param p1, "v"    # Ljava/lang/Object;

    .prologue
    .line 139
    .local p0, "this":Lrx/internal/operators/BufferUntilSubscriber;, "Lrx/internal/operators/BufferUntilSubscriber<TT;>;"
    iget-object v1, p0, Lrx/internal/operators/BufferUntilSubscriber;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    iget-object v2, v1, Lrx/internal/operators/BufferUntilSubscriber$State;->guard:Ljava/lang/Object;

    monitor-enter v2

    .line 140
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/BufferUntilSubscriber;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    iget-object v1, v1, Lrx/internal/operators/BufferUntilSubscriber$State;->buffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object v1, p0, Lrx/internal/operators/BufferUntilSubscriber;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    iget-object v1, v1, Lrx/internal/operators/BufferUntilSubscriber$State;->observerRef:Lrx/Observer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lrx/internal/operators/BufferUntilSubscriber;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    iget-boolean v1, v1, Lrx/internal/operators/BufferUntilSubscriber$State;->emitting:Z

    if-nez v1, :cond_0

    .line 144
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/internal/operators/BufferUntilSubscriber;->forward:Z

    .line 145
    iget-object v1, p0, Lrx/internal/operators/BufferUntilSubscriber;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lrx/internal/operators/BufferUntilSubscriber$State;->emitting:Z

    .line 147
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    iget-boolean v1, p0, Lrx/internal/operators/BufferUntilSubscriber;->forward:Z

    if-eqz v1, :cond_1

    .line 150
    :goto_0
    iget-object v1, p0, Lrx/internal/operators/BufferUntilSubscriber;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    iget-object v1, v1, Lrx/internal/operators/BufferUntilSubscriber$State;->buffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .local v0, "o":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 151
    iget-object v1, p0, Lrx/internal/operators/BufferUntilSubscriber;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    iget-object v1, v1, Lrx/internal/operators/BufferUntilSubscriber$State;->nl:Lrx/internal/operators/NotificationLite;

    iget-object v2, p0, Lrx/internal/operators/BufferUntilSubscriber;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    iget-object v2, v2, Lrx/internal/operators/BufferUntilSubscriber$State;->observerRef:Lrx/Observer;

    invoke-virtual {v1, v2, v0}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z

    goto :goto_0

    .line 147
    .end local v0    # "o":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 156
    :cond_1
    return-void
.end method


# virtual methods
.method public hasObservers()Z
    .locals 2

    .prologue
    .line 190
    .local p0, "this":Lrx/internal/operators/BufferUntilSubscriber;, "Lrx/internal/operators/BufferUntilSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/BufferUntilSubscriber;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    iget-object v1, v0, Lrx/internal/operators/BufferUntilSubscriber$State;->guard:Ljava/lang/Object;

    monitor-enter v1

    .line 191
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/BufferUntilSubscriber;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    iget-object v0, v0, Lrx/internal/operators/BufferUntilSubscriber$State;->observerRef:Lrx/Observer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 160
    .local p0, "this":Lrx/internal/operators/BufferUntilSubscriber;, "Lrx/internal/operators/BufferUntilSubscriber<TT;>;"
    iget-boolean v0, p0, Lrx/internal/operators/BufferUntilSubscriber;->forward:Z

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lrx/internal/operators/BufferUntilSubscriber;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    iget-object v0, v0, Lrx/internal/operators/BufferUntilSubscriber$State;->observerRef:Lrx/Observer;

    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/BufferUntilSubscriber;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    iget-object v0, v0, Lrx/internal/operators/BufferUntilSubscriber$State;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/internal/operators/BufferUntilSubscriber;->emit(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 170
    .local p0, "this":Lrx/internal/operators/BufferUntilSubscriber;, "Lrx/internal/operators/BufferUntilSubscriber<TT;>;"
    iget-boolean v0, p0, Lrx/internal/operators/BufferUntilSubscriber;->forward:Z

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lrx/internal/operators/BufferUntilSubscriber;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    iget-object v0, v0, Lrx/internal/operators/BufferUntilSubscriber$State;->observerRef:Lrx/Observer;

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/BufferUntilSubscriber;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    iget-object v0, v0, Lrx/internal/operators/BufferUntilSubscriber$State;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, p1}, Lrx/internal/operators/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/internal/operators/BufferUntilSubscriber;->emit(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p0, "this":Lrx/internal/operators/BufferUntilSubscriber;, "Lrx/internal/operators/BufferUntilSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lrx/internal/operators/BufferUntilSubscriber;->forward:Z

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lrx/internal/operators/BufferUntilSubscriber;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    iget-object v0, v0, Lrx/internal/operators/BufferUntilSubscriber$State;->observerRef:Lrx/Observer;

    invoke-interface {v0, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 186
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/BufferUntilSubscriber;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    iget-object v0, v0, Lrx/internal/operators/BufferUntilSubscriber$State;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/internal/operators/BufferUntilSubscriber;->emit(Ljava/lang/Object;)V

    goto :goto_0
.end method
