.class public final Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;
.super Ljava/lang/Object;
.source "DaggerMarketingComponent.java"

# interfaces
.implements Lcom/upsight/android/marketing/internal/MarketingComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$1;,
        Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final com_upsight_android_marketing_internal_content_Proxy:Lcom/upsight/android/marketing/internal/content/DaggerMarketingComponent_PackageProxy;

.field private provideBillboardManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/marketing/UpsightBillboardManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideContentTemplateWebViewClientFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClientFactory;",
            ">;"
        }
    .end annotation
.end field

.field private provideDefaultContentMediatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/marketing/internal/content/DefaultContentMediator;",
            ">;"
        }
    .end annotation
.end field

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

.field private provideMarketingApiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/marketing/UpsightMarketingApi;",
            ">;"
        }
    .end annotation
.end field

.field private provideMarketingContentFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/marketing/internal/content/MarketingContentFactory;",
            ">;"
        }
    .end annotation
.end field

.field private provideMarketingContentStoreProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/marketing/internal/content/MarketingContentStore;",
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

.field private provideUpsightMarketingContentStoreProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/marketing/UpsightMarketingContentStore;",
            ">;"
        }
    .end annotation
.end field

.field private upsightMarketingExtensionMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/upsight/android/UpsightMarketingExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/upsight/android/marketing/internal/content/DaggerMarketingComponent_PackageProxy;

    invoke-direct {v0}, Lcom/upsight/android/marketing/internal/content/DaggerMarketingComponent_PackageProxy;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->com_upsight_android_marketing_internal_content_Proxy:Lcom/upsight/android/marketing/internal/content/DaggerMarketingComponent_PackageProxy;

    .line 46
    sget-boolean v0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 47
    :cond_0
    invoke-direct {p0, p1}, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->initialize(Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;)V

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;
    .param p2, "x1"    # Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$1;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;-><init>(Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;)V

    return-void
.end method

.method public static builder()Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;-><init>(Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$1;)V

    return-object v0
.end method

.method private initialize(Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;)V
    .locals 5
    .param p1, "builder"    # Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;

    .prologue
    .line 55
    # getter for: Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->baseMarketingModule:Lcom/upsight/android/marketing/internal/BaseMarketingModule;
    invoke-static {p1}, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->access$100(Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;)Lcom/upsight/android/marketing/internal/BaseMarketingModule;

    move-result-object v0

    invoke-static {v0}, Lcom/upsight/android/marketing/internal/BaseMarketingModule_ProvideUpsightContextFactory;->create(Lcom/upsight/android/marketing/internal/BaseMarketingModule;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    .line 56
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->com_upsight_android_marketing_internal_content_Proxy:Lcom/upsight/android/marketing/internal/content/DaggerMarketingComponent_PackageProxy;

    # getter for: Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->contentModule:Lcom/upsight/android/marketing/internal/content/ContentModule;
    invoke-static {p1}, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->access$200(Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;)Lcom/upsight/android/marketing/internal/content/ContentModule;

    move-result-object v1

    iget-object v2, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2}, Lcom/upsight/android/marketing/internal/content/ContentModule_ProvideMarketingContentStoreImplFactory;->create(Lcom/upsight/android/marketing/internal/content/ContentModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/upsight/android/marketing/internal/content/DaggerMarketingComponent_PackageProxy;->provideMarketingContentStoreImplProvider:Ljavax/inject/Provider;

    .line 57
    # getter for: Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->contentModule:Lcom/upsight/android/marketing/internal/content/ContentModule;
    invoke-static {p1}, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->access$200(Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;)Lcom/upsight/android/marketing/internal/content/ContentModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->com_upsight_android_marketing_internal_content_Proxy:Lcom/upsight/android/marketing/internal/content/DaggerMarketingComponent_PackageProxy;

    iget-object v1, v1, Lcom/upsight/android/marketing/internal/content/DaggerMarketingComponent_PackageProxy;->provideMarketingContentStoreImplProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/upsight/android/marketing/internal/content/ContentModule_ProvideMarketingContentStoreFactory;->create(Lcom/upsight/android/marketing/internal/content/ContentModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->provideMarketingContentStoreProvider:Ljavax/inject/Provider;

    .line 58
    # getter for: Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->billboardModule:Lcom/upsight/android/marketing/internal/billboard/BillboardModule;
    invoke-static {p1}, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->access$300(Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;)Lcom/upsight/android/marketing/internal/billboard/BillboardModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->provideMarketingContentStoreProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lcom/upsight/android/marketing/internal/billboard/BillboardModule_ProvideBillboardManagerFactory;->create(Lcom/upsight/android/marketing/internal/billboard/BillboardModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->provideBillboardManagerProvider:Ljavax/inject/Provider;

    .line 59
    # getter for: Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->contentModule:Lcom/upsight/android/marketing/internal/content/ContentModule;
    invoke-static {p1}, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->access$200(Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;)Lcom/upsight/android/marketing/internal/content/ContentModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->com_upsight_android_marketing_internal_content_Proxy:Lcom/upsight/android/marketing/internal/content/DaggerMarketingComponent_PackageProxy;

    iget-object v1, v1, Lcom/upsight/android/marketing/internal/content/DaggerMarketingComponent_PackageProxy;->provideMarketingContentStoreImplProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/upsight/android/marketing/internal/content/ContentModule_ProvideUpsightMarketingContentStoreFactory;->create(Lcom/upsight/android/marketing/internal/content/ContentModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->provideUpsightMarketingContentStoreProvider:Ljavax/inject/Provider;

    .line 60
    # getter for: Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->baseMarketingModule:Lcom/upsight/android/marketing/internal/BaseMarketingModule;
    invoke-static {p1}, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->access$100(Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;)Lcom/upsight/android/marketing/internal/BaseMarketingModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->provideBillboardManagerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->provideUpsightMarketingContentStoreProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lcom/upsight/android/marketing/internal/BaseMarketingModule_ProvideMarketingApiFactory;->create(Lcom/upsight/android/marketing/internal/BaseMarketingModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->provideMarketingApiProvider:Ljavax/inject/Provider;

    .line 61
    # getter for: Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->baseMarketingModule:Lcom/upsight/android/marketing/internal/BaseMarketingModule;
    invoke-static {p1}, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->access$100(Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;)Lcom/upsight/android/marketing/internal/BaseMarketingModule;

    move-result-object v0

    invoke-static {v0}, Lcom/upsight/android/marketing/internal/BaseMarketingModule_ProvideMainSchedulerFactory;->create(Lcom/upsight/android/marketing/internal/BaseMarketingModule;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->provideMainSchedulerProvider:Ljavax/inject/Provider;

    .line 62
    # getter for: Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->webViewModule:Lcom/upsight/android/marketing/internal/content/WebViewModule;
    invoke-static {p1}, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->access$400(Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;)Lcom/upsight/android/marketing/internal/content/WebViewModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/upsight/android/marketing/internal/content/WebViewModule_ProvideContentTemplateWebViewClientFactoryFactory;->create(Lcom/upsight/android/marketing/internal/content/WebViewModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->provideContentTemplateWebViewClientFactoryProvider:Ljavax/inject/Provider;

    .line 63
    # getter for: Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->contentModule:Lcom/upsight/android/marketing/internal/content/ContentModule;
    invoke-static {p1}, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->access$200(Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;)Lcom/upsight/android/marketing/internal/content/ContentModule;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->provideUpsightContextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->provideMainSchedulerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->provideMarketingContentStoreProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->provideContentTemplateWebViewClientFactoryProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/upsight/android/marketing/internal/content/ContentModule_ProvideMarketingContentFactoryFactory;->create(Lcom/upsight/android/marketing/internal/content/ContentModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->provideMarketingContentFactoryProvider:Ljavax/inject/Provider;

    .line 64
    # getter for: Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->contentModule:Lcom/upsight/android/marketing/internal/content/ContentModule;
    invoke-static {p1}, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;->access$200(Lcom/upsight/android/marketing/internal/DaggerMarketingComponent$Builder;)Lcom/upsight/android/marketing/internal/content/ContentModule;

    move-result-object v0

    invoke-static {v0}, Lcom/upsight/android/marketing/internal/content/ContentModule_ProvideDefaultContentMediatorFactory;->create(Lcom/upsight/android/marketing/internal/content/ContentModule;)Ldagger/internal/Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/ScopedProvider;->create(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->provideDefaultContentMediatorProvider:Ljavax/inject/Provider;

    .line 65
    invoke-static {}, Ldagger/internal/MembersInjectors;->noOp()Ldagger/MembersInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->provideMarketingApiProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->provideMarketingContentFactoryProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->provideBillboardManagerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->provideDefaultContentMediatorProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/upsight/android/UpsightMarketingExtension_MembersInjector;->create(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->upsightMarketingExtensionMembersInjector:Ldagger/MembersInjector;

    .line 66
    return-void
.end method


# virtual methods
.method public bridge synthetic inject(Lcom/upsight/android/UpsightExtension;)V
    .locals 0
    .param p1, "x0"    # Lcom/upsight/android/UpsightExtension;

    .prologue
    .line 31
    check-cast p1, Lcom/upsight/android/UpsightMarketingExtension;

    .end local p1    # "x0":Lcom/upsight/android/UpsightExtension;
    invoke-virtual {p0, p1}, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->inject(Lcom/upsight/android/UpsightMarketingExtension;)V

    return-void
.end method

.method public inject(Lcom/upsight/android/UpsightMarketingExtension;)V
    .locals 1
    .param p1, "arg0"    # Lcom/upsight/android/UpsightMarketingExtension;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/DaggerMarketingComponent;->upsightMarketingExtensionMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v0, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    .line 71
    return-void
.end method
