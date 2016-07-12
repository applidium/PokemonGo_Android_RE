.class public final Lcom/upsight/android/marketing/internal/content/MarketingContentActions;
.super Ljava/lang/Object;
.source "MarketingContentActions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/marketing/internal/content/MarketingContentActions$PurchasesEvent;,
        Lcom/upsight/android/marketing/internal/content/MarketingContentActions$RewardsEvent;,
        Lcom/upsight/android/marketing/internal/content/MarketingContentActions$DestroyEvent;,
        Lcom/upsight/android/marketing/internal/content/MarketingContentActions$AssociateOnce;,
        Lcom/upsight/android/marketing/internal/content/MarketingContentActions$NotifyPurchases;,
        Lcom/upsight/android/marketing/internal/content/MarketingContentActions$NotifyRewards;,
        Lcom/upsight/android/marketing/internal/content/MarketingContentActions$SendFormData;,
        Lcom/upsight/android/marketing/internal/content/MarketingContentActions$SendEvent;,
        Lcom/upsight/android/marketing/internal/content/MarketingContentActions$OpenUrl;,
        Lcom/upsight/android/marketing/internal/content/MarketingContentActions$Destroy;,
        Lcom/upsight/android/marketing/internal/content/MarketingContentActions$PresentCloseButton;,
        Lcom/upsight/android/marketing/internal/content/MarketingContentActions$PresentScopelessContent;,
        Lcom/upsight/android/marketing/internal/content/MarketingContentActions$PresentScopedContent;,
        Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentAvailable;,
        Lcom/upsight/android/marketing/internal/content/MarketingContentActions$TriggerIfContentBuilt;,
        Lcom/upsight/android/marketing/internal/content/MarketingContentActions$Trigger;,
        Lcom/upsight/android/marketing/internal/content/MarketingContentActions$InternalFactory;,
        Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionFactory;,
        Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;
    }
.end annotation


# static fields
.field private static final FACTORY_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/upsight/android/marketing/internal/content/MarketingContentActions$InternalFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;

    invoke-direct {v0}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;-><init>()V

    sput-object v0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions;->FACTORY_MAP:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method static synthetic access$1300()Ljava/util/Map;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions;->FACTORY_MAP:Ljava/util/Map;

    return-object v0
.end method
