.class public final Lrx/subscriptions/Subscriptions;
.super Ljava/lang/Object;
.source "Subscriptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/subscriptions/Subscriptions$1;,
        Lrx/subscriptions/Subscriptions$Unsubscribed;,
        Lrx/subscriptions/Subscriptions$FutureSubscription;
    }
.end annotation


# static fields
.field private static final UNSUBSCRIBED:Lrx/subscriptions/Subscriptions$Unsubscribed;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 123
    new-instance v0, Lrx/subscriptions/Subscriptions$Unsubscribed;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrx/subscriptions/Subscriptions$Unsubscribed;-><init>(Lrx/subscriptions/Subscriptions$1;)V

    sput-object v0, Lrx/subscriptions/Subscriptions;->UNSUBSCRIBED:Lrx/subscriptions/Subscriptions$Unsubscribed;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static create(Lrx/functions/Action0;)Lrx/Subscription;
    .locals 1
    .param p0, "unsubscribe"    # Lrx/functions/Action0;

    .prologue
    .line 75
    invoke-static {p0}, Lrx/subscriptions/BooleanSubscription;->create(Lrx/functions/Action0;)Lrx/subscriptions/BooleanSubscription;

    move-result-object v0

    return-object v0
.end method

.method public static empty()Lrx/Subscription;
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lrx/subscriptions/BooleanSubscription;->create()Lrx/subscriptions/BooleanSubscription;

    move-result-object v0

    return-object v0
.end method

.method public static from(Ljava/util/concurrent/Future;)Lrx/Subscription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    new-instance v0, Lrx/subscriptions/Subscriptions$FutureSubscription;

    invoke-direct {v0, p0}, Lrx/subscriptions/Subscriptions$FutureSubscription;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public static varargs from([Lrx/Subscription;)Lrx/subscriptions/CompositeSubscription;
    .locals 1
    .param p0, "subscriptions"    # [Lrx/Subscription;

    .prologue
    .line 117
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0, p0}, Lrx/subscriptions/CompositeSubscription;-><init>([Lrx/Subscription;)V

    return-object v0
.end method

.method public static unsubscribed()Lrx/Subscription;
    .locals 1
    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 64
    sget-object v0, Lrx/subscriptions/Subscriptions;->UNSUBSCRIBED:Lrx/subscriptions/Subscriptions$Unsubscribed;

    return-object v0
.end method
