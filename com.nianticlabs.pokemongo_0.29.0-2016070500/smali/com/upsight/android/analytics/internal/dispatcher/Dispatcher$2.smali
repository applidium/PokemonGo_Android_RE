.class Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$2;
.super Ljava/lang/Object;
.source "Dispatcher.java"

# interfaces
.implements Lcom/upsight/android/persistence/UpsightDataStoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->fetchCurrentConfig()V
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
        "Lcom/upsight/android/analytics/configuration/UpsightConfiguration;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;


# direct methods
.method constructor <init>(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$2;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/upsight/android/UpsightException;)V
    .locals 6
    .param p1, "exception"    # Lcom/upsight/android/UpsightException;

    .prologue
    .line 227
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$2;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    # getter for: Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mLogger:Lcom/upsight/android/logger/UpsightLogger;
    invoke-static {v1}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->access$100(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;)Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    const-string v2, "Dispatcher"

    const-string v3, "Could not fetch config from store."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-interface {v1, v2, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$2;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    # getter for: Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mCurrentConfig:Lcom/upsight/android/analytics/internal/dispatcher/Config;
    invoke-static {v1}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->access$200(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;)Lcom/upsight/android/analytics/internal/dispatcher/Config;

    move-result-object v0

    .line 230
    .local v0, "currentConfig":Lcom/upsight/android/analytics/internal/dispatcher/Config;
    if-nez v0, :cond_0

    .line 231
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$2;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    # invokes: Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->applyDefaultConfiguration()V
    invoke-static {v1}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->access$500(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;)V

    .line 233
    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 205
    check-cast p1, Ljava/util/Set;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$2;->onSuccess(Ljava/util/Set;)V

    return-void
.end method

.method public onSuccess(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/upsight/android/analytics/configuration/UpsightConfiguration;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 208
    .local p1, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/analytics/configuration/UpsightConfiguration;>;"
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$2;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    # getter for: Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mCurrentConfig:Lcom/upsight/android/analytics/internal/dispatcher/Config;
    invoke-static {v3}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->access$200(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;)Lcom/upsight/android/analytics/internal/dispatcher/Config;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    const/4 v1, 0x0

    .line 213
    .local v1, "hasApplied":Z
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;

    .line 214
    .local v0, "config":Lcom/upsight/android/analytics/configuration/UpsightConfiguration;
    const-string v3, "upsight.configuration.dispatcher"

    invoke-virtual {v0}, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;->getScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$2;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    # invokes: Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->isUpsightConfigurationValid(Lcom/upsight/android/analytics/configuration/UpsightConfiguration;)Z
    invoke-static {v3, v0}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->access$300(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;Lcom/upsight/android/analytics/configuration/UpsightConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 216
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$2;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;->getConfiguration()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->applyConfiguration(Ljava/lang/String;)Z
    invoke-static {v3, v4}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->access$400(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;Ljava/lang/String;)Z

    move-result v1

    goto :goto_1

    .line 220
    .end local v0    # "config":Lcom/upsight/android/analytics/configuration/UpsightConfiguration;
    :cond_3
    if-nez v1, :cond_0

    .line 221
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$2;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    # invokes: Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->applyDefaultConfiguration()V
    invoke-static {v3}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->access$500(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;)V

    goto :goto_0
.end method
