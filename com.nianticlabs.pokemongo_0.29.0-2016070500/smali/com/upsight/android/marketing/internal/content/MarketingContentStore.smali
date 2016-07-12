.class public interface abstract Lcom/upsight/android/marketing/internal/content/MarketingContentStore;
.super Ljava/lang/Object;
.source "MarketingContentStore.java"

# interfaces
.implements Lcom/upsight/android/analytics/internal/action/ActionableStore;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/upsight/android/analytics/internal/action/ActionableStore",
        "<",
        "Lcom/upsight/android/marketing/internal/content/MarketingContent;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getIdsForScope(Ljava/lang/String;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract presentScopedContent(Ljava/lang/String;[Ljava/lang/String;)Z
.end method

.method public abstract presentScopelessContent(Ljava/lang/String;Ljava/lang/String;)Z
.end method
