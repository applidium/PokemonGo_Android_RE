.class public final Lrx/subscriptions/MultipleAssignmentSubscription;
.super Ljava/lang/Object;
.source "MultipleAssignmentSubscription.java"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/subscriptions/MultipleAssignmentSubscription$State;
    }
.end annotation


# static fields
.field static final STATE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater",
            "<",
            "Lrx/subscriptions/MultipleAssignmentSubscription;",
            "Lrx/subscriptions/MultipleAssignmentSubscription$State;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field volatile state:Lrx/subscriptions/MultipleAssignmentSubscription$State;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const-class v0, Lrx/subscriptions/MultipleAssignmentSubscription;

    const-class v1, Lrx/subscriptions/MultipleAssignmentSubscription$State;

    const-string v2, "state"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/subscriptions/MultipleAssignmentSubscription;->STATE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lrx/subscriptions/MultipleAssignmentSubscription$State;

    const/4 v1, 0x0

    invoke-static {}, Lrx/subscriptions/Subscriptions;->empty()Lrx/Subscription;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lrx/subscriptions/MultipleAssignmentSubscription$State;-><init>(ZLrx/Subscription;)V

    iput-object v0, p0, Lrx/subscriptions/MultipleAssignmentSubscription;->state:Lrx/subscriptions/MultipleAssignmentSubscription$State;

    .line 33
    return-void
.end method


# virtual methods
.method public get()Lrx/Subscription;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lrx/subscriptions/MultipleAssignmentSubscription;->state:Lrx/subscriptions/MultipleAssignmentSubscription$State;

    iget-object v0, v0, Lrx/subscriptions/MultipleAssignmentSubscription$State;->subscription:Lrx/Subscription;

    return-object v0
.end method

.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lrx/subscriptions/MultipleAssignmentSubscription;->state:Lrx/subscriptions/MultipleAssignmentSubscription$State;

    iget-boolean v0, v0, Lrx/subscriptions/MultipleAssignmentSubscription$State;->isUnsubscribed:Z

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
    iget-object v1, p0, Lrx/subscriptions/MultipleAssignmentSubscription;->state:Lrx/subscriptions/MultipleAssignmentSubscription$State;

    .line 86
    .local v1, "oldState":Lrx/subscriptions/MultipleAssignmentSubscription$State;
    iget-boolean v2, v1, Lrx/subscriptions/MultipleAssignmentSubscription$State;->isUnsubscribed:Z

    if-eqz v2, :cond_1

    .line 87
    invoke-interface {p1}, Lrx/Subscription;->unsubscribe()V

    .line 93
    :goto_0
    return-void

    .line 90
    :cond_1
    invoke-virtual {v1, p1}, Lrx/subscriptions/MultipleAssignmentSubscription$State;->set(Lrx/Subscription;)Lrx/subscriptions/MultipleAssignmentSubscription$State;

    move-result-object v0

    .line 92
    .local v0, "newState":Lrx/subscriptions/MultipleAssignmentSubscription$State;
    sget-object v2, Lrx/subscriptions/MultipleAssignmentSubscription;->STATE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public unsubscribe()V
    .locals 3

    .prologue
    .line 61
    :cond_0
    iget-object v1, p0, Lrx/subscriptions/MultipleAssignmentSubscription;->state:Lrx/subscriptions/MultipleAssignmentSubscription$State;

    .line 62
    .local v1, "oldState":Lrx/subscriptions/MultipleAssignmentSubscription$State;
    iget-boolean v2, v1, Lrx/subscriptions/MultipleAssignmentSubscription$State;->isUnsubscribed:Z

    if-eqz v2, :cond_1

    .line 69
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-virtual {v1}, Lrx/subscriptions/MultipleAssignmentSubscription$State;->unsubscribe()Lrx/subscriptions/MultipleAssignmentSubscription$State;

    move-result-object v0

    .line 67
    .local v0, "newState":Lrx/subscriptions/MultipleAssignmentSubscription$State;
    sget-object v2, Lrx/subscriptions/MultipleAssignmentSubscription;->STATE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    iget-object v2, v1, Lrx/subscriptions/MultipleAssignmentSubscription$State;->subscription:Lrx/Subscription;

    invoke-interface {v2}, Lrx/Subscription;->unsubscribe()V

    goto :goto_0
.end method
