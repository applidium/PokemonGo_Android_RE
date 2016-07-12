.class Lcom/upsight/android/marketing/internal/Marketing;
.super Ljava/lang/Object;
.source "Marketing.java"

# interfaces
.implements Lcom/upsight/android/marketing/UpsightMarketingApi;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private mBillboardManager:Lcom/upsight/android/marketing/UpsightBillboardManager;

.field private mMarketingContentStore:Lcom/upsight/android/marketing/UpsightMarketingContentStore;


# direct methods
.method public constructor <init>(Lcom/upsight/android/marketing/UpsightBillboardManager;Lcom/upsight/android/marketing/UpsightMarketingContentStore;)V
    .locals 0
    .param p1, "billboardManager"    # Lcom/upsight/android/marketing/UpsightBillboardManager;
    .param p2, "marketingContentStore"    # Lcom/upsight/android/marketing/UpsightMarketingContentStore;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/upsight/android/marketing/internal/Marketing;->mBillboardManager:Lcom/upsight/android/marketing/UpsightBillboardManager;

    .line 26
    iput-object p2, p0, Lcom/upsight/android/marketing/internal/Marketing;->mMarketingContentStore:Lcom/upsight/android/marketing/UpsightMarketingContentStore;

    .line 27
    return-void
.end method


# virtual methods
.method public isContentReady(Ljava/lang/String;)Z
    .locals 1
    .param p1, "scope"    # Ljava/lang/String;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/Marketing;->mMarketingContentStore:Lcom/upsight/android/marketing/UpsightMarketingContentStore;

    invoke-virtual {v0, p1}, Lcom/upsight/android/marketing/UpsightMarketingContentStore;->isContentReady(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public registerBillboard(Lcom/upsight/android/marketing/internal/billboard/Billboard;)Z
    .locals 1
    .param p1, "billboard"    # Lcom/upsight/android/marketing/internal/billboard/Billboard;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/Marketing;->mBillboardManager:Lcom/upsight/android/marketing/UpsightBillboardManager;

    invoke-interface {v0, p1}, Lcom/upsight/android/marketing/UpsightBillboardManager;->registerBillboard(Lcom/upsight/android/marketing/internal/billboard/Billboard;)Z

    move-result v0

    return v0
.end method

.method public registerContentMediator(Lcom/upsight/android/marketing/UpsightContentMediator;)Z
    .locals 1
    .param p1, "mediator"    # Lcom/upsight/android/marketing/UpsightContentMediator;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/Marketing;->mBillboardManager:Lcom/upsight/android/marketing/UpsightBillboardManager;

    invoke-interface {v0, p1}, Lcom/upsight/android/marketing/UpsightBillboardManager;->registerContentMediator(Lcom/upsight/android/marketing/UpsightContentMediator;)Z

    move-result v0

    return v0
.end method

.method public unregisterBillboard(Lcom/upsight/android/marketing/internal/billboard/Billboard;)Z
    .locals 1
    .param p1, "billboard"    # Lcom/upsight/android/marketing/internal/billboard/Billboard;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/Marketing;->mBillboardManager:Lcom/upsight/android/marketing/UpsightBillboardManager;

    invoke-interface {v0, p1}, Lcom/upsight/android/marketing/UpsightBillboardManager;->unregisterBillboard(Lcom/upsight/android/marketing/internal/billboard/Billboard;)Z

    move-result v0

    return v0
.end method
