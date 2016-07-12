.class public final Lcom/upsight/android/marketing/internal/content/ContentModule;
.super Ljava/lang/Object;
.source "ContentModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method provideDefaultContentMediator()Lcom/upsight/android/marketing/internal/content/DefaultContentMediator;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 82
    new-instance v0, Lcom/upsight/android/marketing/internal/content/DefaultContentMediator;

    invoke-direct {v0}, Lcom/upsight/android/marketing/internal/content/DefaultContentMediator;-><init>()V

    return-object v0
.end method

.method provideMarketingContentFactory(Lcom/upsight/android/UpsightContext;Lrx/Scheduler;Lcom/upsight/android/marketing/internal/content/MarketingContentStore;Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClientFactory;)Lcom/upsight/android/marketing/internal/content/MarketingContentFactory;
    .locals 10
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p2, "scheduler"    # Lrx/Scheduler;
        .annotation runtime Ljavax/inject/Named;
            value = "main"
        .end annotation
    .end param
    .param p3, "contentStore"    # Lcom/upsight/android/marketing/internal/content/MarketingContentStore;
    .param p4, "contentTemplateWebViewClientFactory"    # Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClientFactory;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getCoreComponent()Lcom/upsight/android/UpsightCoreComponent;

    move-result-object v9

    .line 36
    .local v9, "coreComponent":Lcom/upsight/android/UpsightCoreComponent;
    invoke-interface {v9}, Lcom/upsight/android/UpsightCoreComponent;->bus()Lcom/squareup/otto/Bus;

    move-result-object v2

    .line 37
    .local v2, "bus":Lcom/squareup/otto/Bus;
    invoke-interface {v9}, Lcom/upsight/android/UpsightCoreComponent;->objectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v3

    .line 38
    .local v3, "mapper":Lcom/fasterxml/jackson/databind/ObjectMapper;
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v6

    .line 39
    .local v6, "logger":Lcom/upsight/android/logger/UpsightLogger;
    const-string v1, "com.upsight.extension.analytics"

    invoke-virtual {p1, v1}, Lcom/upsight/android/UpsightContext;->getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/UpsightAnalyticsExtension;

    check-cast v1, Lcom/upsight/android/UpsightAnalyticsExtension;

    invoke-virtual {v1}, Lcom/upsight/android/UpsightAnalyticsExtension;->getComponent()Lcom/upsight/android/UpsightExtension$BaseComponent;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/analytics/UpsightAnalyticsComponent;

    invoke-interface {v1}, Lcom/upsight/android/analytics/UpsightAnalyticsComponent;->clock()Lcom/upsight/android/analytics/internal/session/Clock;

    move-result-object v4

    .line 43
    .local v4, "clock":Lcom/upsight/android/analytics/internal/session/Clock;
    new-instance v0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;

    invoke-virtual {p2}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v5

    move-object v1, p1

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;-><init>(Lcom/upsight/android/UpsightContext;Lcom/squareup/otto/Bus;Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/upsight/android/analytics/internal/session/Clock;Lrx/Scheduler$Worker;Lcom/upsight/android/logger/UpsightLogger;Lcom/upsight/android/marketing/internal/content/MarketingContentStore;Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClientFactory;)V

    .line 52
    .local v0, "actionContext":Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;
    new-instance v1, Lcom/upsight/android/marketing/internal/content/MarketingContentFactory;

    invoke-direct {v1, v0}, Lcom/upsight/android/marketing/internal/content/MarketingContentFactory;-><init>(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;)V

    return-object v1
.end method

.method provideMarketingContentStore(Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;)Lcom/upsight/android/marketing/internal/content/MarketingContentStore;
    .locals 0
    .param p1, "impl"    # Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 70
    return-object p1
.end method

.method provideMarketingContentStoreImpl(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;
    .locals 4
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getCoreComponent()Lcom/upsight/android/UpsightCoreComponent;

    move-result-object v2

    .line 59
    .local v2, "coreComponent":Lcom/upsight/android/UpsightCoreComponent;
    invoke-interface {v2}, Lcom/upsight/android/UpsightCoreComponent;->bus()Lcom/squareup/otto/Bus;

    move-result-object v0

    .line 60
    .local v0, "bus":Lcom/squareup/otto/Bus;
    const-string v3, "com.upsight.extension.analytics"

    invoke-virtual {p1, v3}, Lcom/upsight/android/UpsightContext;->getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;

    move-result-object v3

    check-cast v3, Lcom/upsight/android/UpsightAnalyticsExtension;

    check-cast v3, Lcom/upsight/android/UpsightAnalyticsExtension;

    invoke-virtual {v3}, Lcom/upsight/android/UpsightAnalyticsExtension;->getComponent()Lcom/upsight/android/UpsightExtension$BaseComponent;

    move-result-object v3

    check-cast v3, Lcom/upsight/android/analytics/UpsightAnalyticsComponent;

    invoke-interface {v3}, Lcom/upsight/android/analytics/UpsightAnalyticsComponent;->clock()Lcom/upsight/android/analytics/internal/session/Clock;

    move-result-object v1

    .line 64
    .local v1, "clock":Lcom/upsight/android/analytics/internal/session/Clock;
    new-instance v3, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;

    invoke-direct {v3, v0, v1}, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;-><init>(Lcom/squareup/otto/Bus;Lcom/upsight/android/analytics/internal/session/Clock;)V

    return-object v3
.end method

.method provideUpsightMarketingContentStore(Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;)Lcom/upsight/android/marketing/UpsightMarketingContentStore;
    .locals 0
    .param p1, "impl"    # Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 76
    return-object p1
.end method
