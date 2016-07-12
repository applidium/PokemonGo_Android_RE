.class public Lcom/upsight/android/analytics/event/comm/UpsightCommRegisterEvent$Builder;
.super Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;
.source "UpsightCommRegisterEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/event/comm/UpsightCommRegisterEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder",
        "<",
        "Lcom/upsight/android/analytics/event/comm/UpsightCommRegisterEvent;",
        "Lcom/upsight/android/analytics/event/comm/UpsightCommRegisterEvent$UpsightData;",
        ">;"
    }
.end annotation


# instance fields
.field private token:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;-><init>()V

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/upsight/android/analytics/event/comm/UpsightCommRegisterEvent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/comm/UpsightCommRegisterEvent$Builder;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/upsight/android/analytics/event/comm/UpsightCommRegisterEvent$Builder;->token:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic build()Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/upsight/android/analytics/event/comm/UpsightCommRegisterEvent$Builder;->build()Lcom/upsight/android/analytics/event/comm/UpsightCommRegisterEvent;

    move-result-object v0

    return-object v0
.end method

.method protected build()Lcom/upsight/android/analytics/event/comm/UpsightCommRegisterEvent;
    .locals 4

    .prologue
    .line 80
    new-instance v0, Lcom/upsight/android/analytics/event/comm/UpsightCommRegisterEvent;

    const-string v1, "upsight.comm.register"

    new-instance v2, Lcom/upsight/android/analytics/event/comm/UpsightCommRegisterEvent$UpsightData;

    invoke-direct {v2, p0}, Lcom/upsight/android/analytics/event/comm/UpsightCommRegisterEvent$UpsightData;-><init>(Lcom/upsight/android/analytics/event/comm/UpsightCommRegisterEvent$Builder;)V

    iget-object v3, p0, Lcom/upsight/android/analytics/event/comm/UpsightCommRegisterEvent$Builder;->mPublisherDataBuilder:Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    invoke-virtual {v3}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->build()Lcom/upsight/android/analytics/event/UpsightPublisherData;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/upsight/android/analytics/event/comm/UpsightCommRegisterEvent;-><init>(Ljava/lang/String;Lcom/upsight/android/analytics/event/comm/UpsightCommRegisterEvent$UpsightData;Lcom/upsight/android/analytics/event/UpsightPublisherData;)V

    return-object v0
.end method

.method public setToken(Ljava/lang/String;)Lcom/upsight/android/analytics/event/comm/UpsightCommRegisterEvent$Builder;
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/upsight/android/analytics/event/comm/UpsightCommRegisterEvent$Builder;->token:Ljava/lang/String;

    .line 75
    return-object p0
.end method
