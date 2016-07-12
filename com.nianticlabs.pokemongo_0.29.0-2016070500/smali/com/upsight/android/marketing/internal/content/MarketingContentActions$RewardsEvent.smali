.class public Lcom/upsight/android/marketing/internal/content/MarketingContentActions$RewardsEvent;
.super Ljava/lang/Object;
.source "MarketingContentActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/marketing/internal/content/MarketingContentActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RewardsEvent"
.end annotation


# instance fields
.field public final mId:Ljava/lang/String;

.field public final mRewards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/upsight/android/marketing/UpsightReward;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/upsight/android/marketing/UpsightReward;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 767
    .local p2, "rewards":Ljava/util/List;, "Ljava/util/List<Lcom/upsight/android/marketing/UpsightReward;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 768
    iput-object p1, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$RewardsEvent;->mId:Ljava/lang/String;

    .line 769
    iput-object p2, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$RewardsEvent;->mRewards:Ljava/util/List;

    .line 770
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/util/List;
    .param p3, "x2"    # Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;

    .prologue
    .line 761
    invoke-direct {p0, p1, p2}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$RewardsEvent;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
