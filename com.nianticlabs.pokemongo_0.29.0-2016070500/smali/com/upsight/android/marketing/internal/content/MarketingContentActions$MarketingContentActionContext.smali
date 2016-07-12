.class public Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;
.super Lcom/upsight/android/analytics/internal/action/ActionContext;
.source "MarketingContentActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/marketing/internal/content/MarketingContentActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MarketingContentActionContext"
.end annotation


# instance fields
.field public final mContentStore:Lcom/upsight/android/marketing/internal/content/MarketingContentStore;

.field public final mContentTemplateWebViewClientFactory:Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClientFactory;


# direct methods
.method public constructor <init>(Lcom/upsight/android/UpsightContext;Lcom/squareup/otto/Bus;Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/upsight/android/analytics/internal/session/Clock;Lrx/Scheduler$Worker;Lcom/upsight/android/logger/UpsightLogger;Lcom/upsight/android/marketing/internal/content/MarketingContentStore;Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClientFactory;)V
    .locals 0
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p2, "bus"    # Lcom/squareup/otto/Bus;
    .param p3, "mapper"    # Lcom/fasterxml/jackson/databind/ObjectMapper;
    .param p4, "clock"    # Lcom/upsight/android/analytics/internal/session/Clock;
    .param p5, "mainWorker"    # Lrx/Scheduler$Worker;
    .param p6, "logger"    # Lcom/upsight/android/logger/UpsightLogger;
    .param p7, "contentStore"    # Lcom/upsight/android/marketing/internal/content/MarketingContentStore;
    .param p8, "contentTemplateWebViewClientFactory"    # Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClientFactory;

    .prologue
    .line 146
    invoke-direct/range {p0 .. p6}, Lcom/upsight/android/analytics/internal/action/ActionContext;-><init>(Lcom/upsight/android/UpsightContext;Lcom/squareup/otto/Bus;Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/upsight/android/analytics/internal/session/Clock;Lrx/Scheduler$Worker;Lcom/upsight/android/logger/UpsightLogger;)V

    .line 147
    iput-object p7, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;->mContentStore:Lcom/upsight/android/marketing/internal/content/MarketingContentStore;

    .line 148
    iput-object p8, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;->mContentTemplateWebViewClientFactory:Lcom/upsight/android/marketing/internal/content/ContentTemplateWebViewClientFactory;

    .line 149
    return-void
.end method
