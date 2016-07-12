.class Lcom/upsight/android/analytics/internal/session/ManualTracker$1;
.super Ljava/lang/Object;
.source "ManualTracker.java"

# interfaces
.implements Lcom/upsight/android/persistence/UpsightDataStoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/analytics/internal/session/ManualTracker;->track(Landroid/app/Activity;Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;Lcom/upsight/android/analytics/internal/session/SessionInitializer;)V
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
        "Lcom/upsight/android/analytics/internal/session/ApplicationStatus;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/analytics/internal/session/ManualTracker;


# direct methods
.method constructor <init>(Lcom/upsight/android/analytics/internal/session/ManualTracker;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker$1;->this$0:Lcom/upsight/android/analytics/internal/session/ManualTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/upsight/android/UpsightException;)V
    .locals 0
    .param p1, "exception"    # Lcom/upsight/android/UpsightException;

    .prologue
    .line 84
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 56
    check-cast p1, Ljava/util/Set;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/upsight/android/analytics/internal/session/ManualTracker$1;->onSuccess(Ljava/util/Set;)V

    return-void
.end method

.method public onSuccess(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/upsight/android/analytics/internal/session/ApplicationStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "statusEvents":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/analytics/internal/session/ApplicationStatus;>;"
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 61
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker$1;->this$0:Lcom/upsight/android/analytics/internal/session/ManualTracker;

    # getter for: Lcom/upsight/android/analytics/internal/session/ManualTracker;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;
    invoke-static {v3}, Lcom/upsight/android/analytics/internal/session/ManualTracker;->access$000(Lcom/upsight/android/analytics/internal/session/ManualTracker;)Lcom/upsight/android/persistence/UpsightDataStore;

    move-result-object v3

    new-instance v4, Lcom/upsight/android/analytics/internal/session/ApplicationStatus;

    sget-object v5, Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;->FOREGROUND:Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;

    invoke-direct {v4, v5}, Lcom/upsight/android/analytics/internal/session/ApplicationStatus;-><init>(Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;)V

    invoke-interface {v3, v4}, Lcom/upsight/android/persistence/UpsightDataStore;->store(Ljava/lang/Object;)Lcom/upsight/android/persistence/UpsightSubscription;

    .line 79
    :cond_0
    return-void

    .line 65
    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 66
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/upsight/android/analytics/internal/session/ApplicationStatus;>;"
    const/4 v2, 0x0

    .line 67
    .local v2, "updatedFlag":Z
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/analytics/internal/session/ApplicationStatus;

    .line 69
    .local v1, "statusEvent":Lcom/upsight/android/analytics/internal/session/ApplicationStatus;
    if-nez v2, :cond_2

    .line 70
    sget-object v3, Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;->FOREGROUND:Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;

    iput-object v3, v1, Lcom/upsight/android/analytics/internal/session/ApplicationStatus;->state:Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;

    .line 71
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker$1;->this$0:Lcom/upsight/android/analytics/internal/session/ManualTracker;

    # getter for: Lcom/upsight/android/analytics/internal/session/ManualTracker;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;
    invoke-static {v3}, Lcom/upsight/android/analytics/internal/session/ManualTracker;->access$000(Lcom/upsight/android/analytics/internal/session/ManualTracker;)Lcom/upsight/android/persistence/UpsightDataStore;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/upsight/android/persistence/UpsightDataStore;->store(Ljava/lang/Object;)Lcom/upsight/android/persistence/UpsightSubscription;

    .line 72
    const/4 v2, 0x1

    goto :goto_0

    .line 75
    :cond_2
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker$1;->this$0:Lcom/upsight/android/analytics/internal/session/ManualTracker;

    # getter for: Lcom/upsight/android/analytics/internal/session/ManualTracker;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;
    invoke-static {v3}, Lcom/upsight/android/analytics/internal/session/ManualTracker;->access$000(Lcom/upsight/android/analytics/internal/session/ManualTracker;)Lcom/upsight/android/persistence/UpsightDataStore;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/upsight/android/persistence/UpsightDataStore;->remove(Ljava/lang/Object;)Lcom/upsight/android/persistence/UpsightSubscription;

    goto :goto_0
.end method
