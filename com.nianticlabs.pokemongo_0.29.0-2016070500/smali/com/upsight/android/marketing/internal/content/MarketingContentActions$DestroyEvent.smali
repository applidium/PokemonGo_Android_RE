.class public Lcom/upsight/android/marketing/internal/content/MarketingContentActions$DestroyEvent;
.super Ljava/lang/Object;
.source "MarketingContentActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/marketing/internal/content/MarketingContentActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DestroyEvent"
.end annotation


# instance fields
.field public final mId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 756
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 757
    iput-object p1, p0, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$DestroyEvent;->mId:Ljava/lang/String;

    .line 758
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/upsight/android/marketing/internal/content/MarketingContentActions$1;

    .prologue
    .line 752
    invoke-direct {p0, p1}, Lcom/upsight/android/marketing/internal/content/MarketingContentActions$DestroyEvent;-><init>(Ljava/lang/String;)V

    return-void
.end method
