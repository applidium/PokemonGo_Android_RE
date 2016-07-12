.class public Lcom/upsight/android/marketing/internal/content/MarketingContent$ScopedAvailabilityEvent;
.super Lcom/upsight/android/marketing/internal/content/MarketingContent$AvailabilityEvent;
.source "MarketingContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/marketing/internal/content/MarketingContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScopedAvailabilityEvent"
.end annotation


# instance fields
.field private final mScopes:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "scopes"    # [Ljava/lang/String;

    .prologue
    .line 244
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/upsight/android/marketing/internal/content/MarketingContent$AvailabilityEvent;-><init>(Ljava/lang/String;Lcom/upsight/android/marketing/internal/content/MarketingContent$1;)V

    .line 245
    iput-object p2, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent$ScopedAvailabilityEvent;->mScopes:[Ljava/lang/String;

    .line 246
    return-void
.end method


# virtual methods
.method public getScopes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent$ScopedAvailabilityEvent;->mScopes:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
