.class public Lcom/upsight/android/analytics/event/partner/UpsightPartnerClickEvent;
.super Lcom/upsight/android/analytics/internal/AnalyticsEvent;
.source "UpsightPartnerClickEvent.java"


# annotations
.annotation runtime Lcom/upsight/android/persistence/annotation/UpsightStorableType;
    value = "upsight.partner.click"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/event/partner/UpsightPartnerClickEvent$Builder;,
        Lcom/upsight/android/analytics/event/partner/UpsightPartnerClickEvent$UpsightData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/upsight/android/analytics/internal/AnalyticsEvent",
        "<",
        "Lcom/upsight/android/analytics/event/partner/UpsightPartnerClickEvent$UpsightData;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/AnalyticsEvent;-><init>()V

    .line 178
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/upsight/android/analytics/event/partner/UpsightPartnerClickEvent$UpsightData;Lcom/upsight/android/analytics/event/UpsightPublisherData;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "upsightData"    # Lcom/upsight/android/analytics/event/partner/UpsightPartnerClickEvent$UpsightData;
    .param p3, "publisherData"    # Lcom/upsight/android/analytics/event/UpsightPublisherData;

    .prologue
    .line 173
    invoke-direct {p0, p1, p2, p3}, Lcom/upsight/android/analytics/internal/AnalyticsEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/upsight/android/analytics/event/UpsightPublisherData;)V

    .line 174
    return-void
.end method

.method public static createBuilder(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/upsight/android/analytics/event/partner/UpsightPartnerClickEvent$Builder;
    .locals 1
    .param p0, "partnerId"    # Ljava/lang/Integer;
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "streamId"    # Ljava/lang/String;
    .param p3, "contentId"    # Ljava/lang/Integer;

    .prologue
    .line 33
    new-instance v0, Lcom/upsight/android/analytics/event/partner/UpsightPartnerClickEvent$Builder;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/upsight/android/analytics/event/partner/UpsightPartnerClickEvent$Builder;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method
