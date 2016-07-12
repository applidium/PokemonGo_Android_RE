.class public Lcom/upsight/android/internal/persistence/subscription/Subscriptions;
.super Ljava/lang/Object;
.source "Subscriptions.java"


# static fields
.field public static final MAX_QUEUE_LENGTH:I = 0xa


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method public static create(Ljava/lang/Object;)Lcom/upsight/android/internal/persistence/subscription/AnnotatedSubscriber;
    .locals 4
    .param p0, "target"    # Ljava/lang/Object;

    .prologue
    .line 62
    new-instance v1, Lcom/upsight/android/internal/persistence/subscription/SubscriptionHandlerVisitor;

    invoke-direct {v1, p0}, Lcom/upsight/android/internal/persistence/subscription/SubscriptionHandlerVisitor;-><init>(Ljava/lang/Object;)V

    .line 63
    .local v1, "visitor":Lcom/upsight/android/internal/persistence/subscription/SubscriptionHandlerVisitor;
    new-instance v0, Lcom/upsight/android/internal/persistence/subscription/ClassSubscriptionReader;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/upsight/android/internal/persistence/subscription/ClassSubscriptionReader;-><init>(Ljava/lang/Class;)V

    .line 64
    .local v0, "reader":Lcom/upsight/android/internal/persistence/subscription/ClassSubscriptionReader;
    invoke-virtual {v0, v1}, Lcom/upsight/android/internal/persistence/subscription/ClassSubscriptionReader;->accept(Lcom/upsight/android/internal/persistence/subscription/ClassSubscriptionVisitor;)V

    .line 66
    new-instance v2, Lcom/upsight/android/internal/persistence/subscription/AnnotatedSubscriber;

    invoke-virtual {v1}, Lcom/upsight/android/internal/persistence/subscription/SubscriptionHandlerVisitor;->getHandlers()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/upsight/android/internal/persistence/subscription/AnnotatedSubscriber;-><init>(Ljava/util/Set;)V

    return-object v2
.end method

.method public static from(Lrx/Subscription;)Lcom/upsight/android/persistence/UpsightSubscription;
    .locals 1
    .param p0, "subscription"    # Lrx/Subscription;

    .prologue
    .line 58
    new-instance v0, Lcom/upsight/android/internal/persistence/subscription/SubscriptionAdapter;

    invoke-direct {v0, p0}, Lcom/upsight/android/internal/persistence/subscription/SubscriptionAdapter;-><init>(Lrx/Subscription;)V

    return-object v0
.end method

.method public static publishCreated(Lcom/squareup/otto/Bus;Ljava/lang/String;)Lrx/functions/Action1;
    .locals 1
    .param p0, "bus"    # Lcom/squareup/otto/Bus;
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/squareup/otto/Bus;",
            "Ljava/lang/String;",
            ")",
            "Lrx/functions/Action1",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 27
    new-instance v0, Lcom/upsight/android/internal/persistence/subscription/Subscriptions$1;

    invoke-direct {v0, p0, p1}, Lcom/upsight/android/internal/persistence/subscription/Subscriptions$1;-><init>(Lcom/squareup/otto/Bus;Ljava/lang/String;)V

    return-object v0
.end method

.method public static publishRemoved(Lcom/squareup/otto/Bus;Ljava/lang/String;)Lrx/functions/Action1;
    .locals 1
    .param p0, "bus"    # Lcom/squareup/otto/Bus;
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/squareup/otto/Bus;",
            "Ljava/lang/String;",
            ")",
            "Lrx/functions/Action1",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Lcom/upsight/android/internal/persistence/subscription/Subscriptions$3;

    invoke-direct {v0, p0, p1}, Lcom/upsight/android/internal/persistence/subscription/Subscriptions$3;-><init>(Lcom/squareup/otto/Bus;Ljava/lang/String;)V

    return-object v0
.end method

.method public static publishUpdated(Lcom/squareup/otto/Bus;Ljava/lang/String;)Lrx/functions/Action1;
    .locals 1
    .param p0, "bus"    # Lcom/squareup/otto/Bus;
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/squareup/otto/Bus;",
            "Ljava/lang/String;",
            ")",
            "Lrx/functions/Action1",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Lcom/upsight/android/internal/persistence/subscription/Subscriptions$2;

    invoke-direct {v0, p0, p1}, Lcom/upsight/android/internal/persistence/subscription/Subscriptions$2;-><init>(Lcom/squareup/otto/Bus;Ljava/lang/String;)V

    return-object v0
.end method

.method public static toObservable(Lcom/squareup/otto/Bus;)Lrx/Observable;
    .locals 2
    .param p0, "bus"    # Lcom/squareup/otto/Bus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/otto/Bus;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Lcom/upsight/android/internal/persistence/subscription/OnSubscribeBus;

    invoke-direct {v0, p0}, Lcom/upsight/android/internal/persistence/subscription/OnSubscribeBus;-><init>(Lcom/squareup/otto/Bus;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lrx/Observable;->onBackpressureBlock(I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
