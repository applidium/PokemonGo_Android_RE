.class Lcom/upsight/android/internal/persistence/subscription/OnSubscribeBus;
.super Ljava/lang/Object;
.source "OnSubscribeBus.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/internal/persistence/subscription/OnSubscribeBus$BusAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBus:Lcom/squareup/otto/Bus;


# direct methods
.method constructor <init>(Lcom/squareup/otto/Bus;)V
    .locals 0
    .param p1, "bus"    # Lcom/squareup/otto/Bus;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/upsight/android/internal/persistence/subscription/OnSubscribeBus;->mBus:Lcom/squareup/otto/Bus;

    .line 24
    return-void
.end method

.method static synthetic access$100(Lcom/upsight/android/internal/persistence/subscription/OnSubscribeBus;)Lcom/squareup/otto/Bus;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/internal/persistence/subscription/OnSubscribeBus;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/upsight/android/internal/persistence/subscription/OnSubscribeBus;->mBus:Lcom/squareup/otto/Bus;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 18
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/upsight/android/internal/persistence/subscription/OnSubscribeBus;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent;>;"
    new-instance v0, Lcom/upsight/android/internal/persistence/subscription/OnSubscribeBus$BusAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/upsight/android/internal/persistence/subscription/OnSubscribeBus$BusAdapter;-><init>(Lrx/Subscriber;Lcom/upsight/android/internal/persistence/subscription/OnSubscribeBus$1;)V

    .line 29
    .local v0, "adapter":Lcom/upsight/android/internal/persistence/subscription/OnSubscribeBus$BusAdapter;
    iget-object v1, p0, Lcom/upsight/android/internal/persistence/subscription/OnSubscribeBus;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v1, v0}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    .line 30
    new-instance v1, Lcom/upsight/android/internal/persistence/subscription/OnSubscribeBus$1;

    invoke-direct {v1, p0, v0}, Lcom/upsight/android/internal/persistence/subscription/OnSubscribeBus$1;-><init>(Lcom/upsight/android/internal/persistence/subscription/OnSubscribeBus;Lcom/upsight/android/internal/persistence/subscription/OnSubscribeBus$BusAdapter;)V

    invoke-static {v1}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v1

    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 36
    return-void
.end method
