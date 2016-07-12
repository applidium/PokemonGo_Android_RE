.class Lcom/upsight/android/marketing/internal/content/MarketingContentActions$PresentCloseButton$1;
.super Ljava/lang/Object;
.source "MarketingContentActions.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/marketing/internal/content/MarketingContentActions$PresentCloseButton;->execute(Lcom/upsight/android/marketing/internal/content/MarketingContent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/marketing/internal/content/MarketingContentActions$PresentCloseButton;

.field final synthetic val$content:Lcom/upsight/android/marketing/internal/content/MarketingContent;


# direct methods
.method constructor <init>(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$PresentCloseButton;Lcom/upsight/android/marketing/internal/content/MarketingContent;)V
    .locals 0

    .prologue
    .line 473
    iput-object p1, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$PresentCloseButton$1;->this$0:Lcom/upsight/android/marketing/internal/content/MarketingContentActions$PresentCloseButton;

    iput-object p2, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$PresentCloseButton$1;->val$content:Lcom/upsight/android/marketing/internal/content/MarketingContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    .prologue
    .line 476
    iget-object v2, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$PresentCloseButton$1;->val$content:Lcom/upsight/android/marketing/internal/content/MarketingContent;

    invoke-virtual {v2}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->getContentView()Landroid/view/View;

    move-result-object v1

    .line 477
    .local v1, "contentView":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 478
    sget v2, Lcom/upsight/android/marketing/R$id;->upsight_marketing_content_view_close_button:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 479
    .local v0, "closeButton":Landroid/widget/ImageView;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 481
    .end local v0    # "closeButton":Landroid/widget/ImageView;
    :cond_0
    return-void
.end method
