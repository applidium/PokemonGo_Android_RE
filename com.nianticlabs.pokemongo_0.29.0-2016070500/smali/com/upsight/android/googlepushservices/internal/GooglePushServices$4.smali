.class Lcom/upsight/android/googlepushservices/internal/GooglePushServices$4;
.super Ljava/lang/Object;
.source "GooglePushServices.java"

# interfaces
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->unregisterInBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observer",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;


# direct methods
.method constructor <init>(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$4;->this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 6

    .prologue
    .line 270
    iget-object v4, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$4;->this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    monitor-enter v4

    .line 271
    :try_start_0
    invoke-static {}, Lcom/upsight/android/analytics/event/comm/UpsightCommUnregisterEvent;->createBuilder()Lcom/upsight/android/analytics/event/comm/UpsightCommUnregisterEvent$Builder;

    move-result-object v3

    iget-object v5, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$4;->this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    # getter for: Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mUpsight:Lcom/upsight/android/UpsightContext;
    invoke-static {v5}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->access$000(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;)Lcom/upsight/android/UpsightContext;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/upsight/android/analytics/event/comm/UpsightCommUnregisterEvent$Builder;->record(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;

    .line 273
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$4;->this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    # getter for: Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mPendingUnregisterListeners:Ljava/util/Set;
    invoke-static {v3}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->access$400(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;)Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 274
    .local v2, "pendingListeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnUnregisterListener;>;"
    iget-object v3, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$4;->this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    # getter for: Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mPendingUnregisterListeners:Ljava/util/Set;
    invoke-static {v3}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->access$400(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 276
    iget-object v3, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$4;->this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    const/4 v5, 0x0

    # setter for: Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mUnregistrationIsInProgress:Z
    invoke-static {v3, v5}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->access$502(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;Z)Z

    .line 277
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnUnregisterListener;

    .line 280
    .local v1, "lst":Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnUnregisterListener;
    invoke-interface {v1}, Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnUnregisterListener;->onSuccess()V

    goto :goto_0

    .line 277
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "lst":Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnUnregisterListener;
    .end local v2    # "pendingListeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnUnregisterListener;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 282
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "pendingListeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnUnregisterListener;>;"
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 288
    iget-object v4, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$4;->this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    monitor-enter v4

    .line 289
    :try_start_0
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$4;->this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    # getter for: Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mPendingUnregisterListeners:Ljava/util/Set;
    invoke-static {v3}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->access$400(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;)Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 290
    .local v2, "pendingListeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnUnregisterListener;>;"
    iget-object v3, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$4;->this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    # getter for: Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mPendingUnregisterListeners:Ljava/util/Set;
    invoke-static {v3}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->access$400(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 292
    iget-object v3, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$4;->this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    const/4 v5, 0x0

    # setter for: Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mUnregistrationIsInProgress:Z
    invoke-static {v3, v5}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->access$502(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;Z)Z

    .line 293
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnUnregisterListener;

    .line 296
    .local v1, "lst":Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnUnregisterListener;
    new-instance v3, Lcom/upsight/android/UpsightException;

    invoke-direct {v3, p1}, Lcom/upsight/android/UpsightException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, v3}, Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnUnregisterListener;->onFailure(Lcom/upsight/android/UpsightException;)V

    goto :goto_0

    .line 293
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "lst":Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnUnregisterListener;
    .end local v2    # "pendingListeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnUnregisterListener;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 298
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "pendingListeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnUnregisterListener;>;"
    :cond_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 265
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$4;->onNext(Ljava/lang/String;)V

    return-void
.end method

.method public onNext(Ljava/lang/String;)V
    .locals 0
    .param p1, "args"    # Ljava/lang/String;

    .prologue
    .line 303
    return-void
.end method
