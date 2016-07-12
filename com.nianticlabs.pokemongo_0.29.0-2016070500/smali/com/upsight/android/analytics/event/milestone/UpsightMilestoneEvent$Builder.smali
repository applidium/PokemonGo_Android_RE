.class public Lcom/upsight/android/analytics/event/milestone/UpsightMilestoneEvent$Builder;
.super Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;
.source "UpsightMilestoneEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/event/milestone/UpsightMilestoneEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder",
        "<",
        "Lcom/upsight/android/analytics/event/milestone/UpsightMilestoneEvent;",
        "Lcom/upsight/android/analytics/event/milestone/UpsightMilestoneEvent$UpsightData;",
        ">;"
    }
.end annotation


# instance fields
.field private scope:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "scope"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/upsight/android/analytics/event/milestone/UpsightMilestoneEvent$Builder;->scope:Ljava/lang/String;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/upsight/android/analytics/event/milestone/UpsightMilestoneEvent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/milestone/UpsightMilestoneEvent$Builder;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/upsight/android/analytics/event/milestone/UpsightMilestoneEvent$Builder;->scope:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic build()Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/upsight/android/analytics/event/milestone/UpsightMilestoneEvent$Builder;->build()Lcom/upsight/android/analytics/event/milestone/UpsightMilestoneEvent;

    move-result-object v0

    return-object v0
.end method

.method protected build()Lcom/upsight/android/analytics/event/milestone/UpsightMilestoneEvent;
    .locals 4

    .prologue
    .line 76
    new-instance v0, Lcom/upsight/android/analytics/event/milestone/UpsightMilestoneEvent;

    const-string v1, "upsight.milestone"

    new-instance v2, Lcom/upsight/android/analytics/event/milestone/UpsightMilestoneEvent$UpsightData;

    invoke-direct {v2, p0}, Lcom/upsight/android/analytics/event/milestone/UpsightMilestoneEvent$UpsightData;-><init>(Lcom/upsight/android/analytics/event/milestone/UpsightMilestoneEvent$Builder;)V

    iget-object v3, p0, Lcom/upsight/android/analytics/event/milestone/UpsightMilestoneEvent$Builder;->mPublisherDataBuilder:Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    invoke-virtual {v3}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->build()Lcom/upsight/android/analytics/event/UpsightPublisherData;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/upsight/android/analytics/event/milestone/UpsightMilestoneEvent;-><init>(Ljava/lang/String;Lcom/upsight/android/analytics/event/milestone/UpsightMilestoneEvent$UpsightData;Lcom/upsight/android/analytics/event/UpsightPublisherData;)V

    return-object v0
.end method
