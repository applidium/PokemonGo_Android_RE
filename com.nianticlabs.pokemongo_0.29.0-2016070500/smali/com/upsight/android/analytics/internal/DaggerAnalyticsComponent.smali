.class public final Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;
.super Ljava/lang/Object;
.source "DaggerAnalyticsComponent.java"

# interfaces
.implements Lcom/upsight/android/analytics/internal/AnalyticsComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$1;,
        Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private activityLifecycleTrackerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/session/ActivityLifecycleTracker;",
            ">;"
        }
    .end annotation
.end field

.field private analyticsContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/AnalyticsContext;",
            ">;"
        }
    .end annotation
.end field

.field private analyticsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/Analytics;",
            ">;"
        }
    .end annotation
.end field

.field private final com_upsight_android_analytics_internal_dispatcher_Proxy:Lcom/upsight/android/analytics/internal/dispatcher/DaggerAnalyticsComponent_PackageProxy;

.field private final com_upsight_android_analytics_internal_dispatcher_delivery_Proxy:Lcom/upsight/android/analytics/internal/dispatcher/delivery/DaggerAnalyticsComponent_PackageProxy;

.field private final com_upsight_android_analytics_internal_provider_Proxy:Lcom/upsight/android/analytics/internal/provider/DaggerAnalyticsComponent_PackageProxy;

.field private final com_upsight_android_analytics_internal_session_Proxy:Lcom/upsight/android/analytics/internal/session/DaggerAnalyticsComponent_PackageProxy;

.field private configurationResponseParserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser;",
            ">;"
        }
    .end annotation
.end field

.field private dispatcherServiceMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/upsight/android/analytics/internal/DispatcherService;",
            ">;"
        }
    .end annotation
.end field

.field private managerConfigParserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser;",
            ">;"
        }
    .end annotation
.end field

.field private provideAssociationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/association/AssociationManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideClockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/session/Clock;",
            ">;"
        }
    .end annotation
.end field

.field private provideConfigMapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/fasterxml/jackson/databind/ObjectMapper;",
            ">;"
        }
    .end annotation
.end field

.field private provideConfigurationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideDispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private provideGooglePlayHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/UpsightGooglePlayHelper;",
            ">;"
        }
    .end annotation
.end field

.field private provideQueueBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private provideResponseVerifierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/delivery/SignatureVerifier;",
            ">;"
        }
    .end annotation
.end field

.field private provideRouterBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/routing/RouterBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private provideSchedulingExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lrx/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field private provideSchemaSelectorBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private provideSendingExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lrx/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field private provideUncaughtExceptionHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/internal/util/Opt",
            "<",
            "Ljava/lang/Thread$UncaughtExceptionHandler;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideUpsightAnalyticsApiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/UpsightAnalyticsApi;",
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

.field private provideUpsightLifeCycleCallbacksProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/app/Application$ActivityLifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private providesOptOutStatusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/provider/UpsightOptOutStatus;",
            ">;"
        }
    .end annotation
.end field

.field private providesSessionManagerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private providesSessionManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/session/SessionManager;",
            ">;"
        }
    .end annotation
.end field

.field private providesUpsightLocationTrackerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/provider/UpsightLocationTracker;",
            ">;"
        }
    .end annotation
.end field

.field private providesUpsightUserAttributesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/provider/UpsightUserAttributes;",
            ">;"
        }
    .end annotation
.end field

.field private upsightAnalyticsExtensionMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/upsight/android/UpsightAnalyticsExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-class v0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Lcom/upsight/android/analytics/internal/session/DaggerAnalyticsComponent_PackageProxy;

    invoke-direct {v0}, Lcom/upsight/android/analytics/internal/session/DaggerAnalyticsComponent_PackageProxy;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->com_upsight_android_analytics_internal_session_Proxy:Lcom/upsight/android/analytics/internal/session/DaggerAnalyticsComponent_PackageProxy;

    .line 78
    new-instance v0, Lcom/upsight/android/analytics/internal/provider/DaggerAnalyticsComponent_PackageProxy;

    invoke-direct {v0}, Lcom/upsight/android/analytics/internal/provider/DaggerAnalyticsComponent_PackageProxy;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->com_upsight_android_analytics_internal_provider_Proxy:Lcom/upsight/android/analytics/internal/provider/DaggerAnalyticsComponent_PackageProxy;

    .line 92
    new-instance v0, Lcom/upsight/android/analytics/internal/dispatcher/DaggerAnalyticsComponent_PackageProxy;

    invoke-direct {v0}, Lcom/upsight/android/analytics/internal/dispatcher/DaggerAnalyticsComponent_PackageProxy;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->com_upsight_android_analytics_internal_dispatcher_Proxy:Lcom/upsight/android/analytics/internal/dispatcher/DaggerAnalyticsComponent_PackageProxy;

    .line 96
    new-instance v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/DaggerAnalyticsComponent_PackageProxy;

    invoke-direct {v0}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/DaggerAnalyticsComponent_PackageProxy;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->com_upsight_android_analytics_internal_dispatcher_delivery_Proxy:Lcom/upsight/android/analytics/internal/dispatcher/delivery/DaggerAnalyticsComponent_PackageProxy;

    .line 103
    sget-boolean v0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 104
    :cond_0
    invoke-direct {p0, p1}, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->initialize(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)V

    .line 105
    return-void
.end method

.method synthetic constructor <init>(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;
    .param p2, "x1"    # Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$1;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;-><init>(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)V

    return-void
.end method

.method public static builder()Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;
    .locals 2

    .prologue
    .line 108
    new-instance v0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;-><init>(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$1;)V

    return-object v0
.end method

.method private initialize(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)V
    .locals 8
    .param p1, "builder"    # Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;

    .prologue
    .line 112
    # getter for: Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->baseAnalyticsModule:Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->access$100(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;

    move-result-object v0

    invoke-static {v0}, Lcom/upsight/android/analytics/internal/BaseAnalyticsModule_ProvideUncaughtExceptionHandlerFactory;->create(Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideUncaughtExceptionHandlerProvider:Ljavax/inject/Provider;

    .line 113
    # getter for: Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->baseAnalyticsModule:Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->access$100(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;

    move-result-object v0

    invoke-static {v0}, Lcom/upsight/android/analytics/internal/BaseAnalyticsModule_ProvideUpsightContextFactory;->create(Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    .line 114
    # getter for: Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->configObjectMapperModule:Lcom/upsight/android/analytics/internal/ConfigObjectMapperModule;
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->access$200(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/ConfigObjectMapperModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/upsight/android/analytics/internal/ConfigObjectMapperModule_ProvideConfigMapperFactory;->create(Lcom/upsight/android/analytics/internal/ConfigObjectMapperModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideConfigMapperProvider:Ljavax/inject/Provider;

    .line 115
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->com_upsight_android_analytics_internal_session_Proxy:Lcom/upsight/android/analytics/internal/session/DaggerAnalyticsComponent_PackageProxy;

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideConfigMapperProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/upsight/android/analytics/internal/session/ConfigParser_Factory;->create(Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/upsight/android/analytics/internal/session/DaggerAnalyticsComponent_PackageProxy;->configParserProvider:Ljavax/inject/Provider;

    .line 116
    # getter for: Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->baseAnalyticsModule:Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->access$100(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;

    move-result-object v0

    invoke-static {v0}, Lcom/upsight/android/analytics/internal/BaseAnalyticsModule_ProvideClockFactory;->create(Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideClockProvider:Ljavax/inject/Provider;

    .line 117
    # getter for: Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->sessionModule:Lcom/upsight/android/analytics/internal/session/SessionModule;
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->access$300(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/session/SessionModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->com_upsight_android_analytics_internal_session_Proxy:Lcom/upsight/android/analytics/internal/session/DaggerAnalyticsComponent_PackageProxy;

    iget-object v2, v2, Lcom/upsight/android/analytics/internal/session/DaggerAnalyticsComponent_PackageProxy;->configParserProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideClockProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3}, Lcom/upsight/android/analytics/internal/session/SessionModule_ProvidesSessionManagerImplFactory;->create(Lcom/upsight/android/analytics/internal/session/SessionModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->providesSessionManagerImplProvider:Ljavax/inject/Provider;

    .line 118
    # getter for: Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->sessionModule:Lcom/upsight/android/analytics/internal/session/SessionModule;
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->access$300(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/session/SessionModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->providesSessionManagerImplProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/upsight/android/analytics/internal/session/SessionModule_ProvidesSessionManagerFactory;->create(Lcom/upsight/android/analytics/internal/session/SessionModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->providesSessionManagerProvider:Ljavax/inject/Provider;

    .line 119
    # getter for: Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->schemaModule:Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaModule;
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->access$400(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaModule_ProvideSchemaSelectorBuilderFactory;->create(Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideSchemaSelectorBuilderProvider:Ljavax/inject/Provider;

    .line 120
    # getter for: Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->associationModule:Lcom/upsight/android/analytics/internal/association/AssociationModule;
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->access$500(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/association/AssociationModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideClockProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lcom/upsight/android/analytics/internal/association/AssociationModule_ProvideAssociationManagerFactory;->create(Lcom/upsight/android/analytics/internal/association/AssociationModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideAssociationManagerProvider:Ljavax/inject/Provider;

    .line 121
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->com_upsight_android_analytics_internal_provider_Proxy:Lcom/upsight/android/analytics/internal/provider/DaggerAnalyticsComponent_PackageProxy;

    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v1

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2}, Lcom/upsight/android/analytics/internal/provider/OptOutStatus_Factory;->create(Ldagger/MembersInjector;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/upsight/android/analytics/internal/provider/DaggerAnalyticsComponent_PackageProxy;->optOutStatusProvider:Ljavax/inject/Provider;

    .line 122
    # getter for: Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->providerModule:Lcom/upsight/android/analytics/internal/provider/ProviderModule;
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->access$600(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/provider/ProviderModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->com_upsight_android_analytics_internal_provider_Proxy:Lcom/upsight/android/analytics/internal/provider/DaggerAnalyticsComponent_PackageProxy;

    iget-object v1, v1, Lcom/upsight/android/analytics/internal/provider/DaggerAnalyticsComponent_PackageProxy;->optOutStatusProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/upsight/android/analytics/internal/provider/ProviderModule_ProvidesOptOutStatusFactory;->create(Lcom/upsight/android/analytics/internal/provider/ProviderModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->providesOptOutStatusProvider:Ljavax/inject/Provider;

    .line 123
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->com_upsight_android_analytics_internal_provider_Proxy:Lcom/upsight/android/analytics/internal/provider/DaggerAnalyticsComponent_PackageProxy;

    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v1

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2}, Lcom/upsight/android/analytics/internal/provider/LocationTracker_Factory;->create(Ldagger/MembersInjector;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/upsight/android/analytics/internal/provider/DaggerAnalyticsComponent_PackageProxy;->locationTrackerProvider:Ljavax/inject/Provider;

    .line 124
    # getter for: Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->providerModule:Lcom/upsight/android/analytics/internal/provider/ProviderModule;
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->access$600(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/provider/ProviderModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->com_upsight_android_analytics_internal_provider_Proxy:Lcom/upsight/android/analytics/internal/provider/DaggerAnalyticsComponent_PackageProxy;

    iget-object v1, v1, Lcom/upsight/android/analytics/internal/provider/DaggerAnalyticsComponent_PackageProxy;->locationTrackerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/upsight/android/analytics/internal/provider/ProviderModule_ProvidesUpsightLocationTrackerFactory;->create(Lcom/upsight/android/analytics/internal/provider/ProviderModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->providesUpsightLocationTrackerProvider:Ljavax/inject/Provider;

    .line 125
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->com_upsight_android_analytics_internal_provider_Proxy:Lcom/upsight/android/analytics/internal/provider/DaggerAnalyticsComponent_PackageProxy;

    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v1

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2}, Lcom/upsight/android/analytics/internal/provider/UserAttributes_Factory;->create(Ldagger/MembersInjector;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/upsight/android/analytics/internal/provider/DaggerAnalyticsComponent_PackageProxy;->userAttributesProvider:Ljavax/inject/Provider;

    .line 126
    # getter for: Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->providerModule:Lcom/upsight/android/analytics/internal/provider/ProviderModule;
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->access$600(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/provider/ProviderModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->com_upsight_android_analytics_internal_provider_Proxy:Lcom/upsight/android/analytics/internal/provider/DaggerAnalyticsComponent_PackageProxy;

    iget-object v1, v1, Lcom/upsight/android/analytics/internal/provider/DaggerAnalyticsComponent_PackageProxy;->userAttributesProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/upsight/android/analytics/internal/provider/ProviderModule_ProvidesUpsightUserAttributesFactory;->create(Lcom/upsight/android/analytics/internal/provider/ProviderModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->providesUpsightUserAttributesProvider:Ljavax/inject/Provider;

    .line 127
    # getter for: Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->baseAnalyticsModule:Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->access$100(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/upsight/android/analytics/internal/BaseAnalyticsModule_ProvideGooglePlayHelperFactory;->create(Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideGooglePlayHelperProvider:Ljavax/inject/Provider;

    .line 128
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->providesSessionManagerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideSchemaSelectorBuilderProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideAssociationManagerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->providesOptOutStatusProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->providesUpsightLocationTrackerProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->providesUpsightUserAttributesProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideGooglePlayHelperProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v7}, Lcom/upsight/android/analytics/internal/Analytics_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->analyticsProvider:Ljavax/inject/Provider;

    .line 129
    # getter for: Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->analyticsApiModule:Lcom/upsight/android/analytics/internal/AnalyticsApiModule;
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->access$700(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/AnalyticsApiModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->analyticsProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/upsight/android/analytics/internal/AnalyticsApiModule_ProvideUpsightAnalyticsApiFactory;->create(Lcom/upsight/android/analytics/internal/AnalyticsApiModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideUpsightAnalyticsApiProvider:Ljavax/inject/Provider;

    .line 130
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->com_upsight_android_analytics_internal_session_Proxy:Lcom/upsight/android/analytics/internal/session/DaggerAnalyticsComponent_PackageProxy;

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->providesSessionManagerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2}, Lcom/upsight/android/analytics/internal/session/ManualTracker_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/upsight/android/analytics/internal/session/DaggerAnalyticsComponent_PackageProxy;->manualTrackerProvider:Ljavax/inject/Provider;

    .line 131
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->com_upsight_android_analytics_internal_session_Proxy:Lcom/upsight/android/analytics/internal/session/DaggerAnalyticsComponent_PackageProxy;

    iget-object v0, v0, Lcom/upsight/android/analytics/internal/session/DaggerAnalyticsComponent_PackageProxy;->manualTrackerProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/upsight/android/analytics/internal/session/ActivityLifecycleTracker_Factory;->create(Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->activityLifecycleTrackerProvider:Ljavax/inject/Provider;

    .line 132
    # getter for: Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->lifecycleTrackerModule:Lcom/upsight/android/analytics/internal/session/LifecycleTrackerModule;
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->access$800(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/session/LifecycleTrackerModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->activityLifecycleTrackerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/upsight/android/analytics/internal/session/LifecycleTrackerModule_ProvideUpsightLifeCycleCallbacksFactory;->create(Lcom/upsight/android/analytics/internal/session/LifecycleTrackerModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideUpsightLifeCycleCallbacksProvider:Ljavax/inject/Provider;

    .line 133
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideUncaughtExceptionHandlerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideUpsightAnalyticsApiProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideClockProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideUpsightLifeCycleCallbacksProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideAssociationManagerProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v5}, Lcom/upsight/android/UpsightAnalyticsExtension_MembersInjector;->create(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->upsightAnalyticsExtensionMembersInjector:Ldagger/MembersInjector;

    .line 134
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideConfigMapperProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->providesSessionManagerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->configurationResponseParserProvider:Ljavax/inject/Provider;

    .line 135
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideConfigMapperProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser_Factory;->create(Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->managerConfigParserProvider:Ljavax/inject/Provider;

    .line 136
    # getter for: Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->configurationModule:Lcom/upsight/android/analytics/internal/configuration/ConfigurationModule;
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->access$900(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/configuration/ConfigurationModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->configurationResponseParserProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->managerConfigParserProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationModule_ProvideConfigurationManagerFactory;->create(Lcom/upsight/android/analytics/internal/configuration/ConfigurationModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideConfigurationManagerProvider:Ljavax/inject/Provider;

    .line 137
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/upsight/android/analytics/internal/AnalyticsContext_Factory;->create(Ldagger/MembersInjector;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->analyticsContextProvider:Ljavax/inject/Provider;

    .line 138
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->com_upsight_android_analytics_internal_dispatcher_Proxy:Lcom/upsight/android/analytics/internal/dispatcher/DaggerAnalyticsComponent_PackageProxy;

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideConfigMapperProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2}, Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/upsight/android/analytics/internal/dispatcher/DaggerAnalyticsComponent_PackageProxy;->configParserProvider:Ljavax/inject/Provider;

    .line 139
    # getter for: Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->analyticsSchedulersModule:Lcom/upsight/android/analytics/internal/AnalyticsSchedulersModule;
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->access$1000(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/AnalyticsSchedulersModule;

    move-result-object v0

    invoke-static {v0}, Lcom/upsight/android/analytics/internal/AnalyticsSchedulersModule_ProvideSendingExecutorFactory;->create(Lcom/upsight/android/analytics/internal/AnalyticsSchedulersModule;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideSendingExecutorProvider:Ljavax/inject/Provider;

    .line 140
    # getter for: Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->analyticsSchedulersModule:Lcom/upsight/android/analytics/internal/AnalyticsSchedulersModule;
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->access$1000(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/AnalyticsSchedulersModule;

    move-result-object v0

    invoke-static {v0}, Lcom/upsight/android/analytics/internal/AnalyticsSchedulersModule_ProvideSchedulingExecutorFactory;->create(Lcom/upsight/android/analytics/internal/AnalyticsSchedulersModule;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideSchedulingExecutorProvider:Ljavax/inject/Provider;

    .line 141
    # getter for: Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->deliveryModule:Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule;
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->access$1100(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule_ProvideResponseVerifierFactory;->create(Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideResponseVerifierProvider:Ljavax/inject/Provider;

    .line 142
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->com_upsight_android_analytics_internal_dispatcher_delivery_Proxy:Lcom/upsight/android/analytics/internal/dispatcher/delivery/DaggerAnalyticsComponent_PackageProxy;

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideConfigMapperProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser_Factory;->create(Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/DaggerAnalyticsComponent_PackageProxy;->responseParserProvider:Ljavax/inject/Provider;

    .line 143
    # getter for: Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->deliveryModule:Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule;
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->access$1100(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideClockProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideSendingExecutorProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideSchedulingExecutorProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideResponseVerifierProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->com_upsight_android_analytics_internal_dispatcher_delivery_Proxy:Lcom/upsight/android/analytics/internal/dispatcher/delivery/DaggerAnalyticsComponent_PackageProxy;

    iget-object v6, v6, Lcom/upsight/android/analytics/internal/dispatcher/delivery/DaggerAnalyticsComponent_PackageProxy;->responseParserProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v6}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule_ProvideQueueBuilderFactory;->create(Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideQueueBuilderProvider:Ljavax/inject/Provider;

    .line 144
    # getter for: Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->routingModule:Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingModule;
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->access$1200(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideQueueBuilderProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingModule_ProvideRouterBuilderFactory;->create(Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideRouterBuilderProvider:Ljavax/inject/Provider;

    .line 145
    # getter for: Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->dispatchModule:Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule;
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->access$1300(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->providesSessionManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->analyticsContextProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->com_upsight_android_analytics_internal_dispatcher_Proxy:Lcom/upsight/android/analytics/internal/dispatcher/DaggerAnalyticsComponent_PackageProxy;

    iget-object v4, v4, Lcom/upsight/android/analytics/internal/dispatcher/DaggerAnalyticsComponent_PackageProxy;->configParserProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideRouterBuilderProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideSchemaSelectorBuilderProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v6}, Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule_ProvideDispatcherFactory;->create(Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideDispatcherProvider:Ljavax/inject/Provider;

    .line 146
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideConfigurationManagerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideDispatcherProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lcom/upsight/android/analytics/internal/DispatcherService_MembersInjector;->create(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->dispatcherServiceMembersInjector:Ldagger/MembersInjector;

    .line 147
    return-void
.end method


# virtual methods
.method public clock()Lcom/upsight/android/analytics/internal/session/Clock;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->provideClockProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/session/Clock;

    return-object v0
.end method

.method public inject(Lcom/upsight/android/UpsightAnalyticsExtension;)V
    .locals 1
    .param p1, "arg0"    # Lcom/upsight/android/UpsightAnalyticsExtension;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->upsightAnalyticsExtensionMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v0, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    .line 152
    return-void
.end method

.method public bridge synthetic inject(Lcom/upsight/android/UpsightExtension;)V
    .locals 0
    .param p1, "x0"    # Lcom/upsight/android/UpsightExtension;

    .prologue
    .line 67
    check-cast p1, Lcom/upsight/android/UpsightAnalyticsExtension;

    .end local p1    # "x0":Lcom/upsight/android/UpsightExtension;
    invoke-virtual {p0, p1}, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->inject(Lcom/upsight/android/UpsightAnalyticsExtension;)V

    return-void
.end method

.method public inject(Lcom/upsight/android/analytics/internal/DispatcherService;)V
    .locals 1
    .param p1, "dispatcherService"    # Lcom/upsight/android/analytics/internal/DispatcherService;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->dispatcherServiceMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v0, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    .line 167
    return-void
.end method

.method public sessionManager()Lcom/upsight/android/analytics/internal/session/SessionManager;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->providesSessionManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/session/SessionManager;

    return-object v0
.end method
