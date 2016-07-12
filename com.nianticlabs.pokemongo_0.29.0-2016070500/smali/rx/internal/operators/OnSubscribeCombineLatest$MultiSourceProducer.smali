.class final Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;
.super Ljava/lang/Object;
.source "OnSubscribeCombineLatest.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeCombineLatest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MultiSourceProducer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Producer;"
    }
.end annotation


# static fields
.field private static final WIP:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater",
            "<",
            "Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final buffer:Lrx/internal/util/RxRingBuffer;

.field private final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TR;>;"
        }
    .end annotation
.end field

.field private final collectedValues:[Ljava/lang/Object;

.field private final combinator:Lrx/functions/FuncN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/FuncN",
            "<+TR;>;"
        }
    .end annotation
.end field

.field private final completion:Ljava/util/BitSet;

.field private volatile completionCount:I

.field private volatile counter:J

.field private final haveValues:Ljava/util/BitSet;

.field private volatile haveValuesCount:I

.field private final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field private final sources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lrx/Observable",
            "<+TT;>;>;"
        }
    .end annotation
.end field

.field private final started:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final subscribers:[Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber",
            "<TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 96
    const-class v0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;

    const-string v1, "counter"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->WIP:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lrx/Subscriber;Ljava/util/List;Lrx/functions/FuncN;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;",
            "Ljava/util/List",
            "<+",
            "Lrx/Observable",
            "<+TT;>;>;",
            "Lrx/functions/FuncN",
            "<+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;, "Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer<TT;TR;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    .local p2, "sources":Ljava/util/List;, "Ljava/util/List<+Lrx/Observable<+TT;>;>;"
    .local p3, "combinator":Lrx/functions/FuncN;, "Lrx/functions/FuncN<+TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 79
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 86
    invoke-static {}, Lrx/internal/util/RxRingBuffer;->getSpmcInstance()Lrx/internal/util/RxRingBuffer;

    move-result-object v1

    iput-object v1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->buffer:Lrx/internal/util/RxRingBuffer;

    .line 100
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->sources:Ljava/util/List;

    .line 101
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->child:Lrx/Subscriber;

    .line 102
    iput-object p3, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->combinator:Lrx/functions/FuncN;

    .line 104
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 105
    .local v0, "n":I
    new-array v1, v0, [Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;

    iput-object v1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->subscribers:[Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;

    .line 106
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->collectedValues:[Ljava/lang/Object;

    .line 107
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    iput-object v1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->haveValues:Ljava/util/BitSet;

    .line 108
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    iput-object v1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->completion:Ljava/util/BitSet;

    .line 109
    return-void
.end method


# virtual methods
.method public onCompleted(IZ)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "hadValue"    # Z

    .prologue
    .line 168
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;, "Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer<TT;TR;>;"
    if-nez p2, :cond_1

    .line 169
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->child:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->onCompleted()V

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    const/4 v0, 0x0

    .line 173
    .local v0, "done":Z
    monitor-enter p0

    .line 174
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->completion:Ljava/util/BitSet;

    invoke-virtual {v1, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 175
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->completion:Ljava/util/BitSet;

    invoke-virtual {v1, p1}, Ljava/util/BitSet;->set(I)V

    .line 176
    iget v1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->completionCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->completionCount:I

    .line 177
    iget v1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->completionCount:I

    iget-object v2, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->collectedValues:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v1, v2, :cond_3

    const/4 v0, 0x1

    .line 179
    :cond_2
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    if-eqz v0, :cond_0

    .line 181
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->buffer:Lrx/internal/util/RxRingBuffer;

    invoke-virtual {v1}, Lrx/internal/util/RxRingBuffer;->onCompleted()V

    .line 182
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->tick()V

    goto :goto_0

    .line 177
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 179
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 214
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;, "Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer<TT;TR;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 215
    return-void
.end method

.method public onNext(ILjava/lang/Object;)Z
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)Z"
        }
    .end annotation

    .prologue
    .line 190
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;, "Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer<TT;TR;>;"
    .local p2, "t":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    .line 191
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->haveValues:Ljava/util/BitSet;

    invoke-virtual {v1, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->haveValues:Ljava/util/BitSet;

    invoke-virtual {v1, p1}, Ljava/util/BitSet;->set(I)V

    .line 193
    iget v1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->haveValuesCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->haveValuesCount:I

    .line 195
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->collectedValues:[Ljava/lang/Object;

    aput-object p2, v1, p1

    .line 196
    iget v1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->haveValuesCount:I

    iget-object v2, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->collectedValues:[Ljava/lang/Object;

    array-length v2, v2

    if-eq v1, v2, :cond_1

    .line 198
    const/4 v1, 0x0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    :goto_0
    return v1

    .line 201
    :cond_1
    :try_start_1
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->buffer:Lrx/internal/util/RxRingBuffer;

    iget-object v2, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->combinator:Lrx/functions/FuncN;

    iget-object v3, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->collectedValues:[Ljava/lang/Object;

    invoke-interface {v2, v3}, Lrx/functions/FuncN;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/internal/util/RxRingBuffer;->onNext(Ljava/lang/Object;)V
    :try_end_1
    .catch Lrx/exceptions/MissingBackpressureException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 209
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->tick()V

    .line 210
    const/4 v1, 0x1

    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Lrx/exceptions/MissingBackpressureException;
    :try_start_3
    invoke-virtual {p0, v0}, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 208
    .end local v0    # "e":Lrx/exceptions/MissingBackpressureException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 204
    :catch_1
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_4
    invoke-virtual {p0, v0}, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->onError(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public request(J)V
    .locals 9
    .param p1, "n"    # J

    .prologue
    .line 113
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;, "Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer<TT;TR;>;"
    iget-object v6, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v6, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 114
    iget-object v6, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 121
    sget v6, Lrx/internal/util/RxRingBuffer;->SIZE:I

    iget-object v7, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->sources:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    div-int v4, v6, v7

    .line 122
    .local v4, "sizePerSubscriber":I
    sget v6, Lrx/internal/util/RxRingBuffer;->SIZE:I

    iget-object v7, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->sources:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    rem-int v1, v6, v7

    .line 123
    .local v1, "leftOver":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v6, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->sources:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_1

    .line 124
    iget-object v6, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->sources:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/Observable;

    .line 125
    .local v2, "o":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    move v5, v4

    .line 126
    .local v5, "toRequest":I
    iget-object v6, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->sources:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v0, v6, :cond_0

    .line 127
    add-int/2addr v5, v1

    .line 129
    :cond_0
    new-instance v3, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;

    iget-object v6, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->child:Lrx/Subscriber;

    invoke-direct {v3, v0, v5, v6, p0}, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;-><init>(IILrx/Subscriber;Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;)V

    .line 130
    .local v3, "s":Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;, "Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber<TT;TR;>;"
    iget-object v6, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->subscribers:[Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;

    aput-object v3, v6, v0

    .line 131
    invoke-virtual {v2, v3}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    .end local v0    # "i":I
    .end local v1    # "leftOver":I
    .end local v2    # "o":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .end local v3    # "s":Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;, "Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber<TT;TR;>;"
    .end local v4    # "sizePerSubscriber":I
    .end local v5    # "toRequest":I
    :cond_1
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->tick()V

    .line 135
    return-void
.end method

.method tick()V
    .locals 10

    .prologue
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;, "Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer<TT;TR;>;"
    const-wide/16 v8, 0x0

    .line 142
    sget-object v6, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->WIP:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v6, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 143
    const/4 v1, 0x0

    .line 146
    .local v1, "emitted":I
    :cond_0
    iget-object v6, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    .line 147
    iget-object v6, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->buffer:Lrx/internal/util/RxRingBuffer;

    invoke-virtual {v6}, Lrx/internal/util/RxRingBuffer;->poll()Ljava/lang/Object;

    move-result-object v4

    .line 148
    .local v4, "o":Ljava/lang/Object;
    if-eqz v4, :cond_1

    .line 149
    iget-object v6, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->buffer:Lrx/internal/util/RxRingBuffer;

    invoke-virtual {v6, v4}, Lrx/internal/util/RxRingBuffer;->isCompleted(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 150
    iget-object v6, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->child:Lrx/Subscriber;

    invoke-virtual {v6}, Lrx/Subscriber;->onCompleted()V

    .line 158
    .end local v4    # "o":Ljava/lang/Object;
    :cond_1
    :goto_0
    sget-object v6, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->WIP:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v6, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->decrementAndGet(Ljava/lang/Object;)J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-gtz v6, :cond_0

    .line 159
    if-lez v1, :cond_3

    .line 160
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->subscribers:[Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;

    .local v0, "arr$":[Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v5, v0, v2

    .line 161
    .local v5, "s":Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;, "Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber<TT;TR;>;"
    int-to-long v6, v1

    invoke-virtual {v5, v6, v7}, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;->requestUpTo(J)V

    .line 160
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 152
    .end local v0    # "arr$":[Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "s":Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;, "Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber<TT;TR;>;"
    .restart local v4    # "o":Ljava/lang/Object;
    :cond_2
    iget-object v6, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->buffer:Lrx/internal/util/RxRingBuffer;

    iget-object v7, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->child:Lrx/Subscriber;

    invoke-virtual {v6, v4, v7}, Lrx/internal/util/RxRingBuffer;->accept(Ljava/lang/Object;Lrx/Observer;)Z

    .line 153
    add-int/lit8 v1, v1, 0x1

    .line 154
    iget-object v6, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    goto :goto_0

    .line 165
    .end local v1    # "emitted":I
    .end local v4    # "o":Ljava/lang/Object;
    :cond_3
    return-void
.end method
