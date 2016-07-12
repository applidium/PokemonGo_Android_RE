.class final Lrx/observables/AbstractOnSubscribe$SubscriptionCompleter;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "AbstractOnSubscribe.java"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/observables/AbstractOnSubscribe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SubscriptionCompleter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Lrx/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6eefff08576a4bccL


# instance fields
.field private final state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/observables/AbstractOnSubscribe$SubscriptionState",
            "<TT;TS;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/observables/AbstractOnSubscribe$SubscriptionState",
            "<TT;TS;>;)V"
        }
    .end annotation

    .prologue
    .line 308
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$SubscriptionCompleter;, "Lrx/observables/AbstractOnSubscribe$SubscriptionCompleter<TT;TS;>;"
    .local p1, "state":Lrx/observables/AbstractOnSubscribe$SubscriptionState;, "Lrx/observables/AbstractOnSubscribe$SubscriptionState<TT;TS;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 309
    iput-object p1, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionCompleter;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    .line 310
    return-void
.end method

.method synthetic constructor <init>(Lrx/observables/AbstractOnSubscribe$SubscriptionState;Lrx/observables/AbstractOnSubscribe$1;)V
    .locals 0
    .param p1, "x0"    # Lrx/observables/AbstractOnSubscribe$SubscriptionState;
    .param p2, "x1"    # Lrx/observables/AbstractOnSubscribe$1;

    .prologue
    .line 305
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$SubscriptionCompleter;, "Lrx/observables/AbstractOnSubscribe$SubscriptionCompleter<TT;TS;>;"
    invoke-direct {p0, p1}, Lrx/observables/AbstractOnSubscribe$SubscriptionCompleter;-><init>(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)V

    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 313
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$SubscriptionCompleter;, "Lrx/observables/AbstractOnSubscribe$SubscriptionCompleter<TT;TS;>;"
    invoke-virtual {p0}, Lrx/observables/AbstractOnSubscribe$SubscriptionCompleter;->get()Z

    move-result v0

    return v0
.end method

.method public unsubscribe()V
    .locals 2

    .prologue
    .line 317
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$SubscriptionCompleter;, "Lrx/observables/AbstractOnSubscribe$SubscriptionCompleter<TT;TS;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lrx/observables/AbstractOnSubscribe$SubscriptionCompleter;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionCompleter;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-virtual {v0}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->free()V

    .line 320
    :cond_0
    return-void
.end method
