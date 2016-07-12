.class public abstract Lcom/upsight/android/managedvariables/type/UpsightManagedBoolean;
.super Lcom/upsight/android/managedvariables/type/UpsightManagedVariable;
.source "UpsightManagedBoolean.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/upsight/android/managedvariables/type/UpsightManagedVariable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Boolean;
    .param p3, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/upsight/android/managedvariables/type/UpsightManagedVariable;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    return-void
.end method

.method public static fetch(Lcom/upsight/android/UpsightContext;Ljava/lang/String;)Lcom/upsight/android/managedvariables/type/UpsightManagedBoolean;
    .locals 5
    .param p0, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 39
    const-string v1, "com.upsight.extension.managedvariables"

    invoke-virtual {p0, v1}, Lcom/upsight/android/UpsightContext;->getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightManagedVariablesExtension;

    .line 40
    .local v0, "extension":Lcom/upsight/android/UpsightManagedVariablesExtension;
    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Lcom/upsight/android/UpsightManagedVariablesExtension;->getApi()Lcom/upsight/android/managedvariables/UpsightManagedVariablesApi;

    move-result-object v1

    const-class v2, Lcom/upsight/android/managedvariables/type/UpsightManagedBoolean;

    invoke-interface {v1, v2, p1}, Lcom/upsight/android/managedvariables/UpsightManagedVariablesApi;->fetch(Ljava/lang/Class;Ljava/lang/String;)Lcom/upsight/android/managedvariables/type/UpsightManagedVariable;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/managedvariables/type/UpsightManagedBoolean;

    .line 45
    :goto_0
    return-object v1

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    const-string v2, "Upsight"

    const-string v3, "com.upsight.extension.managedvariables must be registered in your Android Manifest"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static fetch(Lcom/upsight/android/UpsightContext;Ljava/lang/String;Lcom/upsight/android/managedvariables/type/UpsightManagedVariable$Listener;)Lcom/upsight/android/persistence/UpsightSubscription;
    .locals 5
    .param p0, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/UpsightContext;",
            "Ljava/lang/String;",
            "Lcom/upsight/android/managedvariables/type/UpsightManagedVariable$Listener",
            "<",
            "Lcom/upsight/android/managedvariables/type/UpsightManagedBoolean;",
            ">;)",
            "Lcom/upsight/android/persistence/UpsightSubscription;"
        }
    .end annotation

    .prologue
    .line 59
    .local p2, "listener":Lcom/upsight/android/managedvariables/type/UpsightManagedVariable$Listener;, "Lcom/upsight/android/managedvariables/type/UpsightManagedVariable$Listener<Lcom/upsight/android/managedvariables/type/UpsightManagedBoolean;>;"
    const-string v1, "com.upsight.extension.managedvariables"

    invoke-virtual {p0, v1}, Lcom/upsight/android/UpsightContext;->getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightManagedVariablesExtension;

    .line 60
    .local v0, "extension":Lcom/upsight/android/UpsightManagedVariablesExtension;
    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Lcom/upsight/android/UpsightManagedVariablesExtension;->getApi()Lcom/upsight/android/managedvariables/UpsightManagedVariablesApi;

    move-result-object v1

    const-class v2, Lcom/upsight/android/managedvariables/type/UpsightManagedBoolean;

    invoke-interface {v1, v2, p1, p2}, Lcom/upsight/android/managedvariables/UpsightManagedVariablesApi;->fetch(Ljava/lang/Class;Ljava/lang/String;Lcom/upsight/android/managedvariables/type/UpsightManagedVariable$Listener;)Lcom/upsight/android/persistence/UpsightSubscription;

    move-result-object v1

    .line 65
    :goto_0
    return-object v1

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    const-string v2, "Upsight"

    const-string v3, "com.upsight.extension.managedvariables must be registered in your Android Manifest"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    new-instance v1, Lcom/upsight/android/managedvariables/type/UpsightManagedVariable$NoOpSubscription;

    invoke-direct {v1}, Lcom/upsight/android/managedvariables/type/UpsightManagedVariable$NoOpSubscription;-><init>()V

    goto :goto_0
.end method
