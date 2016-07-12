.class final Lrx/subjects/SubjectSubscriptionManager;
.super Ljava/lang/Object;
.source "SubjectSubscriptionManager.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;,
        Lrx/subjects/SubjectSubscriptionManager$State;
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
.field static final LATEST_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater",
            "<",
            "Lrx/subjects/SubjectSubscriptionManager;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final STATE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater",
            "<",
            "Lrx/subjects/SubjectSubscriptionManager;",
            "Lrx/subjects/SubjectSubscriptionManager$State;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field active:Z

.field volatile latest:Ljava/lang/Object;

.field public final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field onAdded:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1",
            "<",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field onStart:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1",
            "<",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field onTerminated:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1",
            "<",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field volatile state:Lrx/subjects/SubjectSubscriptionManager$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/SubjectSubscriptionManager$State",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const-class v0, Lrx/subjects/SubjectSubscriptionManager;

    const-class v1, Lrx/subjects/SubjectSubscriptionManager$State;

    const-string v2, "state"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/subjects/SubjectSubscriptionManager;->STATE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 43
    const-class v0, Lrx/subjects/SubjectSubscriptionManager;

    const-class v1, Ljava/lang/Object;

    const-string v2, "latest"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/subjects/SubjectSubscriptionManager;->LATEST_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 36
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget-object v0, Lrx/subjects/SubjectSubscriptionManager$State;->EMPTY:Lrx/subjects/SubjectSubscriptionManager$State;

    iput-object v0, p0, Lrx/subjects/SubjectSubscriptionManager;->state:Lrx/subjects/SubjectSubscriptionManager$State;

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/subjects/SubjectSubscriptionManager;->active:Z

    .line 48
    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v0

    iput-object v0, p0, Lrx/subjects/SubjectSubscriptionManager;->onStart:Lrx/functions/Action1;

    .line 50
    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v0

    iput-object v0, p0, Lrx/subjects/SubjectSubscriptionManager;->onAdded:Lrx/functions/Action1;

    .line 52
    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v0

    iput-object v0, p0, Lrx/subjects/SubjectSubscriptionManager;->onTerminated:Lrx/functions/Action1;

    .line 54
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/subjects/SubjectSubscriptionManager;->nl:Lrx/internal/operators/NotificationLite;

    .line 205
    return-void
.end method


# virtual methods
.method add(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    .local p1, "o":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    :cond_0
    iget-object v1, p0, Lrx/subjects/SubjectSubscriptionManager;->state:Lrx/subjects/SubjectSubscriptionManager$State;

    .line 95
    .local v1, "oldState":Lrx/subjects/SubjectSubscriptionManager$State;
    iget-boolean v2, v1, Lrx/subjects/SubjectSubscriptionManager$State;->terminated:Z

    if-eqz v2, :cond_1

    .line 96
    iget-object v2, p0, Lrx/subjects/SubjectSubscriptionManager;->onTerminated:Lrx/functions/Action1;

    invoke-interface {v2, p1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 97
    const/4 v2, 0x0

    .line 102
    :goto_0
    return v2

    .line 99
    :cond_1
    invoke-virtual {v1, p1}, Lrx/subjects/SubjectSubscriptionManager$State;->add(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Lrx/subjects/SubjectSubscriptionManager$State;

    move-result-object v0

    .line 100
    .local v0, "newState":Lrx/subjects/SubjectSubscriptionManager$State;
    sget-object v2, Lrx/subjects/SubjectSubscriptionManager;->STATE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    iget-object v2, p0, Lrx/subjects/SubjectSubscriptionManager;->onAdded:Lrx/functions/Action1;

    invoke-interface {v2, p1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 102
    const/4 v2, 0x1

    goto :goto_0
.end method

.method addUnsubscriber(Lrx/Subscriber;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .local p2, "bo":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    new-instance v0, Lrx/subjects/SubjectSubscriptionManager$1;

    invoke-direct {v0, p0, p2}, Lrx/subjects/SubjectSubscriptionManager$1;-><init>(Lrx/subjects/SubjectSubscriptionManager;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)V

    invoke-static {v0}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 74
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 35
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/subjects/SubjectSubscriptionManager;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    invoke-direct {v0, p1}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;-><init>(Lrx/Observer;)V

    .line 58
    .local v0, "bo":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    invoke-virtual {p0, p1, v0}, Lrx/subjects/SubjectSubscriptionManager;->addUnsubscriber(Lrx/Subscriber;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)V

    .line 59
    iget-object v1, p0, Lrx/subjects/SubjectSubscriptionManager;->onStart:Lrx/functions/Action1;

    invoke-interface {v1, v0}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 60
    invoke-virtual {p1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    invoke-virtual {p0, v0}, Lrx/subjects/SubjectSubscriptionManager;->add(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {p0, v0}, Lrx/subjects/SubjectSubscriptionManager;->remove(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)V

    .line 65
    :cond_0
    return-void
.end method

.method get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 81
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager;->latest:Ljava/lang/Object;

    return-object v0
.end method

.method next(Ljava/lang/Object;)[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;
    .locals 1
    .param p1, "n"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")[",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    invoke-virtual {p0, p1}, Lrx/subjects/SubjectSubscriptionManager;->set(Ljava/lang/Object;)V

    .line 129
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager;->state:Lrx/subjects/SubjectSubscriptionManager$State;

    iget-object v0, v0, Lrx/subjects/SubjectSubscriptionManager$State;->observers:[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    return-object v0
.end method

.method observers()[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager;->state:Lrx/subjects/SubjectSubscriptionManager$State;

    iget-object v0, v0, Lrx/subjects/SubjectSubscriptionManager$State;->observers:[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    return-object v0
.end method

.method remove(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    .local p1, "o":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    :cond_0
    iget-object v1, p0, Lrx/subjects/SubjectSubscriptionManager;->state:Lrx/subjects/SubjectSubscriptionManager$State;

    .line 113
    .local v1, "oldState":Lrx/subjects/SubjectSubscriptionManager$State;
    iget-boolean v2, v1, Lrx/subjects/SubjectSubscriptionManager$State;->terminated:Z

    if-eqz v2, :cond_2

    .line 118
    :cond_1
    :goto_0
    return-void

    .line 116
    :cond_2
    invoke-virtual {v1, p1}, Lrx/subjects/SubjectSubscriptionManager$State;->remove(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Lrx/subjects/SubjectSubscriptionManager$State;

    move-result-object v0

    .line 117
    .local v0, "newState":Lrx/subjects/SubjectSubscriptionManager$State;
    if-eq v0, v1, :cond_1

    sget-object v2, Lrx/subjects/SubjectSubscriptionManager;->STATE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method set(Ljava/lang/Object;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 77
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    iput-object p1, p0, Lrx/subjects/SubjectSubscriptionManager;->latest:Ljava/lang/Object;

    .line 78
    return-void
.end method

.method terminate(Ljava/lang/Object;)[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;
    .locals 3
    .param p1, "n"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")[",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    invoke-virtual {p0, p1}, Lrx/subjects/SubjectSubscriptionManager;->set(Ljava/lang/Object;)V

    .line 139
    const/4 v1, 0x0

    iput-boolean v1, p0, Lrx/subjects/SubjectSubscriptionManager;->active:Z

    .line 141
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager;->state:Lrx/subjects/SubjectSubscriptionManager$State;

    .line 142
    .local v0, "oldState":Lrx/subjects/SubjectSubscriptionManager$State;, "Lrx/subjects/SubjectSubscriptionManager$State<TT;>;"
    iget-boolean v1, v0, Lrx/subjects/SubjectSubscriptionManager$State;->terminated:Z

    if-eqz v1, :cond_0

    .line 143
    sget-object v1, Lrx/subjects/SubjectSubscriptionManager$State;->NO_OBSERVERS:[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    .line 145
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lrx/subjects/SubjectSubscriptionManager;->STATE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v2, Lrx/subjects/SubjectSubscriptionManager$State;->TERMINATED:Lrx/subjects/SubjectSubscriptionManager$State;

    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/subjects/SubjectSubscriptionManager$State;

    iget-object v1, v1, Lrx/subjects/SubjectSubscriptionManager$State;->observers:[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    goto :goto_0
.end method
