.class public final Lrx/subscriptions/RefCountSubscription;
.super Ljava/lang/Object;
.source "RefCountSubscription.java"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/subscriptions/RefCountSubscription$InnerSubscription;,
        Lrx/subscriptions/RefCountSubscription$State;
    }
.end annotation


# static fields
.field static final EMPTY_STATE:Lrx/subscriptions/RefCountSubscription$State;

.field static final STATE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater",
            "<",
            "Lrx/subscriptions/RefCountSubscription;",
            "Lrx/subscriptions/RefCountSubscription$State;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final actual:Lrx/Subscription;

.field volatile state:Lrx/subscriptions/RefCountSubscription$State;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 29
    new-instance v0, Lrx/subscriptions/RefCountSubscription$State;

    invoke-direct {v0, v1, v1}, Lrx/subscriptions/RefCountSubscription$State;-><init>(ZI)V

    sput-object v0, Lrx/subscriptions/RefCountSubscription;->EMPTY_STATE:Lrx/subscriptions/RefCountSubscription$State;

    .line 31
    const-class v0, Lrx/subscriptions/RefCountSubscription;

    const-class v1, Lrx/subscriptions/RefCountSubscription$State;

    const-string v2, "state"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/subscriptions/RefCountSubscription;->STATE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lrx/Subscription;)V
    .locals 2
    .param p1, "s"    # Lrx/Subscription;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Lrx/subscriptions/RefCountSubscription;->EMPTY_STATE:Lrx/subscriptions/RefCountSubscription$State;

    iput-object v0, p0, Lrx/subscriptions/RefCountSubscription;->state:Lrx/subscriptions/RefCountSubscription$State;

    .line 66
    if-nez p1, :cond_0

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "s"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    iput-object p1, p0, Lrx/subscriptions/RefCountSubscription;->actual:Lrx/Subscription;

    .line 70
    return-void
.end method

.method private unsubscribeActualIfApplicable(Lrx/subscriptions/RefCountSubscription$State;)V
    .locals 1
    .param p1, "state"    # Lrx/subscriptions/RefCountSubscription$State;

    .prologue
    .line 112
    iget-boolean v0, p1, Lrx/subscriptions/RefCountSubscription$State;->isUnsubscribed:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lrx/subscriptions/RefCountSubscription$State;->children:I

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lrx/subscriptions/RefCountSubscription;->actual:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 115
    :cond_0
    return-void
.end method


# virtual methods
.method public get()Lrx/Subscription;
    .locals 3

    .prologue
    .line 81
    :cond_0
    iget-object v1, p0, Lrx/subscriptions/RefCountSubscription;->state:Lrx/subscriptions/RefCountSubscription$State;

    .line 82
    .local v1, "oldState":Lrx/subscriptions/RefCountSubscription$State;
    iget-boolean v2, v1, Lrx/subscriptions/RefCountSubscription$State;->isUnsubscribed:Z

    if-eqz v2, :cond_1

    .line 83
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v2

    .line 89
    :goto_0
    return-object v2

    .line 85
    :cond_1
    invoke-virtual {v1}, Lrx/subscriptions/RefCountSubscription$State;->addChild()Lrx/subscriptions/RefCountSubscription$State;

    move-result-object v0

    .line 87
    .local v0, "newState":Lrx/subscriptions/RefCountSubscription$State;
    sget-object v2, Lrx/subscriptions/RefCountSubscription;->STATE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    new-instance v2, Lrx/subscriptions/RefCountSubscription$InnerSubscription;

    invoke-direct {v2, p0}, Lrx/subscriptions/RefCountSubscription$InnerSubscription;-><init>(Lrx/subscriptions/RefCountSubscription;)V

    goto :goto_0
.end method

.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lrx/subscriptions/RefCountSubscription;->state:Lrx/subscriptions/RefCountSubscription$State;

    iget-boolean v0, v0, Lrx/subscriptions/RefCountSubscription$State;->isUnsubscribed:Z

    return v0
.end method

.method public unsubscribe()V
    .locals 3

    .prologue
    .line 102
    :cond_0
    iget-object v1, p0, Lrx/subscriptions/RefCountSubscription;->state:Lrx/subscriptions/RefCountSubscription$State;

    .line 103
    .local v1, "oldState":Lrx/subscriptions/RefCountSubscription$State;
    iget-boolean v2, v1, Lrx/subscriptions/RefCountSubscription$State;->isUnsubscribed:Z

    if-eqz v2, :cond_1

    .line 109
    :goto_0
    return-void

    .line 106
    :cond_1
    invoke-virtual {v1}, Lrx/subscriptions/RefCountSubscription$State;->unsubscribe()Lrx/subscriptions/RefCountSubscription$State;

    move-result-object v0

    .line 107
    .local v0, "newState":Lrx/subscriptions/RefCountSubscription$State;
    sget-object v2, Lrx/subscriptions/RefCountSubscription;->STATE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    invoke-direct {p0, v0}, Lrx/subscriptions/RefCountSubscription;->unsubscribeActualIfApplicable(Lrx/subscriptions/RefCountSubscription$State;)V

    goto :goto_0
.end method

.method unsubscribeAChild()V
    .locals 3

    .prologue
    .line 120
    :cond_0
    iget-object v1, p0, Lrx/subscriptions/RefCountSubscription;->state:Lrx/subscriptions/RefCountSubscription$State;

    .line 121
    .local v1, "oldState":Lrx/subscriptions/RefCountSubscription$State;
    invoke-virtual {v1}, Lrx/subscriptions/RefCountSubscription$State;->removeChild()Lrx/subscriptions/RefCountSubscription$State;

    move-result-object v0

    .line 122
    .local v0, "newState":Lrx/subscriptions/RefCountSubscription$State;
    sget-object v2, Lrx/subscriptions/RefCountSubscription;->STATE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    invoke-direct {p0, v0}, Lrx/subscriptions/RefCountSubscription;->unsubscribeActualIfApplicable(Lrx/subscriptions/RefCountSubscription$State;)V

    .line 124
    return-void
.end method
