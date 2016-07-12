.class public Lcom/upsight/android/marketing/internal/content/MarketingContent$ScopelessAvailabilityEvent;
.super Lcom/upsight/android/marketing/internal/content/MarketingContent$AvailabilityEvent;
.source "MarketingContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/marketing/internal/content/MarketingContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScopelessAvailabilityEvent"
.end annotation


# instance fields
.field private final mParentId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "parentId"    # Ljava/lang/String;

    .prologue
    .line 258
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/upsight/android/marketing/internal/content/MarketingContent$AvailabilityEvent;-><init>(Ljava/lang/String;Lcom/upsight/android/marketing/internal/content/MarketingContent$1;)V

    .line 259
    iput-object p2, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent$ScopelessAvailabilityEvent;->mParentId:Ljava/lang/String;

    .line 260
    return-void
.end method


# virtual methods
.method public getParentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent$ScopelessAvailabilityEvent;->mParentId:Ljava/lang/String;

    return-object v0
.end method
