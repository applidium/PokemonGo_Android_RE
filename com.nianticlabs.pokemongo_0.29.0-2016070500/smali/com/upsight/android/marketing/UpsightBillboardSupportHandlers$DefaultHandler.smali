.class public Lcom/upsight/android/marketing/UpsightBillboardSupportHandlers$DefaultHandler;
.super Lcom/upsight/android/marketing/UpsightBillboardSupportHandlers$SimpleHandler;
.source "UpsightBillboardSupportHandlers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/marketing/UpsightBillboardSupportHandlers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultHandler"
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 0
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lcom/upsight/android/marketing/UpsightBillboardSupportHandlers$SimpleHandler;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    .line 222
    return-void
.end method


# virtual methods
.method public onAttach(Ljava/lang/String;Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;Ljava/util/Set;)Landroid/view/ViewGroup;
    .locals 5
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "presentation"    # Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;",
            "Ljava/util/Set",
            "<",
            "Lcom/upsight/android/marketing/UpsightBillboard$Dimensions;",
            ">;)",
            "Landroid/view/ViewGroup;"
        }
    .end annotation

    .prologue
    .local p3, "dimensions":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/marketing/UpsightBillboard$Dimensions;>;"
    const/4 v2, 0x0

    .line 226
    iget-object v3, p0, Lcom/upsight/android/marketing/UpsightBillboardSupportHandlers$DefaultHandler;->mActivity:Landroid/support/v4/app/FragmentActivity;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/upsight/android/marketing/UpsightBillboardSupportHandlers$DefaultHandler;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 244
    :cond_0
    :goto_0
    return-object v2

    .line 229
    :cond_1
    const/4 v0, 0x0

    .line 231
    .local v0, "fragmentDimensions":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/marketing/UpsightBillboard$Dimensions;>;"
    sget-object v3, Lcom/upsight/android/marketing/UpsightBillboardSupportHandlers$1;->$SwitchMap$com$upsight$android$marketing$UpsightBillboard$PresentationStyle:[I

    invoke-virtual {p2}, Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 238
    const v1, 0x103012a

    .line 240
    .local v1, "style":I
    :goto_1
    iget-object v3, p0, Lcom/upsight/android/marketing/UpsightBillboardSupportHandlers$DefaultHandler;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v3, v0}, Lcom/upsight/android/marketing/internal/billboard/BillboardSupportFragment;->newInstance(Landroid/content/Context;Ljava/util/Set;)Lcom/upsight/android/marketing/internal/billboard/BillboardSupportFragment;

    move-result-object v3

    iput-object v3, p0, Lcom/upsight/android/marketing/UpsightBillboardSupportHandlers$DefaultHandler;->mFragment:Lcom/upsight/android/marketing/internal/billboard/BillboardSupportFragment;

    .line 241
    iget-object v3, p0, Lcom/upsight/android/marketing/UpsightBillboardSupportHandlers$DefaultHandler;->mFragment:Lcom/upsight/android/marketing/internal/billboard/BillboardSupportFragment;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1}, Lcom/upsight/android/marketing/internal/billboard/BillboardSupportFragment;->setStyle(II)V

    .line 242
    iget-object v3, p0, Lcom/upsight/android/marketing/UpsightBillboardSupportHandlers$DefaultHandler;->mFragment:Lcom/upsight/android/marketing/internal/billboard/BillboardSupportFragment;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/upsight/android/marketing/internal/billboard/BillboardSupportFragment;->setCancelable(Z)V

    .line 243
    iget-object v3, p0, Lcom/upsight/android/marketing/UpsightBillboardSupportHandlers$DefaultHandler;->mFragment:Lcom/upsight/android/marketing/internal/billboard/BillboardSupportFragment;

    iget-object v4, p0, Lcom/upsight/android/marketing/UpsightBillboardSupportHandlers$DefaultHandler;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/upsight/android/marketing/internal/billboard/BillboardSupportFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 244
    iget-object v2, p0, Lcom/upsight/android/marketing/UpsightBillboardSupportHandlers$DefaultHandler;->mFragment:Lcom/upsight/android/marketing/internal/billboard/BillboardSupportFragment;

    invoke-virtual {v2}, Lcom/upsight/android/marketing/internal/billboard/BillboardSupportFragment;->getContentViewContainer()Landroid/view/ViewGroup;

    move-result-object v2

    goto :goto_0

    .line 233
    .end local v1    # "style":I
    :pswitch_0
    move-object v0, p3

    .line 234
    # getter for: Lcom/upsight/android/marketing/UpsightBillboardSupportHandlers;->STYLE_DIALOG:I
    invoke-static {}, Lcom/upsight/android/marketing/UpsightBillboardSupportHandlers;->access$000()I

    move-result v1

    .line 235
    .restart local v1    # "style":I
    goto :goto_1

    .line 231
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onDetach()V
    .locals 0

    .prologue
    .line 212
    invoke-super {p0}, Lcom/upsight/android/marketing/UpsightBillboardSupportHandlers$SimpleHandler;->onDetach()V

    return-void
.end method

.method public bridge synthetic onNextView()V
    .locals 0

    .prologue
    .line 212
    invoke-super {p0}, Lcom/upsight/android/marketing/UpsightBillboardSupportHandlers$SimpleHandler;->onNextView()V

    return-void
.end method

.method public bridge synthetic onPurchases(Ljava/util/List;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/List;

    .prologue
    .line 212
    invoke-super {p0, p1}, Lcom/upsight/android/marketing/UpsightBillboardSupportHandlers$SimpleHandler;->onPurchases(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic onRewards(Ljava/util/List;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/List;

    .prologue
    .line 212
    invoke-super {p0, p1}, Lcom/upsight/android/marketing/UpsightBillboardSupportHandlers$SimpleHandler;->onRewards(Ljava/util/List;)V

    return-void
.end method
