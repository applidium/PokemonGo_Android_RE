.class public final Lrx/subscriptions/BooleanSubscription;
.super Ljava/lang/Object;
.source "BooleanSubscription.java"

# interfaces
.implements Lrx/Subscription;


# static fields
.field static final UNSUBSCRIBED_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater",
            "<",
            "Lrx/subscriptions/BooleanSubscription;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final action:Lrx/functions/Action0;

.field volatile unsubscribed:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    const-class v0, Lrx/subscriptions/BooleanSubscription;

    const-string v1, "unsubscribed"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/subscriptions/BooleanSubscription;->UNSUBSCRIBED_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/subscriptions/BooleanSubscription;->action:Lrx/functions/Action0;

    .line 37
    return-void
.end method

.method private constructor <init>(Lrx/functions/Action0;)V
    .locals 0
    .param p1, "action"    # Lrx/functions/Action0;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lrx/subscriptions/BooleanSubscription;->action:Lrx/functions/Action0;

    .line 41
    return-void
.end method

.method public static create()Lrx/subscriptions/BooleanSubscription;
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lrx/subscriptions/BooleanSubscription;

    invoke-direct {v0}, Lrx/subscriptions/BooleanSubscription;-><init>()V

    return-object v0
.end method

.method public static create(Lrx/functions/Action0;)Lrx/subscriptions/BooleanSubscription;
    .locals 1
    .param p0, "onUnsubscribe"    # Lrx/functions/Action0;

    .prologue
    .line 60
    new-instance v0, Lrx/subscriptions/BooleanSubscription;

    invoke-direct {v0, p0}, Lrx/subscriptions/BooleanSubscription;-><init>(Lrx/functions/Action0;)V

    return-object v0
.end method


# virtual methods
.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lrx/subscriptions/BooleanSubscription;->unsubscribed:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final unsubscribe()V
    .locals 3

    .prologue
    .line 70
    sget-object v0, Lrx/subscriptions/BooleanSubscription;->UNSUBSCRIBED_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lrx/subscriptions/BooleanSubscription;->action:Lrx/functions/Action0;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lrx/subscriptions/BooleanSubscription;->action:Lrx/functions/Action0;

    invoke-interface {v0}, Lrx/functions/Action0;->call()V

    .line 75
    :cond_0
    return-void
.end method
