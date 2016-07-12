.class public Lcom/upsight/android/UpsightManagedVariablesExtension;
.super Lcom/upsight/android/UpsightExtension;
.source "UpsightManagedVariablesExtension.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/upsight/android/UpsightExtension",
        "<",
        "Lcom/upsight/android/managedvariables/UpsightManagedVariablesComponent;",
        "Lcom/upsight/android/managedvariables/UpsightManagedVariablesApi;",
        ">;"
    }
.end annotation


# static fields
.field public static final EXTENSION_NAME:Ljava/lang/String; = "com.upsight.extension.managedvariables"

.field private static final UPSIGHT_ACTION_MAP:Ljava/lang/String; = "upsight.action_map"


# instance fields
.field private mLogger:Lcom/upsight/android/logger/UpsightLogger;

.field mManagedVariables:Lcom/upsight/android/managedvariables/UpsightManagedVariablesApi;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

.field mUxmBlockProvider:Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mUxmContentFactory:Lcom/upsight/android/managedvariables/internal/type/UxmContentFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/upsight/android/UpsightExtension;-><init>()V

    .line 52
    return-void
.end method


# virtual methods
.method public getApi()Lcom/upsight/android/managedvariables/UpsightManagedVariablesApi;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/upsight/android/UpsightManagedVariablesExtension;->mManagedVariables:Lcom/upsight/android/managedvariables/UpsightManagedVariablesApi;

    return-object v0
.end method

.method public bridge synthetic getApi()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/upsight/android/UpsightManagedVariablesExtension;->getApi()Lcom/upsight/android/managedvariables/UpsightManagedVariablesApi;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Lcom/upsight/android/UpsightContext;)V
    .locals 1
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;

    .prologue
    .line 63
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getCoreComponent()Lcom/upsight/android/UpsightCoreComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/upsight/android/UpsightCoreComponent;->objectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/UpsightManagedVariablesExtension;->mMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 64
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/UpsightManagedVariablesExtension;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    .line 66
    iget-object v0, p0, Lcom/upsight/android/UpsightManagedVariablesExtension;->mUxmBlockProvider:Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;

    invoke-static {p1, v0}, Lcom/upsight/android/analytics/provider/UpsightDataProvider;->register(Lcom/upsight/android/UpsightContext;Lcom/upsight/android/analytics/provider/UpsightDataProvider;)V

    .line 67
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getDataStore()Lcom/upsight/android/persistence/UpsightDataStore;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/upsight/android/persistence/UpsightDataStore;->subscribe(Ljava/lang/Object;)Lcom/upsight/android/persistence/UpsightSubscription;

    .line 68
    return-void
.end method

.method protected bridge synthetic onResolve(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/UpsightExtension$BaseComponent;
    .locals 1
    .param p1, "x0"    # Lcom/upsight/android/UpsightContext;

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/upsight/android/UpsightManagedVariablesExtension;->onResolve(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/managedvariables/UpsightManagedVariablesComponent;

    move-result-object v0

    return-object v0
.end method

.method protected onResolve(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/managedvariables/UpsightManagedVariablesComponent;
    .locals 2
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;

    .prologue
    .line 56
    invoke-static {}, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->builder()Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;

    move-result-object v0

    new-instance v1, Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;

    invoke-direct {v1, p1}, Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;-><init>(Lcom/upsight/android/UpsightContext;)V

    invoke-virtual {v0, v1}, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->baseManagedVariablesModule(Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;)Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->build()Lcom/upsight/android/managedvariables/internal/ManagedVariablesComponent;

    move-result-object v0

    return-object v0
.end method

.method public onResponse(Lcom/upsight/android/analytics/dispatcher/EndpointResponse;)V
    .locals 9
    .param p1, "endpointResponse"    # Lcom/upsight/android/analytics/dispatcher/EndpointResponse;
    .annotation runtime Lcom/upsight/android/persistence/annotation/Created;
    .end annotation

    .prologue
    .line 77
    const-string v4, "upsight.action_map"

    invoke-virtual {p1}, Lcom/upsight/android/analytics/dispatcher/EndpointResponse;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/upsight/android/UpsightManagedVariablesExtension;->mMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p1}, Lcom/upsight/android/analytics/dispatcher/EndpointResponse;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readTree(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v3

    .line 83
    .local v3, "response":Lcom/fasterxml/jackson/databind/JsonNode;
    iget-object v4, p0, Lcom/upsight/android/UpsightManagedVariablesExtension;->mMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v5, Lcom/upsight/android/analytics/internal/action/ActionMapResponse;

    invoke-virtual {v4, v3, v5}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/action/ActionMapResponse;

    .line 86
    .local v0, "actionMapResponse":Lcom/upsight/android/analytics/internal/action/ActionMapResponse;
    const-string v4, "datastore_factory"

    invoke-virtual {v0}, Lcom/upsight/android/analytics/internal/action/ActionMapResponse;->getActionFactory()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 87
    iget-object v4, p0, Lcom/upsight/android/UpsightManagedVariablesExtension;->mUxmContentFactory:Lcom/upsight/android/managedvariables/internal/type/UxmContentFactory;

    invoke-virtual {v4, v0}, Lcom/upsight/android/managedvariables/internal/type/UxmContentFactory;->create(Lcom/upsight/android/analytics/internal/action/ActionMapResponse;)Lcom/upsight/android/managedvariables/internal/type/UxmContent;

    move-result-object v1

    .line 88
    .local v1, "content":Lcom/upsight/android/managedvariables/internal/type/UxmContent;
    if-eqz v1, :cond_0

    .line 89
    const-string v4, "content_received"

    invoke-virtual {v1, v4}, Lcom/upsight/android/managedvariables/internal/type/UxmContent;->executeActions(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    .end local v0    # "actionMapResponse":Lcom/upsight/android/analytics/internal/action/ActionMapResponse;
    .end local v1    # "content":Lcom/upsight/android/managedvariables/internal/type/UxmContent;
    .end local v3    # "response":Lcom/fasterxml/jackson/databind/JsonNode;
    :catch_0
    move-exception v2

    .line 93
    .local v2, "e":Ljava/io/IOException;
    iget-object v4, p0, Lcom/upsight/android/UpsightManagedVariablesExtension;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v5, "Upsight"

    const-string v6, "Unable to parse action map"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-interface {v4, v5, v6, v7}, Lcom/upsight/android/logger/UpsightLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
