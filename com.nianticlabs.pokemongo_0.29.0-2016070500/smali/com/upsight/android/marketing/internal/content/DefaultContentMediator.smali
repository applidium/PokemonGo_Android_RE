.class public final Lcom/upsight/android/marketing/internal/content/DefaultContentMediator;
.super Ljava/lang/Object;
.source "DefaultContentMediator.java"

# interfaces
.implements Lcom/upsight/android/marketing/UpsightContentMediator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public displayContent(Lcom/upsight/android/marketing/internal/content/MarketingContent;Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "content"    # Lcom/upsight/android/marketing/internal/content/MarketingContent;
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v2, -0x1

    .line 34
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 35
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 36
    .local v0, "contentView":Landroid/view/View;
    invoke-virtual {p2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    return-void
.end method

.method public getContentProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string v0, "upsight"

    return-object v0
.end method

.method public hideContent(Lcom/upsight/android/marketing/internal/content/MarketingContent;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "content"    # Lcom/upsight/android/marketing/internal/content/MarketingContent;
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 41
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 42
    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    return v0
.end method
