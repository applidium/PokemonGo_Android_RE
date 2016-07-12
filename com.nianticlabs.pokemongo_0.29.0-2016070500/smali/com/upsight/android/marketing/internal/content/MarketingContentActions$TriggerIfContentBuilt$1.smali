.class Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentBuilt$1;
.super Ljava/lang/Object;
.source "MarketingContentActions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentBuilt;->execute(Lcom/upsight/android/marketing/internal/content/MarketingContent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentBuilt;

.field final synthetic val$content:Lcom/upsight/android/marketing/internal/content/MarketingContent;


# direct methods
.method constructor <init>(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentBuilt;Lcom/upsight/android/marketing/internal/content/MarketingContent;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentBuilt$1;->this$0:Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentBuilt;

    iput-object p2, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentBuilt$1;->val$content:Lcom/upsight/android/marketing/internal/content/MarketingContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentBuilt$1;->val$content:Lcom/upsight/android/marketing/internal/content/MarketingContent;

    const-string v1, "content_dismissed"

    invoke-virtual {v0, v1}, Lcom/upsight/android/marketing/internal/content/MarketingContent;->executeActions(Ljava/lang/String;)V

    .line 273
    return-void
.end method
