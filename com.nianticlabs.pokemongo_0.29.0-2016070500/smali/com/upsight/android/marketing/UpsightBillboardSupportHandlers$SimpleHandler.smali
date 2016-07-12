.class abstract Lcom/upsight/android/marketing/UpsightBillboardSupportHandlers$SimpleHandler;
.super Ljava/lang/Object;
.source "UpsightBillboardSupportHandlers.java"

# interfaces
.implements Lcom/upsight/android/marketing/UpsightBillboard$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/marketing/UpsightBillboardSupportHandlers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SimpleHandler"
.end annotation


# instance fields
.field protected mActivity:Landroid/support/v4/app/FragmentActivity;

.field protected mFragment:Lcom/upsight/android/marketing/internal/billboard/BillboardSupportFragment;


# direct methods
.method protected constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/upsight/android/marketing/UpsightBillboardSupportHandlers$SimpleHandler;->mFragment:Lcom/upsight/android/marketing/internal/billboard/BillboardSupportFragment;

    .line 274
    iput-object p1, p0, Lcom/upsight/android/marketing/UpsightBillboardSupportHandlers$SimpleHandler;->mActivity:Landroid/support/v4/app/FragmentActivity;

    .line 275
    return-void
.end method


# virtual methods
.method public onDetach()V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/upsight/android/marketing/UpsightBillboardSupportHandlers$SimpleHandler;->mFragment:Lcom/upsight/android/marketing/internal/billboard/BillboardSupportFragment;

    .line 285
    .local v0, "fragment":Landroid/support/v4/app/DialogFragment;
    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 287
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/upsight/android/marketing/UpsightBillboardSupportHandlers$SimpleHandler;->mFragment:Lcom/upsight/android/marketing/internal/billboard/BillboardSupportFragment;

    .line 289
    :cond_0
    return-void
.end method

.method public onNextView()V
    .locals 0

    .prologue
    .line 280
    return-void
.end method

.method public onPurchases(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/upsight/android/marketing/UpsightPurchase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 294
    .local p1, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/upsight/android/marketing/UpsightPurchase;>;"
    return-void
.end method

.method public onRewards(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/upsight/android/marketing/UpsightReward;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 299
    .local p1, "rewards":Ljava/util/List;, "Ljava/util/List<Lcom/upsight/android/marketing/UpsightReward;>;"
    return-void
.end method
