.class Lcom/upsight/android/internal/persistence/subscription/BusPublishAction;
.super Ljava/lang/Object;
.source "BusPublishAction.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1",
        "<",
        "Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private final bus:Lcom/squareup/otto/Bus;


# direct methods
.method constructor <init>(Lcom/squareup/otto/Bus;)V
    .locals 0
    .param p1, "bus"    # Lcom/squareup/otto/Bus;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/upsight/android/internal/persistence/subscription/BusPublishAction;->bus:Lcom/squareup/otto/Bus;

    .line 21
    return-void
.end method


# virtual methods
.method public call(Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/upsight/android/internal/persistence/subscription/BusPublishAction;->bus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 26
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 15
    check-cast p1, Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/upsight/android/internal/persistence/subscription/BusPublishAction;->call(Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent;)V

    return-void
.end method
