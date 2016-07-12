.class Lcom/upsight/android/googlepushservices/internal/GooglePushServices$2;
.super Ljava/lang/Object;
.source "GooglePushServices.java"

# interfaces
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->registerInBackground(Ljava/lang/String;)V
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
    .line 178
    iput-object p1, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$2;->this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 0

    .prologue
    .line 182
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 188
    iget-object v4, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$2;->this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    monitor-enter v4

    .line 189
    :try_start_0
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$2;->this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    # getter for: Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mPendingRegisterListeners:Ljava/util/Set;
    invoke-static {v3}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->access$100(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;)Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 190
    .local v2, "pendingListeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnRegisterListener;>;"
    iget-object v3, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$2;->this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    # getter for: Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mPendingRegisterListeners:Ljava/util/Set;
    invoke-static {v3}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->access$100(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 192
    iget-object v3, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$2;->this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    const/4 v5, 0x0

    # setter for: Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mRegistrationIsInProgress:Z
    invoke-static {v3, v5}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->access$202(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;Z)Z

    .line 193
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnRegisterListener;

    .line 196
    .local v1, "lst":Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnRegisterListener;
    new-instance v3, Lcom/upsight/android/UpsightException;

    invoke-direct {v3, p1}, Lcom/upsight/android/UpsightException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, v3}, Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnRegisterListener;->onFailure(Lcom/upsight/android/UpsightException;)V

    goto :goto_0

    .line 193
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "lst":Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnRegisterListener;
    .end local v2    # "pendingListeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnRegisterListener;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 198
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "pendingListeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnRegisterListener;>;"
    :cond_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 178
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$2;->onNext(Ljava/lang/String;)V

    return-void
.end method

.method public onNext(Ljava/lang/String;)V
    .locals 6
    .param p1, "registrationId"    # Ljava/lang/String;

    .prologue
    .line 204
    iget-object v4, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$2;->this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    monitor-enter v4

    .line 205
    :try_start_0
    iget-object v3, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$2;->this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    # invokes: Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->storeRegistrationId(Ljava/lang/String;)V
    invoke-static {v3, p1}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->access$300(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;Ljava/lang/String;)V

    .line 207
    invoke-static {}, Lcom/upsight/android/analytics/event/comm/UpsightCommRegisterEvent;->createBuilder()Lcom/upsight/android/analytics/event/comm/UpsightCommRegisterEvent$Builder;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/upsight/android/analytics/event/comm/UpsightCommRegisterEvent$Builder;->setToken(Ljava/lang/String;)Lcom/upsight/android/analytics/event/comm/UpsightCommRegisterEvent$Builder;

    move-result-object v3

    iget-object v5, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$2;->this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    # getter for: Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mUpsight:Lcom/upsight/android/UpsightContext;
    invoke-static {v5}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->access$000(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;)Lcom/upsight/android/UpsightContext;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/upsight/android/analytics/event/comm/UpsightCommRegisterEvent$Builder;->record(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;

    .line 209
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$2;->this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    # getter for: Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mPendingRegisterListeners:Ljava/util/Set;
    invoke-static {v3}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->access$100(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;)Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 210
    .local v2, "pendingListeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnRegisterListener;>;"
    iget-object v3, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$2;->this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    # getter for: Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mPendingRegisterListeners:Ljava/util/Set;
    invoke-static {v3}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->access$100(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 212
    iget-object v3, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$2;->this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    const/4 v5, 0x0

    # setter for: Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mRegistrationIsInProgress:Z
    invoke-static {v3, v5}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->access$202(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;Z)Z

    .line 213
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnRegisterListener;

    .line 216
    .local v1, "lst":Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnRegisterListener;
    invoke-interface {v1, p1}, Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnRegisterListener;->onSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 213
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "lst":Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnRegisterListener;
    .end local v2    # "pendingListeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnRegisterListener;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 218
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "pendingListeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnRegisterListener;>;"
    :cond_0
    return-void
.end method
