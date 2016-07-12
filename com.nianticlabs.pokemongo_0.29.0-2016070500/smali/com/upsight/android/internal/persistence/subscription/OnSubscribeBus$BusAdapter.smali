.class Lcom/upsight/android/internal/persistence/subscription/OnSubscribeBus$BusAdapter;
.super Ljava/lang/Object;
.source "OnSubscribeBus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/internal/persistence/subscription/OnSubscribeBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BusAdapter"
.end annotation


# instance fields
.field private final mChild:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-",
            "Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lrx/Subscriber;)V
    .locals 0
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
    .line 42
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/upsight/android/internal/persistence/subscription/OnSubscribeBus$BusAdapter;->mChild:Lrx/Subscriber;

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Lrx/Subscriber;Lcom/upsight/android/internal/persistence/subscription/OnSubscribeBus$1;)V
    .locals 0
    .param p1, "x0"    # Lrx/Subscriber;
    .param p2, "x1"    # Lcom/upsight/android/internal/persistence/subscription/OnSubscribeBus$1;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/upsight/android/internal/persistence/subscription/OnSubscribeBus$BusAdapter;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onPersistenceEvent(Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/upsight/android/internal/persistence/subscription/OnSubscribeBus$BusAdapter;->mChild:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/upsight/android/internal/persistence/subscription/OnSubscribeBus$BusAdapter;->mChild:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 51
    :cond_0
    return-void
.end method
