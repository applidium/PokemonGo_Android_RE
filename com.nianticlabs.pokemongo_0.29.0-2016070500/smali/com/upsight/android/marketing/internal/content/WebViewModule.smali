.class public final Lcom/upsight/android/marketing/internal/content/WebViewModule;
.super Ljava/lang/Object;
.source "WebViewModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method provideContentTemplateWebViewClientFactory(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClientFactory;
    .locals 5
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 24
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getCoreComponent()Lcom/upsight/android/UpsightCoreComponent;

    move-result-object v1

    .line 25
    .local v1, "coreComponent":Lcom/upsight/android/UpsightCoreComponent;
    invoke-interface {v1}, Lcom/upsight/android/UpsightCoreComponent;->bus()Lcom/squareup/otto/Bus;

    move-result-object v0

    .line 26
    .local v0, "bus":Lcom/squareup/otto/Bus;
    invoke-interface {v1}, Lcom/upsight/android/UpsightCoreComponent;->objectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v3

    .line 27
    .local v3, "mapper":Lcom/fasterxml/jackson/databind/ObjectMapper;
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v2

    .line 29
    .local v2, "logger":Lcom/upsight/android/logger/UpsightLogger;
    new-instance v4, Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClientFactory;

    invoke-direct {v4, v0, v3, v2}, Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClientFactory;-><init>(Lcom/squareup/otto/Bus;Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/upsight/android/logger/UpsightLogger;)V

    return-object v4
.end method
