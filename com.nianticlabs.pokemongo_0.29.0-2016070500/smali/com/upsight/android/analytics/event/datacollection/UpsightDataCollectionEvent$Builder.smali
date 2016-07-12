.class public Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$Builder;
.super Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;
.source "UpsightDataCollectionEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder",
        "<",
        "Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent;",
        "Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$UpsightData;",
        ">;"
    }
.end annotation


# instance fields
.field private dataBundle:Ljava/lang/String;

.field private format:Ljava/lang/String;

.field private streamId:Ljava/lang/String;

.field private streamStartTs:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "dataBundle"    # Ljava/lang/String;
    .param p2, "streamId"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$Builder;->dataBundle:Ljava/lang/String;

    .line 115
    iput-object p2, p0, Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$Builder;->streamId:Ljava/lang/String;

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$Builder;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$Builder;->streamStartTs:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$Builder;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$Builder;->streamId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$Builder;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$Builder;->dataBundle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$Builder;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$Builder;->format:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic build()Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$Builder;->build()Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent;

    move-result-object v0

    return-object v0
.end method

.method protected build()Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent;
    .locals 4

    .prologue
    .line 136
    new-instance v0, Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent;

    const-string v1, "upsight.data_collection"

    new-instance v2, Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$UpsightData;

    invoke-direct {v2, p0}, Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$UpsightData;-><init>(Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$Builder;)V

    iget-object v3, p0, Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$Builder;->mPublisherDataBuilder:Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    invoke-virtual {v3}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->build()Lcom/upsight/android/analytics/event/UpsightPublisherData;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent;-><init>(Ljava/lang/String;Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$UpsightData;Lcom/upsight/android/analytics/event/UpsightPublisherData;)V

    return-object v0
.end method

.method public setFormat(Ljava/lang/String;)Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$Builder;
    .locals 0
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$Builder;->format:Ljava/lang/String;

    .line 131
    return-object p0
.end method

.method public setStreamStartTs(Ljava/lang/String;)Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$Builder;
    .locals 0
    .param p1, "streamStartTs"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$Builder;->streamStartTs:Ljava/lang/String;

    .line 123
    return-object p0
.end method
