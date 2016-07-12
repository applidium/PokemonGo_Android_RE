.class public final Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;
.super Ljava/lang/Object;
.source "DaggerManagedVariablesComponent.java"

# interfaces
.implements Lcom/upsight/android/managedvariables/internal/ManagedVariablesComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$1;,
        Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private provideMainSchedulerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lrx/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field private provideManagedVariableManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideManagedVariablesApiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/managedvariables/UpsightManagedVariablesApi;",
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

.field private provideUserExperienceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/managedvariables/experience/UpsightUserExperience;",
            ">;"
        }
    .end annotation
.end field

.field private provideUxmBlockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideUxmContentFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/managedvariables/internal/type/UxmContentFactory;",
            ">;"
        }
    .end annotation
.end field

.field private provideUxmSchemaMapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/fasterxml/jackson/databind/ObjectMapper;",
            ">;"
        }
    .end annotation
.end field

.field private provideUxmSchemaProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/managedvariables/internal/type/UxmSchema;",
            ">;"
        }
    .end annotation
.end field

.field private provideUxmSchemaRawStringProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private provideUxmSchemaResourceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private upsightManagedVariablesExtensionMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/upsight/android/UpsightManagedVariablesExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sget-boolean v0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 46
    :cond_0
    invoke-direct {p0, p1}, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->initialize(Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;)V

    .line 47
    return-void
.end method

.method synthetic constructor <init>(Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;
    .param p2, "x1"    # Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$1;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;-><init>(Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;)V

    return-void
.end method

.method public static builder()Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;-><init>(Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$1;)V

    return-object v0
.end method

.method private initialize(Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;)V
    .locals 4
    .param p1, "builder"    # Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;

    .prologue
    .line 54
    # getter for: Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->baseManagedVariablesModule:Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;
    invoke-static {p1}, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->access$100(Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;)Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;

    move-result-object v0

    invoke-static {v0}, Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule_ProvideUpsightContextFactory;->create(Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    .line 55
    # getter for: Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->baseManagedVariablesModule:Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;
    invoke-static {p1}, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->access$100(Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;)Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;

    move-result-object v0

    invoke-static {v0}, Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule_ProvideMainSchedulerFactory;->create(Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideMainSchedulerProvider:Ljavax/inject/Provider;

    .line 56
    # getter for: Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->uxmModule:Lcom/upsight/android/managedvariables/internal/type/UxmModule;
    invoke-static {p1}, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->access$200(Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;)Lcom/upsight/android/managedvariables/internal/type/UxmModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideUxmSchemaMapperFactory;->create(Lcom/upsight/android/managedvariables/internal/type/UxmModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideUxmSchemaMapperProvider:Ljavax/inject/Provider;

    .line 57
    # getter for: Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->resourceModule:Lcom/upsight/android/managedvariables/internal/ResourceModule;
    invoke-static {p1}, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->access$300(Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;)Lcom/upsight/android/managedvariables/internal/ResourceModule;

    move-result-object v0

    invoke-static {v0}, Lcom/upsight/android/managedvariables/internal/ResourceModule_ProvideUxmSchemaResourceFactory;->create(Lcom/upsight/android/managedvariables/internal/ResourceModule;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideUxmSchemaResourceProvider:Ljavax/inject/Provider;

    .line 58
    # getter for: Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->uxmModule:Lcom/upsight/android/managedvariables/internal/type/UxmModule;
    invoke-static {p1}, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->access$200(Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;)Lcom/upsight/android/managedvariables/internal/type/UxmModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideUxmSchemaResourceProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideUxmSchemaRawStringFactory;->create(Lcom/upsight/android/managedvariables/internal/type/UxmModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideUxmSchemaRawStringProvider:Ljavax/inject/Provider;

    .line 59
    # getter for: Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->uxmModule:Lcom/upsight/android/managedvariables/internal/type/UxmModule;
    invoke-static {p1}, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->access$200(Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;)Lcom/upsight/android/managedvariables/internal/type/UxmModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideUxmSchemaMapperProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideUxmSchemaRawStringProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3}, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideUxmSchemaFactory;->create(Lcom/upsight/android/managedvariables/internal/type/UxmModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideUxmSchemaProvider:Ljavax/inject/Provider;

    .line 60
    # getter for: Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->uxmModule:Lcom/upsight/android/managedvariables/internal/type/UxmModule;
    invoke-static {p1}, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->access$200(Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;)Lcom/upsight/android/managedvariables/internal/type/UxmModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideMainSchedulerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideUxmSchemaProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3}, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideManagedVariableManagerFactory;->create(Lcom/upsight/android/managedvariables/internal/type/UxmModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideManagedVariableManagerProvider:Ljavax/inject/Provider;

    .line 61
    # getter for: Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->userExperienceModule:Lcom/upsight/android/managedvariables/internal/experience/UserExperienceModule;
    invoke-static {p1}, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->access$400(Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;)Lcom/upsight/android/managedvariables/internal/experience/UserExperienceModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/upsight/android/managedvariables/internal/experience/UserExperienceModule_ProvideUserExperienceFactory;->create(Lcom/upsight/android/managedvariables/internal/experience/UserExperienceModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideUserExperienceProvider:Ljavax/inject/Provider;

    .line 62
    # getter for: Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->baseManagedVariablesModule:Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;
    invoke-static {p1}, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->access$100(Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;)Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideManagedVariableManagerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideUserExperienceProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule_ProvideManagedVariablesApiFactory;->create(Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideManagedVariablesApiProvider:Ljavax/inject/Provider;

    .line 63
    # getter for: Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->uxmModule:Lcom/upsight/android/managedvariables/internal/type/UxmModule;
    invoke-static {p1}, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->access$200(Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;)Lcom/upsight/android/managedvariables/internal/type/UxmModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideMainSchedulerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideUserExperienceProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3}, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideUxmContentFactoryFactory;->create(Lcom/upsight/android/managedvariables/internal/type/UxmModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideUxmContentFactoryProvider:Ljavax/inject/Provider;

    .line 64
    # getter for: Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->uxmModule:Lcom/upsight/android/managedvariables/internal/type/UxmModule;
    invoke-static {p1}, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;->access$200(Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent$Builder;)Lcom/upsight/android/managedvariables/internal/type/UxmModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideUxmSchemaRawStringProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideUxmSchemaProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3}, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideUxmBlockProviderFactory;->create(Lcom/upsight/android/managedvariables/internal/type/UxmModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideUxmBlockProvider:Ljavax/inject/Provider;

    .line 65
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideManagedVariablesApiProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideUxmContentFactoryProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideUxmBlockProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3}, Lcom/upsight/android/UpsightManagedVariablesExtension_MembersInjector;->create(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->upsightManagedVariablesExtensionMembersInjector:Ldagger/MembersInjector;

    .line 66
    return-void
.end method


# virtual methods
.method public bridge synthetic inject(Lcom/upsight/android/UpsightExtension;)V
    .locals 0
    .param p1, "x0"    # Lcom/upsight/android/UpsightExtension;

    .prologue
    .line 29
    check-cast p1, Lcom/upsight/android/UpsightManagedVariablesExtension;

    .end local p1    # "x0":Lcom/upsight/android/UpsightExtension;
    invoke-virtual {p0, p1}, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->inject(Lcom/upsight/android/UpsightManagedVariablesExtension;)V

    return-void
.end method

.method public inject(Lcom/upsight/android/UpsightManagedVariablesExtension;)V
    .locals 1
    .param p1, "arg0"    # Lcom/upsight/android/UpsightManagedVariablesExtension;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->upsightManagedVariablesExtensionMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v0, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    .line 71
    return-void
.end method

.method public uxmSchema()Lcom/upsight/android/managedvariables/internal/type/UxmSchema;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/upsight/android/managedvariables/internal/DaggerManagedVariablesComponent;->provideUxmSchemaProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/managedvariables/internal/type/UxmSchema;

    return-object v0
.end method
