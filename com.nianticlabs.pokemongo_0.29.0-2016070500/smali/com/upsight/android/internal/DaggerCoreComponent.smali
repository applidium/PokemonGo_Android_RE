.class public final Lcom/upsight/android/internal/DaggerCoreComponent;
.super Ljava/lang/Object;
.source "DaggerCoreComponent.java"

# interfaces
.implements Lcom/upsight/android/internal/CoreComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/internal/DaggerCoreComponent$1;,
        Lcom/upsight/android/internal/DaggerCoreComponent$Builder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private provideApplicationContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private provideApplicationTokenProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private provideBackgroundDataStoreProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/persistence/UpsightDataStore;",
            ">;"
        }
    .end annotation
.end field

.field private provideBusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/squareup/otto/Bus;",
            ">;"
        }
    .end annotation
.end field

.field private provideDataStoreProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/persistence/UpsightDataStore;",
            ">;"
        }
    .end annotation
.end field

.field private provideLogWriterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/internal/logger/LogWriter;",
            ">;"
        }
    .end annotation
.end field

.field private provideObjectMapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/fasterxml/jackson/databind/ObjectMapper;",
            ">;"
        }
    .end annotation
.end field

.field private provideObserveOnSchedulerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lrx/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field private providePublicKeyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private provideSdkPluginProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private provideStorableInfoCacheProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;",
            ">;"
        }
    .end annotation
.end field

.field private provideSubscribeOnSchedulerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lrx/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field private provideTypeIdGeneratorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/internal/persistence/storable/StorableIdFactory;",
            ">;"
        }
    .end annotation
.end field

.field private provideUpsightContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/UpsightContext;",
            ">;"
        }
    .end annotation
.end field

.field private provideUpsightLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/logger/UpsightLogger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/upsight/android/internal/DaggerCoreComponent;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/upsight/android/internal/DaggerCoreComponent;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/upsight/android/internal/DaggerCoreComponent$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/upsight/android/internal/DaggerCoreComponent$Builder;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-boolean v0, Lcom/upsight/android/internal/DaggerCoreComponent;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 44
    :cond_0
    invoke-direct {p0, p1}, Lcom/upsight/android/internal/DaggerCoreComponent;->initialize(Lcom/upsight/android/internal/DaggerCoreComponent$Builder;)V

    .line 45
    return-void
.end method

.method synthetic constructor <init>(Lcom/upsight/android/internal/DaggerCoreComponent$Builder;Lcom/upsight/android/internal/DaggerCoreComponent$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/upsight/android/internal/DaggerCoreComponent$Builder;
    .param p2, "x1"    # Lcom/upsight/android/internal/DaggerCoreComponent$1;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/upsight/android/internal/DaggerCoreComponent;-><init>(Lcom/upsight/android/internal/DaggerCoreComponent$Builder;)V

    return-void
.end method

.method public static builder()Lcom/upsight/android/internal/DaggerCoreComponent$Builder;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;-><init>(Lcom/upsight/android/internal/DaggerCoreComponent$1;)V

    return-object v0
.end method

.method private initialize(Lcom/upsight/android/internal/DaggerCoreComponent$Builder;)V
    .locals 7
    .param p1, "builder"    # Lcom/upsight/android/internal/DaggerCoreComponent$Builder;

    .prologue
    .line 52
    # getter for: Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->contextModule:Lcom/upsight/android/internal/ContextModule;
    invoke-static {p1}, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->access$100(Lcom/upsight/android/internal/DaggerCoreComponent$Builder;)Lcom/upsight/android/internal/ContextModule;

    move-result-object v0

    invoke-static {v0}, Lcom/upsight/android/internal/ContextModule_ProvideApplicationContextFactory;->create(Lcom/upsight/android/internal/ContextModule;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideApplicationContextProvider:Ljavax/inject/Provider;

    .line 53
    # getter for: Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->objectMapperModule:Lcom/upsight/android/internal/ObjectMapperModule;
    invoke-static {p1}, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->access$200(Lcom/upsight/android/internal/DaggerCoreComponent$Builder;)Lcom/upsight/android/internal/ObjectMapperModule;

    move-result-object v0

    invoke-static {v0}, Lcom/upsight/android/internal/ObjectMapperModule_ProvideObjectMapperFactory;->create(Lcom/upsight/android/internal/ObjectMapperModule;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideObjectMapperProvider:Ljavax/inject/Provider;

    .line 54
    # getter for: Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->storableModule:Lcom/upsight/android/internal/persistence/storable/StorableModule;
    invoke-static {p1}, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->access$300(Lcom/upsight/android/internal/DaggerCoreComponent$Builder;)Lcom/upsight/android/internal/persistence/storable/StorableModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideObjectMapperProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/upsight/android/internal/persistence/storable/StorableModule_ProvideStorableInfoCacheFactory;->create(Lcom/upsight/android/internal/persistence/storable/StorableModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideStorableInfoCacheProvider:Ljavax/inject/Provider;

    .line 55
    # getter for: Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->contextModule:Lcom/upsight/android/internal/ContextModule;
    invoke-static {p1}, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->access$100(Lcom/upsight/android/internal/DaggerCoreComponent$Builder;)Lcom/upsight/android/internal/ContextModule;

    move-result-object v0

    invoke-static {v0}, Lcom/upsight/android/internal/ContextModule_ProvideTypeIdGeneratorFactory;->create(Lcom/upsight/android/internal/ContextModule;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideTypeIdGeneratorProvider:Ljavax/inject/Provider;

    .line 56
    # getter for: Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->schedulersModule:Lcom/upsight/android/internal/SchedulersModule;
    invoke-static {p1}, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->access$400(Lcom/upsight/android/internal/DaggerCoreComponent$Builder;)Lcom/upsight/android/internal/SchedulersModule;

    move-result-object v0

    invoke-static {v0}, Lcom/upsight/android/internal/SchedulersModule_ProvideSubscribeOnSchedulerFactory;->create(Lcom/upsight/android/internal/SchedulersModule;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideSubscribeOnSchedulerProvider:Ljavax/inject/Provider;

    .line 57
    # getter for: Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->schedulersModule:Lcom/upsight/android/internal/SchedulersModule;
    invoke-static {p1}, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->access$400(Lcom/upsight/android/internal/DaggerCoreComponent$Builder;)Lcom/upsight/android/internal/SchedulersModule;

    move-result-object v0

    invoke-static {v0}, Lcom/upsight/android/internal/SchedulersModule_ProvideObserveOnSchedulerFactory;->create(Lcom/upsight/android/internal/SchedulersModule;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideObserveOnSchedulerProvider:Ljavax/inject/Provider;

    .line 58
    # getter for: Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->contextModule:Lcom/upsight/android/internal/ContextModule;
    invoke-static {p1}, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->access$100(Lcom/upsight/android/internal/DaggerCoreComponent$Builder;)Lcom/upsight/android/internal/ContextModule;

    move-result-object v0

    invoke-static {v0}, Lcom/upsight/android/internal/ContextModule_ProvideBusFactory;->create(Lcom/upsight/android/internal/ContextModule;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideBusProvider:Ljavax/inject/Provider;

    .line 59
    # getter for: Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->persistenceModule:Lcom/upsight/android/internal/persistence/PersistenceModule;
    invoke-static {p1}, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->access$500(Lcom/upsight/android/internal/DaggerCoreComponent$Builder;)Lcom/upsight/android/internal/persistence/PersistenceModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideApplicationContextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideStorableInfoCacheProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideTypeIdGeneratorProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideSubscribeOnSchedulerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideObserveOnSchedulerProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideBusProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v6}, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideDataStoreFactory;->create(Lcom/upsight/android/internal/persistence/PersistenceModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideDataStoreProvider:Ljavax/inject/Provider;

    .line 60
    # getter for: Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->contextModule:Lcom/upsight/android/internal/ContextModule;
    invoke-static {p1}, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->access$100(Lcom/upsight/android/internal/DaggerCoreComponent$Builder;)Lcom/upsight/android/internal/ContextModule;

    move-result-object v0

    invoke-static {v0}, Lcom/upsight/android/internal/ContextModule_ProvideLogWriterFactory;->create(Lcom/upsight/android/internal/ContextModule;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideLogWriterProvider:Ljavax/inject/Provider;

    .line 61
    # getter for: Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->loggerModule:Lcom/upsight/android/internal/logger/LoggerModule;
    invoke-static {p1}, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->access$600(Lcom/upsight/android/internal/DaggerCoreComponent$Builder;)Lcom/upsight/android/internal/logger/LoggerModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideDataStoreProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideLogWriterProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lcom/upsight/android/internal/logger/LoggerModule_ProvideUpsightLoggerFactory;->create(Lcom/upsight/android/internal/logger/LoggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideUpsightLoggerProvider:Ljavax/inject/Provider;

    .line 62
    # getter for: Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->propertiesModule:Lcom/upsight/android/internal/PropertiesModule;
    invoke-static {p1}, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->access$700(Lcom/upsight/android/internal/DaggerCoreComponent$Builder;)Lcom/upsight/android/internal/PropertiesModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideApplicationContextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideUpsightLoggerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lcom/upsight/android/internal/PropertiesModule_ProvideSdkPluginFactory;->create(Lcom/upsight/android/internal/PropertiesModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideSdkPluginProvider:Ljavax/inject/Provider;

    .line 63
    # getter for: Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->propertiesModule:Lcom/upsight/android/internal/PropertiesModule;
    invoke-static {p1}, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->access$700(Lcom/upsight/android/internal/DaggerCoreComponent$Builder;)Lcom/upsight/android/internal/PropertiesModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideApplicationContextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideUpsightLoggerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lcom/upsight/android/internal/PropertiesModule_ProvideApplicationTokenFactory;->create(Lcom/upsight/android/internal/PropertiesModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideApplicationTokenProvider:Ljavax/inject/Provider;

    .line 64
    # getter for: Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->propertiesModule:Lcom/upsight/android/internal/PropertiesModule;
    invoke-static {p1}, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->access$700(Lcom/upsight/android/internal/DaggerCoreComponent$Builder;)Lcom/upsight/android/internal/PropertiesModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideApplicationContextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideUpsightLoggerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lcom/upsight/android/internal/PropertiesModule_ProvidePublicKeyFactory;->create(Lcom/upsight/android/internal/PropertiesModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->providePublicKeyProvider:Ljavax/inject/Provider;

    .line 65
    # getter for: Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->upsightContextModule:Lcom/upsight/android/internal/UpsightContextModule;
    invoke-static {p1}, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->access$800(Lcom/upsight/android/internal/DaggerCoreComponent$Builder;)Lcom/upsight/android/internal/UpsightContextModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideApplicationContextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideSdkPluginProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideApplicationTokenProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->providePublicKeyProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideDataStoreProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideUpsightLoggerProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v6}, Lcom/upsight/android/internal/UpsightContextModule_ProvideUpsightContextFactory;->create(Lcom/upsight/android/internal/UpsightContextModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    .line 66
    # getter for: Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->persistenceModule:Lcom/upsight/android/internal/persistence/PersistenceModule;
    invoke-static {p1}, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->access$500(Lcom/upsight/android/internal/DaggerCoreComponent$Builder;)Lcom/upsight/android/internal/persistence/PersistenceModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideApplicationContextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideSubscribeOnSchedulerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideTypeIdGeneratorProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideStorableInfoCacheProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideBusProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v5}, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideBackgroundDataStoreFactory;->create(Lcom/upsight/android/internal/persistence/PersistenceModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideBackgroundDataStoreProvider:Ljavax/inject/Provider;

    .line 67
    return-void
.end method


# virtual methods
.method public applicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideApplicationContextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public backgroundDataStore()Lcom/upsight/android/persistence/UpsightDataStore;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideBackgroundDataStoreProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/persistence/UpsightDataStore;

    return-object v0
.end method

.method public bus()Lcom/squareup/otto/Bus;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/otto/Bus;

    return-object v0
.end method

.method public objectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideObjectMapperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-object v0
.end method

.method public observeOnScheduler()Lrx/Scheduler;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideObserveOnSchedulerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Scheduler;

    return-object v0
.end method

.method public subscribeOnScheduler()Lrx/Scheduler;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideSubscribeOnSchedulerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Scheduler;

    return-object v0
.end method

.method public upsightContext()Lcom/upsight/android/UpsightContext;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightContext;

    return-object v0
.end method
