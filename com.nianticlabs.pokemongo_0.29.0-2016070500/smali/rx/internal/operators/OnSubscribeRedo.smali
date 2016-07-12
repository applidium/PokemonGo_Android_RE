.class public final Lrx/internal/operators/OnSubscribeRedo;
.super Ljava/lang/Object;
.source "OnSubscribeRedo.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeRedo$RetryWithPredicate;,
        Lrx/internal/operators/OnSubscribeRedo$RedoFinite;
    }
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


# static fields
.field static final REDO_INFINITE:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<",
            "Lrx/Observable",
            "<+",
            "Lrx/Notification",
            "<*>;>;",
            "Lrx/Observable",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final controlHandlerFunction:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<+",
            "Lrx/Notification",
            "<*>;>;+",
            "Lrx/Observable",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final scheduler:Lrx/Scheduler;

.field private final source:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final stopOnComplete:Z

.field private final stopOnError:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lrx/internal/operators/OnSubscribeRedo$1;

    invoke-direct {v0}, Lrx/internal/operators/OnSubscribeRedo$1;-><init>()V

    sput-object v0, Lrx/internal/operators/OnSubscribeRedo;->REDO_INFINITE:Lrx/functions/Func1;

    return-void
.end method

.method private constructor <init>(Lrx/Observable;Lrx/functions/Func1;ZZLrx/Scheduler;)V
    .locals 0
    .param p3, "stopOnComplete"    # Z
    .param p4, "stopOnError"    # Z
    .param p5, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<TT;>;",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<+",
            "Lrx/Notification",
            "<*>;>;+",
            "Lrx/Observable",
            "<*>;>;ZZ",
            "Lrx/Scheduler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 183
    .local p0, "this":Lrx/internal/operators/OnSubscribeRedo;, "Lrx/internal/operators/OnSubscribeRedo<TT;>;"
    .local p1, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p2, "f":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<+Lrx/Notification<*>;>;+Lrx/Observable<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeRedo;->source:Lrx/Observable;

    .line 185
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeRedo;->controlHandlerFunction:Lrx/functions/Func1;

    .line 186
    iput-boolean p3, p0, Lrx/internal/operators/OnSubscribeRedo;->stopOnComplete:Z

    .line 187
    iput-boolean p4, p0, Lrx/internal/operators/OnSubscribeRedo;->stopOnError:Z

    .line 188
    iput-object p5, p0, Lrx/internal/operators/OnSubscribeRedo;->scheduler:Lrx/Scheduler;

    .line 189
    return-void
.end method

.method static synthetic access$200(Lrx/internal/operators/OnSubscribeRedo;)Lrx/Observable;
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OnSubscribeRedo;

    .prologue
    .line 55
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRedo;->source:Lrx/Observable;

    return-object v0
.end method

.method static synthetic access$300(Lrx/internal/operators/OnSubscribeRedo;)Z
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OnSubscribeRedo;

    .prologue
    .line 55
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeRedo;->stopOnComplete:Z

    return v0
.end method

.method static synthetic access$400(Lrx/internal/operators/OnSubscribeRedo;)Z
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OnSubscribeRedo;

    .prologue
    .line 55
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeRedo;->stopOnError:Z

    return v0
.end method

.method public static redo(Lrx/Observable;Lrx/functions/Func1;Lrx/Scheduler;)Lrx/Observable;
    .locals 6
    .param p2, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT;>;",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<+",
            "Lrx/Notification",
            "<*>;>;+",
            "Lrx/Observable",
            "<*>;>;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "notificationHandler":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<+Lrx/Notification<*>;>;+Lrx/Observable<*>;>;"
    const/4 v3, 0x0

    .line 173
    new-instance v0, Lrx/internal/operators/OnSubscribeRedo;

    move-object v1, p0

    move-object v2, p1

    move v4, v3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/OnSubscribeRedo;-><init>(Lrx/Observable;Lrx/functions/Func1;ZZLrx/Scheduler;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static repeat(Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 144
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->trampoline()Lrx/Scheduler;

    move-result-object v0

    invoke-static {p0, v0}, Lrx/internal/operators/OnSubscribeRedo;->repeat(Lrx/Observable;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static repeat(Lrx/Observable;J)Lrx/Observable;
    .locals 1
    .param p1, "count"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT;>;J)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->trampoline()Lrx/Scheduler;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lrx/internal/operators/OnSubscribeRedo;->repeat(Lrx/Observable;JLrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static repeat(Lrx/Observable;JLrx/Scheduler;)Lrx/Observable;
    .locals 5
    .param p1, "count"    # J
    .param p3, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT;>;J",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    const-wide/16 v2, 0x0

    .line 156
    cmp-long v0, p1, v2

    if-nez v0, :cond_0

    .line 157
    invoke-static {}, Lrx/Observable;->empty()Lrx/Observable;

    move-result-object v0

    .line 161
    :goto_0
    return-object v0

    .line 159
    :cond_0
    cmp-long v0, p1, v2

    if-gez v0, :cond_1

    .line 160
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "count >= 0 expected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_1
    new-instance v0, Lrx/internal/operators/OnSubscribeRedo$RedoFinite;

    const-wide/16 v2, 0x1

    sub-long v2, p1, v2

    invoke-direct {v0, v2, v3}, Lrx/internal/operators/OnSubscribeRedo$RedoFinite;-><init>(J)V

    invoke-static {p0, v0, p3}, Lrx/internal/operators/OnSubscribeRedo;->repeat(Lrx/Observable;Lrx/functions/Func1;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    goto :goto_0
.end method

.method public static repeat(Lrx/Observable;Lrx/Scheduler;)Lrx/Observable;
    .locals 1
    .param p1, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT;>;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    sget-object v0, Lrx/internal/operators/OnSubscribeRedo;->REDO_INFINITE:Lrx/functions/Func1;

    invoke-static {p0, v0, p1}, Lrx/internal/operators/OnSubscribeRedo;->repeat(Lrx/Observable;Lrx/functions/Func1;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static repeat(Lrx/Observable;Lrx/functions/Func1;)Lrx/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT;>;",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<+",
            "Lrx/Notification",
            "<*>;>;+",
            "Lrx/Observable",
            "<*>;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 165
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "notificationHandler":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<+Lrx/Notification<*>;>;+Lrx/Observable<*>;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeRedo;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lrx/schedulers/Schedulers;->trampoline()Lrx/Scheduler;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/OnSubscribeRedo;-><init>(Lrx/Observable;Lrx/functions/Func1;ZZLrx/Scheduler;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static repeat(Lrx/Observable;Lrx/functions/Func1;Lrx/Scheduler;)Lrx/Observable;
    .locals 6
    .param p2, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT;>;",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<+",
            "Lrx/Notification",
            "<*>;>;+",
            "Lrx/Observable",
            "<*>;>;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 169
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "notificationHandler":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<+Lrx/Notification<*>;>;+Lrx/Observable<*>;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeRedo;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/OnSubscribeRedo;-><init>(Lrx/Observable;Lrx/functions/Func1;ZZLrx/Scheduler;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static retry(Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    sget-object v0, Lrx/internal/operators/OnSubscribeRedo;->REDO_INFINITE:Lrx/functions/Func1;

    invoke-static {p0, v0}, Lrx/internal/operators/OnSubscribeRedo;->retry(Lrx/Observable;Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static retry(Lrx/Observable;J)Lrx/Observable;
    .locals 5
    .param p1, "count"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT;>;J)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    const-wide/16 v2, 0x0

    .line 128
    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 129
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "count >= 0 expected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    cmp-long v0, p1, v2

    if-nez v0, :cond_1

    .line 132
    .end local p0    # "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    :goto_0
    return-object p0

    .restart local p0    # "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    :cond_1
    new-instance v0, Lrx/internal/operators/OnSubscribeRedo$RedoFinite;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/OnSubscribeRedo$RedoFinite;-><init>(J)V

    invoke-static {p0, v0}, Lrx/internal/operators/OnSubscribeRedo;->retry(Lrx/Observable;Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p0

    goto :goto_0
.end method

.method public static retry(Lrx/Observable;Lrx/functions/Func1;)Lrx/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT;>;",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<+",
            "Lrx/Notification",
            "<*>;>;+",
            "Lrx/Observable",
            "<*>;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "notificationHandler":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<+Lrx/Notification<*>;>;+Lrx/Observable<*>;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeRedo;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lrx/schedulers/Schedulers;->trampoline()Lrx/Scheduler;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/OnSubscribeRedo;-><init>(Lrx/Observable;Lrx/functions/Func1;ZZLrx/Scheduler;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static retry(Lrx/Observable;Lrx/functions/Func1;Lrx/Scheduler;)Lrx/Observable;
    .locals 6
    .param p2, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT;>;",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<+",
            "Lrx/Notification",
            "<*>;>;+",
            "Lrx/Observable",
            "<*>;>;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 140
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "notificationHandler":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<+Lrx/Notification<*>;>;+Lrx/Observable<*>;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeRedo;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/OnSubscribeRedo;-><init>(Lrx/Observable;Lrx/functions/Func1;ZZLrx/Scheduler;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 55
    .local p0, "this":Lrx/internal/operators/OnSubscribeRedo;, "Lrx/internal/operators/OnSubscribeRedo<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeRedo;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p0, "this":Lrx/internal/operators/OnSubscribeRedo;, "Lrx/internal/operators/OnSubscribeRedo<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v16, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 198
    .local v16, "resumeBoundary":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v7, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v12, 0x0

    invoke-direct {v7, v12, v13}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 200
    .local v7, "consumerCapacity":Ljava/util/concurrent/atomic/AtomicLong;
    move-object/from16 v0, p0

    iget-object v3, v0, Lrx/internal/operators/OnSubscribeRedo;->scheduler:Lrx/Scheduler;

    invoke-virtual {v3}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v14

    .line 201
    .local v14, "worker":Lrx/Scheduler$Worker;
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 203
    new-instance v8, Lrx/subscriptions/SerialSubscription;

    invoke-direct {v8}, Lrx/subscriptions/SerialSubscription;-><init>()V

    .line 204
    .local v8, "sourceSubscriptions":Lrx/subscriptions/SerialSubscription;
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 210
    invoke-static {}, Lrx/subjects/BehaviorSubject;->create()Lrx/subjects/BehaviorSubject;

    move-result-object v5

    .line 211
    .local v5, "terminals":Lrx/subjects/BehaviorSubject;, "Lrx/subjects/BehaviorSubject<Lrx/Notification<*>;>;"
    invoke-static {}, Lrx/observers/Subscribers;->empty()Lrx/Subscriber;

    move-result-object v24

    .line 214
    .local v24, "dummySubscriber":Lrx/Subscriber;, "Lrx/Subscriber<Lrx/Notification<*>;>;"
    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lrx/subjects/BehaviorSubject;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 216
    new-instance v6, Lrx/internal/producers/ProducerArbiter;

    invoke-direct {v6}, Lrx/internal/producers/ProducerArbiter;-><init>()V

    .line 218
    .local v6, "arbiter":Lrx/internal/producers/ProducerArbiter;
    new-instance v2, Lrx/internal/operators/OnSubscribeRedo$2;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v8}, Lrx/internal/operators/OnSubscribeRedo$2;-><init>(Lrx/internal/operators/OnSubscribeRedo;Lrx/Subscriber;Lrx/subjects/BehaviorSubject;Lrx/internal/producers/ProducerArbiter;Ljava/util/concurrent/atomic/AtomicLong;Lrx/subscriptions/SerialSubscription;)V

    .line 285
    .local v2, "subscribeToSource":Lrx/functions/Action0;
    move-object/from16 v0, p0

    iget-object v3, v0, Lrx/internal/operators/OnSubscribeRedo;->controlHandlerFunction:Lrx/functions/Func1;

    new-instance v4, Lrx/internal/operators/OnSubscribeRedo$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lrx/internal/operators/OnSubscribeRedo$3;-><init>(Lrx/internal/operators/OnSubscribeRedo;)V

    invoke-virtual {v5, v4}, Lrx/subjects/BehaviorSubject;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v4

    invoke-interface {v3, v4}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lrx/Observable;

    .line 320
    .local v11, "restarts":Lrx/Observable;, "Lrx/Observable<*>;"
    new-instance v9, Lrx/internal/operators/OnSubscribeRedo$4;

    move-object/from16 v10, p0

    move-object/from16 v12, p1

    move-object v13, v7

    move-object v15, v2

    invoke-direct/range {v9 .. v16}, Lrx/internal/operators/OnSubscribeRedo$4;-><init>(Lrx/internal/operators/OnSubscribeRedo;Lrx/Observable;Lrx/Subscriber;Ljava/util/concurrent/atomic/AtomicLong;Lrx/Scheduler$Worker;Lrx/functions/Action0;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v14, v9}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;)Lrx/Subscription;

    .line 358
    new-instance v17, Lrx/internal/operators/OnSubscribeRedo$5;

    move-object/from16 v18, p0

    move-object/from16 v19, v7

    move-object/from16 v20, v6

    move-object/from16 v21, v16

    move-object/from16 v22, v14

    move-object/from16 v23, v2

    invoke-direct/range {v17 .. v23}, Lrx/internal/operators/OnSubscribeRedo$5;-><init>(Lrx/internal/operators/OnSubscribeRedo;Ljava/util/concurrent/atomic/AtomicLong;Lrx/internal/producers/ProducerArbiter;Ljava/util/concurrent/atomic/AtomicBoolean;Lrx/Scheduler$Worker;Lrx/functions/Action0;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 371
    return-void
.end method
