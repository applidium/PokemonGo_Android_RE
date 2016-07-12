.class Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$3;
.super Ljava/lang/Object;
.source "ConfigurationManager.java"

# interfaces
.implements Lcom/upsight/android/persistence/UpsightDataStoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->onEndpointResponse(Lcom/upsight/android/analytics/dispatcher/EndpointResponse;)V
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
    .line 256
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$3;->this$0:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/upsight/android/UpsightException;)V
    .locals 0
    .param p1, "exception"    # Lcom/upsight/android/UpsightException;

    .prologue
    .line 267
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 256
    check-cast p1, Ljava/util/Set;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$3;->onSuccess(Ljava/util/Set;)V

    return-void
.end method

.method public onSuccess(Ljava/util/Set;)V
    .locals 3
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
    .line 259
    .local p1, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/analytics/configuration/UpsightConfiguration;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;

    .line 260
    .local v0, "configuration":Lcom/upsight/android/analytics/configuration/UpsightConfiguration;
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$3;->this$0:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    # getter for: Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;
    invoke-static {v2}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->access$500(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)Lcom/upsight/android/persistence/UpsightDataStore;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/upsight/android/persistence/UpsightDataStore;->remove(Ljava/lang/Object;)Lcom/upsight/android/persistence/UpsightSubscription;

    goto :goto_0

    .line 262
    .end local v0    # "configuration":Lcom/upsight/android/analytics/configuration/UpsightConfiguration;
    :cond_0
    return-void
.end method
