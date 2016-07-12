.class public final Lcom/upsight/android/analytics/dispatcher/AnalyticsEventDeliveryStatus;
.super Ljava/lang/Object;
.source "AnalyticsEventDeliveryStatus.java"


# annotations
.annotation runtime Lcom/upsight/android/persistence/annotation/UpsightStorableType;
    value = "upsight.dispatcher.delivery.status"
.end annotation


# instance fields
.field id:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation

    .annotation runtime Lcom/upsight/android/persistence/annotation/UpsightStorableIdentifier;
    .end annotation
.end field

.field private mFailureReason:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "failure_reason"
    .end annotation
.end field

.field private mOriginEventId:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "source_event_id"
    .end annotation
.end field

.field private mStatus:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "status"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p1, "sourceEventId"    # Ljava/lang/String;
    .param p2, "wasDelivered"    # Z
    .param p3, "failureReason"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/upsight/android/analytics/dispatcher/AnalyticsEventDeliveryStatus;->mOriginEventId:Ljava/lang/String;

    .line 49
    iput-boolean p2, p0, Lcom/upsight/android/analytics/dispatcher/AnalyticsEventDeliveryStatus;->mStatus:Z

    .line 50
    iput-object p3, p0, Lcom/upsight/android/analytics/dispatcher/AnalyticsEventDeliveryStatus;->mFailureReason:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public static fromFailure(Ljava/lang/String;Ljava/lang/String;)Lcom/upsight/android/analytics/dispatcher/AnalyticsEventDeliveryStatus;
    .locals 2
    .param p0, "sourceEventId"    # Ljava/lang/String;
    .param p1, "failureReason"    # Ljava/lang/String;

    .prologue
    .line 26
    new-instance v0, Lcom/upsight/android/analytics/dispatcher/AnalyticsEventDeliveryStatus;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/upsight/android/analytics/dispatcher/AnalyticsEventDeliveryStatus;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    return-object v0
.end method

.method public static fromSuccess(Ljava/lang/String;)Lcom/upsight/android/analytics/dispatcher/AnalyticsEventDeliveryStatus;
    .locals 3
    .param p0, "sourceEventId"    # Ljava/lang/String;

    .prologue
    .line 21
    new-instance v0, Lcom/upsight/android/analytics/dispatcher/AnalyticsEventDeliveryStatus;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/upsight/android/analytics/dispatcher/AnalyticsEventDeliveryStatus;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 72
    if-ne p0, p1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v1

    .line 76
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 77
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 80
    check-cast v0, Lcom/upsight/android/analytics/dispatcher/AnalyticsEventDeliveryStatus;

    .line 82
    .local v0, "that":Lcom/upsight/android/analytics/dispatcher/AnalyticsEventDeliveryStatus;
    iget-object v3, p0, Lcom/upsight/android/analytics/dispatcher/AnalyticsEventDeliveryStatus;->id:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/upsight/android/analytics/dispatcher/AnalyticsEventDeliveryStatus;->id:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/upsight/android/analytics/dispatcher/AnalyticsEventDeliveryStatus;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/upsight/android/analytics/dispatcher/AnalyticsEventDeliveryStatus;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getFailureReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/upsight/android/analytics/dispatcher/AnalyticsEventDeliveryStatus;->mFailureReason:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceEventId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/upsight/android/analytics/dispatcher/AnalyticsEventDeliveryStatus;->mOriginEventId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/upsight/android/analytics/dispatcher/AnalyticsEventDeliveryStatus;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/upsight/android/analytics/dispatcher/AnalyticsEventDeliveryStatus;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public wasDelivered()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/upsight/android/analytics/dispatcher/AnalyticsEventDeliveryStatus;->mStatus:Z

    return v0
.end method
