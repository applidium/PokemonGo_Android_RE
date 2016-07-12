.class Lcom/upsight/android/marketing/UpsightBillboardHandlers$EmbeddedHandler;
.super Lcom/upsight/android/marketing/UpsightBillboardHandlers$SimpleHandler;
.source "UpsightBillboardHandlers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/marketing/UpsightBillboardHandlers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmbeddedHandler"
.end annotation


# instance fields
.field protected mContainerViewId:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "containerViewId"    # I

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/upsight/android/marketing/UpsightBillboardHandlers$SimpleHandler;-><init>(Landroid/app/Activity;)V

    .line 134
    iput p2, p0, Lcom/upsight/android/marketing/UpsightBillboardHandlers$EmbeddedHandler;->mContainerViewId:I

    .line 135
    return-void
.end method


# virtual methods
.method public onAttach(Ljava/lang/String;Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;Ljava/util/Set;)Landroid/view/ViewGroup;
    .locals 3
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
    .line 139
    .local p3, "dimensions":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/marketing/UpsightBillboard$Dimensions;>;"
    iget-object v0, p0, Lcom/upsight/android/marketing/UpsightBillboardHandlers$EmbeddedHandler;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/upsight/android/marketing/UpsightBillboardHandlers$EmbeddedHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    :cond_0
    const/4 v0, 0x0

    .line 144
    :goto_0
    return-object v0

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/upsight/android/marketing/UpsightBillboardHandlers$EmbeddedHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p3}, Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;->newInstance(Landroid/content/Context;Ljava/util/Set;)Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/marketing/UpsightBillboardHandlers$EmbeddedHandler;->mFragment:Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;

    .line 143
    iget-object v0, p0, Lcom/upsight/android/marketing/UpsightBillboardHandlers$EmbeddedHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget v1, p0, Lcom/upsight/android/marketing/UpsightBillboardHandlers$EmbeddedHandler;->mContainerViewId:I

    iget-object v2, p0, Lcom/upsight/android/marketing/UpsightBillboardHandlers$EmbeddedHandler;->mFragment:Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 144
    iget-object v0, p0, Lcom/upsight/android/marketing/UpsightBillboardHandlers$EmbeddedHandler;->mFragment:Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;

    invoke-virtual {v0}, Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;->getContentViewContainer()Landroid/view/ViewGroup;

    move-result-object v0

    goto :goto_0
.end method
