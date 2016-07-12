.class public Lcom/upsight/android/marketing/internal/content/MarketingContentActions$PurchasesEvent;
.super Ljava/lang/Object;
.source "MarketingContentActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/marketing/internal/content/MarketingContentActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PurchasesEvent"
.end annotation


# instance fields
.field public final mId:Ljava/lang/String;

.field public final mPurchases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/upsight/android/marketing/UpsightPurchase;",
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
            "Lcom/upsight/android/marketing/UpsightPurchase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 779
    .local p2, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/upsight/android/marketing/UpsightPurchase;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 780
    iput-object p1, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$PurchasesEvent;->mId:Ljava/lang/String;

    .line 781
    iput-object p2, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$PurchasesEvent;->mPurchases:Ljava/util/List;

    .line 782
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/util/List;
    .param p3, "x2"    # Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;

    .prologue
    .line 773
    invoke-direct {p0, p1, p2}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$PurchasesEvent;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
