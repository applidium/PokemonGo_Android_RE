.class Lcom/upsight/android/analytics/internal/provider/LocationTracker$1;
.super Ljava/lang/Object;
.source "LocationTracker.java"

# interfaces
.implements Lcom/upsight/android/persistence/UpsightDataStoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/analytics/internal/provider/LocationTracker;->track(Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;)V
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
        "Ljava/util/Set",
        "<",
        "Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/analytics/internal/provider/LocationTracker;

.field final synthetic val$newLocation:Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;


# direct methods
.method constructor <init>(Lcom/upsight/android/analytics/internal/provider/LocationTracker;Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/provider/LocationTracker$1;->this$0:Lcom/upsight/android/analytics/internal/provider/LocationTracker;

    iput-object p2, p0, Lcom/upsight/android/analytics/internal/provider/LocationTracker$1;->val$newLocation:Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/upsight/android/UpsightException;)V
    .locals 4
    .param p1, "exception"    # Lcom/upsight/android/UpsightException;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/LocationTracker$1;->this$0:Lcom/upsight/android/analytics/internal/provider/LocationTracker;

    # getter for: Lcom/upsight/android/analytics/internal/provider/LocationTracker;->mLogger:Lcom/upsight/android/logger/UpsightLogger;
    invoke-static {v0}, Lcom/upsight/android/analytics/internal/provider/LocationTracker;->access$200(Lcom/upsight/android/analytics/internal/provider/LocationTracker;)Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v0

    # getter for: Lcom/upsight/android/analytics/internal/provider/LocationTracker;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/upsight/android/analytics/internal/provider/LocationTracker;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to fetch location data."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 40
    check-cast p1, Ljava/util/Set;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/upsight/android/analytics/internal/provider/LocationTracker$1;->onSuccess(Ljava/util/Set;)V

    return-void
.end method

.method public onSuccess(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;>;"
    const/4 v1, 0x0

    .line 44
    .local v1, "location":Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 45
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "location":Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;
    check-cast v1, Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;

    .line 47
    .restart local v1    # "location":Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/provider/LocationTracker$1;->val$newLocation:Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;

    invoke-virtual {v2}, Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;->setLatitude(D)V

    .line 48
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/provider/LocationTracker$1;->val$newLocation:Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;

    invoke-virtual {v2}, Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;->setLongitude(D)V

    .line 49
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/provider/LocationTracker$1;->val$newLocation:Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;

    invoke-virtual {v2}, Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;->getTimeZone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;->setTimeZone(Ljava/lang/String;)V

    .line 52
    :cond_0
    if-nez v1, :cond_1

    .line 53
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/provider/LocationTracker$1;->val$newLocation:Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;

    .line 55
    :cond_1
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/provider/LocationTracker$1;->this$0:Lcom/upsight/android/analytics/internal/provider/LocationTracker;

    # getter for: Lcom/upsight/android/analytics/internal/provider/LocationTracker;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;
    invoke-static {v2}, Lcom/upsight/android/analytics/internal/provider/LocationTracker;->access$000(Lcom/upsight/android/analytics/internal/provider/LocationTracker;)Lcom/upsight/android/persistence/UpsightDataStore;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/upsight/android/persistence/UpsightDataStore;->store(Ljava/lang/Object;)Lcom/upsight/android/persistence/UpsightSubscription;

    .line 56
    return-void
.end method
