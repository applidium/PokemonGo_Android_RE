.class interface abstract Lcom/upsight/android/marketing/internal/content/MarketingContentActions$InternalFactory;
.super Ljava/lang/Object;
.source "MarketingContentActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/marketing/internal/content/MarketingContentActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "InternalFactory"
.end annotation


# virtual methods
.method public abstract create(Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/upsight/android/analytics/internal/action/Action;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ")",
            "Lcom/upsight/android/analytics/internal/action/Action",
            "<",
            "Lcom/upsight/android/marketing/internal/content/MarketingContent;",
            "Lcom/upsight/android/marketing/internal/content/MarketingContentActions$MarketingContentActionContext;",
            ">;"
        }
    .end annotation
.end method
