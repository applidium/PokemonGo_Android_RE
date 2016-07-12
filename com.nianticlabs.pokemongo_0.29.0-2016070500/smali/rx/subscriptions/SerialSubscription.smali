.class public final Lrx/subscriptions/SerialSubscription;
.super Ljava/lang/Object;
.source "SerialSubscription.java"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/subscriptions/SerialSubscription$State;
    }
.end annotation


# static fields
.field static final STATE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater",
            "<",
            "Lrx/subscriptions/SerialSubscription;",
            "Lrx/subscriptions/SerialSubscription$State;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field volatile state:Lrx/subscriptions/SerialSubscription$State;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    const-class v0, Lrx/subscriptions/SerialSubscription;

    const-class v1, Lrx/subscriptions/SerialSubscription$State;

    const-string v2, "state"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/subscriptions/SerialSubscription;->STATE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lrx/subscriptions/SerialSubscription$State;

    const/4 v1, 0x0

    invoke-static {}, Lrx/subscriptions/Subscriptions;->empty()Lrx/Subscription;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lrx/subscriptions/SerialSubscription$State;-><init>(ZLrx/Subscription;)V

    iput-object v0, p0, Lrx/subscriptions/SerialSubscription;->state:Lrx/subscriptions/SerialSubscription$State;

    .line 31
    return-void
.end method


# virtual methods
.method public get()Lrx/Subscription;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lrx/subscriptions/SerialSubscription;->state:Lrx/subscriptions/SerialSubscription$State;

    iget-object v0, v0, Lrx/subscriptions/SerialSubscription$State;->subscription:Lrx/Subscription;

    return-object v0
.end method

.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lrx/subscriptions/SerialSubscription;->state:Lrx/subscriptions/SerialSubscription$State;

    iget-boolean v0, v0, Lrx/subscriptions/SerialSubscription$State;->isUnsubscribed:Z

    return v0
.end method

.method public set(Lrx/Subscription;)V
    .locals 4
    .param p1, "s"    # Lrx/Subscription;

    .prologue
    .line 79
    if-nez p1, :cond_0

    .line 80
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Subscription can not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 85
    :cond_0
    iget-object v1, p0, Lrx/subscriptions/SerialSubscription;->state:Lrx/subscriptions/SerialSubscription$State;

    .line 86
    .local v1, "oldState":Lrx/subscriptions/SerialSubscription$State;
    iget-boolean v2, v1, Lrx/subscriptions/SerialSubscription$State;->isUnsubscribed:Z

    if-eqz v2, :cond_1

    .line 87
    invoke-interface {p1}, Lrx/Subscription;->unsubscribe()V

    .line 94
    :goto_0
    return-void

    .line 90
    :cond_1
    invoke-virtual {v1, p1}, Lrx/subscriptions/SerialSubscription$State;->set(Lrx/Subscription;)Lrx/subscriptions/SerialSubscription$State;

    move-result-object v0

    .line 92
    .local v0, "newState":Lrx/subscriptions/SerialSubscription$State;
    sget-object v2, Lrx/subscriptions/SerialSubscription;->STATE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    iget-object v2, v1, Lrx/subscriptions/SerialSubscription$State;->subscription:Lrx/Subscription;

    invoke-interface {v2}, Lrx/Subscription;->unsubscribe()V

    goto :goto_0
.end method

.method public unsubscribe()V
    .locals 3

    .prologue
    .line 60
    :cond_0
    iget-object v1, p0, Lrx/subscriptions/SerialSubscription;->state:Lrx/subscriptions/SerialSubscription$State;

    .line 61
    .local v1, "oldState":Lrx/subscriptions/SerialSubscription$State;
    iget-boolean v2, v1, Lrx/subscriptions/SerialSubscription$State;->isUnsubscribed:Z

    if-eqz v2, :cond_1

    .line 68
    :goto_0
    return-void

    .line 64
    :cond_1
    invoke-virtual {v1}, Lrx/subscriptions/SerialSubscription$State;->unsubscribe()Lrx/subscriptions/SerialSubscription$State;

    move-result-object v0

    .line 66
    .local v0, "newState":Lrx/subscriptions/SerialSubscription$State;
    sget-object v2, Lrx/subscriptions/SerialSubscription;->STATE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    iget-object v2, v1, Lrx/subscriptions/SerialSubscription$State;->subscription:Lrx/Subscription;

    invoke-interface {v2}, Lrx/Subscription;->unsubscribe()V

    goto :goto_0
.end method
