.class Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$1;
.super Ljava/lang/Object;
.source "ConfigurationManager.java"

# interfaces
.implements Lcom/upsight/android/persistence/UpsightDataStoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->fetchCurrentConfig()V
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
.field final synthetic this$0:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;


# direct methods
.method constructor <init>(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$1;->this$0:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/upsight/android/UpsightException;)V
    .locals 5
    .param p1, "exception"    # Lcom/upsight/android/UpsightException;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$1;->this$0:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    # getter for: Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mLogger:Lcom/upsight/android/logger/UpsightLogger;
    invoke-static {v0}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->access$300(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v0

    const-string v1, "Configurator"

    const-string v2, "Could not fetch existing configs from datastore"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$1;->this$0:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    # getter for: Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mCurrentConfig:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;
    invoke-static {v0}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->access$000(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;

    move-result-object v0

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$1;->this$0:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    # invokes: Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->applyDefaultConfiguration()V
    invoke-static {v0}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->access$200(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)V

    .line 171
    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 143
    check-cast p1, Ljava/util/Set;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$1;->onSuccess(Ljava/util/Set;)V

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
    .line 146
    .local p1, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/analytics/configuration/UpsightConfiguration;>;"
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$1;->this$0:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    # getter for: Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mCurrentConfig:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;
    invoke-static {v3}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->access$000(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    const/4 v1, 0x0

    .line 151
    .local v1, "hasApplied":Z
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 152
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

    .line 153
    .local v0, "config":Lcom/upsight/android/analytics/configuration/UpsightConfiguration;
    invoke-virtual {v0}, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;->getScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "upsight.configuration.configurationManager"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 154
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$1;->this$0:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;->getConfiguration()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->applyConfiguration(Ljava/lang/String;)Z
    invoke-static {v3, v4}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->access$100(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;Ljava/lang/String;)Z

    move-result v1

    goto :goto_1

    .line 159
    .end local v0    # "config":Lcom/upsight/android/analytics/configuration/UpsightConfiguration;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    if-nez v1, :cond_0

    .line 160
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$1;->this$0:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    # invokes: Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->applyDefaultConfiguration()V
    invoke-static {v3}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->access$200(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)V

    goto :goto_0
.end method
