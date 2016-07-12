.class final Lrx/subscriptions/RefCountSubscription$InnerSubscription;
.super Ljava/lang/Object;
.source "RefCountSubscription.java"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subscriptions/RefCountSubscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InnerSubscription"
.end annotation


# static fields
.field static final INNER_DONE_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater",
            "<",
            "Lrx/subscriptions/RefCountSubscription$InnerSubscription;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field volatile innerDone:I

.field final parent:Lrx/subscriptions/RefCountSubscription;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 130
    const-class v0, Lrx/subscriptions/RefCountSubscription$InnerSubscription;

    const-string v1, "innerDone"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/subscriptions/RefCountSubscription$InnerSubscription;->INNER_DONE_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lrx/subscriptions/RefCountSubscription;)V
    .locals 0
    .param p1, "parent"    # Lrx/subscriptions/RefCountSubscription;

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lrx/subscriptions/RefCountSubscription$InnerSubscription;->parent:Lrx/subscriptions/RefCountSubscription;

    .line 134
    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lrx/subscriptions/RefCountSubscription$InnerSubscription;->innerDone:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unsubscribe()V
    .locals 3

    .prologue
    .line 137
    sget-object v0, Lrx/subscriptions/RefCountSubscription$InnerSubscription;->INNER_DONE_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lrx/subscriptions/RefCountSubscription$InnerSubscription;->parent:Lrx/subscriptions/RefCountSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/RefCountSubscription;->unsubscribeAChild()V

    .line 140
    :cond_0
    return-void
.end method
