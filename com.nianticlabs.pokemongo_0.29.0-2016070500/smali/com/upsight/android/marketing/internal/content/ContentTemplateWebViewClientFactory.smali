.class public Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClientFactory;
.super Ljava/lang/Object;
.source "ContentTemplateWebViewClientFactory.java"


# instance fields
.field protected final mBus:Lcom/squareup/otto/Bus;

.field protected final mLogger:Lcom/upsight/android/logger/UpsightLogger;

.field protected final mMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;


# direct methods
.method public constructor <init>(Lcom/squareup/otto/Bus;Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/upsight/android/logger/UpsightLogger;)V
    .locals 0
    .param p1, "bus"    # Lcom/squareup/otto/Bus;
    .param p2, "mapper"    # Lcom/fasterxml/jackson/databind/ObjectMapper;
    .param p3, "logger"    # Lcom/upsight/android/logger/UpsightLogger;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClientFactory;->mBus:Lcom/squareup/otto/Bus;

    .line 24
    iput-object p2, p0, Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClientFactory;->mMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 25
    iput-object p3, p0, Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClientFactory;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    .line 26
    return-void
.end method


# virtual methods
.method public create(Lcom/upsight/android/marketing/internal/content/MarketingContent;)Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClient;
    .locals 4
    .param p1, "content"    # Lcom/upsight/android/marketing/internal/content/MarketingContent;

    .prologue
    .line 35
    new-instance v0, Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClient;

    iget-object v1, p0, Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClientFactory;->mBus:Lcom/squareup/otto/Bus;

    iget-object v2, p0, Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClientFactory;->mMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v3, p0, Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClientFactory;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClient;-><init>(Lcom/upsight/android/marketing/internal/content/MarketingContent;Lcom/squareup/otto/Bus;Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/upsight/android/logger/UpsightLogger;)V

    return-object v0
.end method
