.class public Lcom/upsight/android/marketing/internal/MarketingModule;
.super Ljava/lang/Object;
.source "MarketingModule.java"


# annotations
.annotation runtime Ldagger/Module;
    includes = {
        Lcom/upsight/android/marketing/internal/billboard/BillboardModule;,
        Lcom/upsight/android/marketing/internal/content/ContentModule;,
        Lcom/upsight/android/marketing/internal/content/WebViewModule;,
        Lcom/upsight/android/marketing/internal/BaseMarketingModule;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
