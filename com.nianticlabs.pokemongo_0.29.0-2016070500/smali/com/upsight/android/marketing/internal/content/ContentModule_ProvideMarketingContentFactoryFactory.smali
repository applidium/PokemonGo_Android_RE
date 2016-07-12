.class public final Lcom/upsight/android/marketing/internal/content/ContentModule_ProvideMarketingContentFactoryFactory;
.super Ljava/lang/Object;
.source "ContentModule_ProvideMarketingContentFactoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory",
        "<",
        "Lcom/upsight/android/marketing/internal/content/MarketingContentFactory;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final contentStoreProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/marketing/internal/content/MarketingContentStore;",
            ">;"
        }
    .end annotation
.end field

.field private final contentTemplateWebViewClientFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClientFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/upsight/android/marketing/internal/content/ContentModule;

.field private final schedulerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lrx/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field private final upsightProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/UpsightContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/upsight/android/marketing/internal/content/ContentModule_ProvideMarketingContentFactoryFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/upsight/android/marketing/internal/content/ContentModule_ProvideMarketingContentFactoryFactory;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/upsight/android/marketing/internal/content/ContentModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1
    .param p1, "module"    # Lcom/upsight/android/marketing/internal/content/ContentModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/marketing/internal/content/ContentModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/UpsightContext;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lrx/Scheduler;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/marketing/internal/content/MarketingContentStore;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClientFactory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p2, "upsightProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/UpsightContext;>;"
    .local p3, "schedulerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lrx/Scheduler;>;"
    .local p4, "contentStoreProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/marketing/internal/content/MarketingContentStore;>;"
    .local p5, "contentTemplateWebViewClientFactoryProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClientFactory;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-boolean v0, Lcom/upsight/android/marketing/internal/content/ContentModule_ProvideMarketingContentFactoryFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 19
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/marketing/internal/content/ContentModule_ProvideMarketingContentFactoryFactory;->module:Lcom/upsight/android/marketing/internal/content/ContentModule;

    .line 20
    sget-boolean v0, Lcom/upsight/android/marketing/internal/content/ContentModule_ProvideMarketingContentFactoryFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 21
    :cond_1
    iput-object p2, p0, Lcom/upsight/android/marketing/internal/content/ContentModule_ProvideMarketingContentFactoryFactory;->upsightProvider:Ljavax/inject/Provider;

    .line 22
    sget-boolean v0, Lcom/upsight/android/marketing/internal/content/ContentModule_ProvideMarketingContentFactoryFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 23
    :cond_2
    iput-object p3, p0, Lcom/upsight/android/marketing/internal/content/ContentModule_ProvideMarketingContentFactoryFactory;->schedulerProvider:Ljavax/inject/Provider;

    .line 24
    sget-boolean v0, Lcom/upsight/android/marketing/internal/content/ContentModule_ProvideMarketingContentFactoryFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 25
    :cond_3
    iput-object p4, p0, Lcom/upsight/android/marketing/internal/content/ContentModule_ProvideMarketingContentFactoryFactory;->contentStoreProvider:Ljavax/inject/Provider;

    .line 26
    sget-boolean v0, Lcom/upsight/android/marketing/internal/content/ContentModule_ProvideMarketingContentFactoryFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    if-nez p5, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 27
    :cond_4
    iput-object p5, p0, Lcom/upsight/android/marketing/internal/content/ContentModule_ProvideMarketingContentFactoryFactory;->contentTemplateWebViewClientFactoryProvider:Ljavax/inject/Provider;

    .line 28
    return-void
.end method

.method public static create(Lcom/upsight/android/marketing/internal/content/ContentModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 6
    .param p0, "module"    # Lcom/upsight/android/marketing/internal/content/ContentModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/marketing/internal/content/ContentModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/UpsightContext;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lrx/Scheduler;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/marketing/internal/content/MarketingContentStore;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClientFactory;",
            ">;)",
            "Ldagger/internal/Factory",
            "<",
            "Lcom/upsight/android/marketing/internal/content/MarketingContentFactory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "upsightProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/UpsightContext;>;"
    .local p2, "schedulerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lrx/Scheduler;>;"
    .local p3, "contentStoreProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/marketing/internal/content/MarketingContentStore;>;"
    .local p4, "contentTemplateWebViewClientFactoryProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClientFactory;>;"
    new-instance v0, Lcom/upsight/android/marketing/internal/content/ContentModule_ProvideMarketingContentFactoryFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/upsight/android/marketing/internal/content/ContentModule_ProvideMarketingContentFactoryFactory;-><init>(Lcom/upsight/android/marketing/internal/content/ContentModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/upsight/android/marketing/internal/content/MarketingContentFactory;
    .locals 6

    .prologue
    .line 32
    iget-object v5, p0, Lcom/upsight/android/marketing/internal/content/ContentModule_ProvideMarketingContentFactoryFactory;->module:Lcom/upsight/android/marketing/internal/content/ContentModule;

    iget-object v1, p0, Lcom/upsight/android/marketing/internal/content/ContentModule_ProvideMarketingContentFactoryFactory;->upsightProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/UpsightContext;

    iget-object v2, p0, Lcom/upsight/android/marketing/internal/content/ContentModule_ProvideMarketingContentFactoryFactory;->schedulerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/Scheduler;

    iget-object v3, p0, Lcom/upsight/android/marketing/internal/content/ContentModule_ProvideMarketingContentFactoryFactory;->contentStoreProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/upsight/android/marketing/internal/content/MarketingContentStore;

    iget-object v4, p0, Lcom/upsight/android/marketing/internal/content/ContentModule_ProvideMarketingContentFactoryFactory;->contentTemplateWebViewClientFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClientFactory;

    invoke-virtual {v5, v1, v2, v3, v4}, Lcom/upsight/android/marketing/internal/content/ContentModule;->provideMarketingContentFactory(Lcom/upsight/android/UpsightContext;Lrx/Scheduler;Lcom/upsight/android/marketing/internal/content/MarketingContentStore;Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClientFactory;)Lcom/upsight/android/marketing/internal/content/MarketingContentFactory;

    move-result-object v0

    .line 33
    .local v0, "provided":Lcom/upsight/android/marketing/internal/content/MarketingContentFactory;
    if-nez v0, :cond_0

    .line 34
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Cannot return null from a non-@Nullable @Provides method"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 36
    :cond_0
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/upsight/android/marketing/internal/content/ContentModule_ProvideMarketingContentFactoryFactory;->get()Lcom/upsight/android/marketing/internal/content/MarketingContentFactory;

    move-result-object v0

    return-object v0
.end method
