.class Lcom/upsight/android/internal/persistence/subscription/OnSubscribeBus$1;
.super Ljava/lang/Object;
.source "OnSubscribeBus.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/internal/persistence/subscription/OnSubscribeBus;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/internal/persistence/subscription/OnSubscribeBus;

.field final synthetic val$adapter:Lcom/upsight/android/internal/persistence/subscription/OnSubscribeBus$BusAdapter;


# direct methods
.method constructor <init>(Lcom/upsight/android/internal/persistence/subscription/OnSubscribeBus;Lcom/upsight/android/internal/persistence/subscription/OnSubscribeBus$BusAdapter;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/upsight/android/internal/persistence/subscription/OnSubscribeBus$1;->this$0:Lcom/upsight/android/internal/persistence/subscription/OnSubscribeBus;

    iput-object p2, p0, Lcom/upsight/android/internal/persistence/subscription/OnSubscribeBus$1;->val$adapter:Lcom/upsight/android/internal/persistence/subscription/OnSubscribeBus$BusAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/upsight/android/internal/persistence/subscription/OnSubscribeBus$1;->this$0:Lcom/upsight/android/internal/persistence/subscription/OnSubscribeBus;

    # getter for: Lcom/upsight/android/internal/persistence/subscription/OnSubscribeBus;->mBus:Lcom/squareup/otto/Bus;
    invoke-static {v0}, Lcom/upsight/android/internal/persistence/subscription/OnSubscribeBus;->access$100(Lcom/upsight/android/internal/persistence/subscription/OnSubscribeBus;)Lcom/squareup/otto/Bus;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/internal/persistence/subscription/OnSubscribeBus$1;->val$adapter:Lcom/upsight/android/internal/persistence/subscription/OnSubscribeBus$BusAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->unregister(Ljava/lang/Object;)V

    .line 34
    return-void
.end method
