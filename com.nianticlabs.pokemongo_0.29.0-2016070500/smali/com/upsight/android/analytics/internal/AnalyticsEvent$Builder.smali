.class public abstract Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;
.super Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent$Builder;
.source "AnalyticsEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/internal/AnalyticsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/upsight/android/analytics/internal/AnalyticsEvent",
        "<TU;>;U:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent$Builder",
        "<TT;TU;",
        "Lcom/upsight/android/analytics/event/UpsightPublisherData;",
        ">;"
    }
.end annotation


# instance fields
.field protected final mPublisherDataBuilder:Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 20
    .local p0, "this":Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;, "Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder<TT;TU;>;"
    invoke-direct {p0}, Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent$Builder;-><init>()V

    .line 21
    new-instance v0, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    invoke-direct {v0}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;->mPublisherDataBuilder:Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    .line 22
    return-void
.end method


# virtual methods
.method public put(Lcom/upsight/android/analytics/event/UpsightPublisherData;)Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;
    .locals 1
    .param p1, "data"    # Lcom/upsight/android/analytics/event/UpsightPublisherData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/analytics/event/UpsightPublisherData;",
            ")",
            "Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder",
            "<TT;TU;>;"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;, "Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder<TT;TU;>;"
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;->mPublisherDataBuilder:Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    invoke-virtual {v0, p1}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->put(Lcom/upsight/android/analytics/event/UpsightPublisherData;)Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    .line 117
    return-object p0
.end method

.method public put(Ljava/lang/String;C)Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "C)",
            "Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder",
            "<TT;TU;>;"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;, "Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder<TT;TU;>;"
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;->mPublisherDataBuilder:Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->put(Ljava/lang/String;C)Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    .line 93
    return-object p0
.end method

.method public put(Ljava/lang/String;D)Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D)",
            "Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder",
            "<TT;TU;>;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;, "Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder<TT;TU;>;"
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;->mPublisherDataBuilder:Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    invoke-virtual {v0, p1, p2, p3}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->put(Ljava/lang/String;D)Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    .line 81
    return-object p0
.end method

.method public put(Ljava/lang/String;F)Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F)",
            "Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder",
            "<TT;TU;>;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;, "Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder<TT;TU;>;"
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;->mPublisherDataBuilder:Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->put(Ljava/lang/String;F)Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    .line 69
    return-object p0
.end method

.method public put(Ljava/lang/String;I)Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder",
            "<TT;TU;>;"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;, "Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder<TT;TU;>;"
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;->mPublisherDataBuilder:Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->put(Ljava/lang/String;I)Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    .line 45
    return-object p0
.end method

.method public put(Ljava/lang/String;J)Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder",
            "<TT;TU;>;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;, "Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder<TT;TU;>;"
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;->mPublisherDataBuilder:Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    invoke-virtual {v0, p1, p2, p3}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->put(Ljava/lang/String;J)Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    .line 57
    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ")",
            "Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder",
            "<TT;TU;>;"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;, "Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder<TT;TU;>;"
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;->mPublisherDataBuilder:Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->put(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    .line 105
    return-object p0
.end method

.method public put(Ljava/lang/String;Z)Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder",
            "<TT;TU;>;"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;, "Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder<TT;TU;>;"
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;->mPublisherDataBuilder:Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->put(Ljava/lang/String;Z)Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    .line 33
    return-object p0
.end method
