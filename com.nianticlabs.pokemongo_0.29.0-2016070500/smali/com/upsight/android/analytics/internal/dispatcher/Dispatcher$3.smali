.class Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$3;
.super Ljava/lang/Object;
.source "Dispatcher.java"

# interfaces
.implements Lcom/upsight/android/persistence/UpsightDataStoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->onDelivery(Lcom/upsight/android/analytics/internal/DataStoreRecord;ZZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/upsight/android/persistence/UpsightDataStoreListener",
        "<",
        "Lcom/upsight/android/analytics/dispatcher/AnalyticsEventDeliveryStatus;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;


# direct methods
.method constructor <init>(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;)V
    .locals 0

    .prologue
    .line 345
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$3;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/upsight/android/UpsightException;)V
    .locals 4
    .param p1, "exception"    # Lcom/upsight/android/UpsightException;

    .prologue
    .line 353
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$3;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    # getter for: Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mLogger:Lcom/upsight/android/logger/UpsightLogger;
    invoke-static {v0}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->access$100(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;)Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v0

    const-string v1, "Dispatcher"

    const-string v2, "Could not store DeliveryStatus."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 354
    return-void
.end method

.method public onSuccess(Lcom/upsight/android/analytics/dispatcher/AnalyticsEventDeliveryStatus;)V
    .locals 1
    .param p1, "result"    # Lcom/upsight/android/analytics/dispatcher/AnalyticsEventDeliveryStatus;

    .prologue
    .line 348
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$3;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    # getter for: Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mUpsightDataStore:Lcom/upsight/android/persistence/UpsightDataStore;
    invoke-static {v0}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->access$600(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;)Lcom/upsight/android/persistence/UpsightDataStore;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/upsight/android/persistence/UpsightDataStore;->remove(Ljava/lang/Object;)Lcom/upsight/android/persistence/UpsightSubscription;

    .line 349
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 345
    check-cast p1, Lcom/upsight/android/analytics/dispatcher/AnalyticsEventDeliveryStatus;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$3;->onSuccess(Lcom/upsight/android/analytics/dispatcher/AnalyticsEventDeliveryStatus;)V

    return-void
.end method
