.class public final Lcom/upsight/android/analytics/event/UpsightCustomEvent$Builder;
.super Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;
.source "UpsightCustomEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/event/UpsightCustomEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder",
        "<",
        "Lcom/upsight/android/analytics/event/UpsightCustomEvent;",
        "Lcom/upsight/android/analytics/event/UpsightPublisherData;",
        ">;"
    }
.end annotation


# static fields
.field private static final FORMAT:Ljava/lang/String; = "pub.%s"


# instance fields
.field private type:Ljava/lang/String;

.field private upsightDataBuilder:Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;-><init>()V

    .line 28
    new-instance v0, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    invoke-direct {v0}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/event/UpsightCustomEvent$Builder;->upsightDataBuilder:Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    .line 29
    const-string v0, "pub.%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/UpsightCustomEvent$Builder;->type:Ljava/lang/String;

    .line 30
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/upsight/android/analytics/event/UpsightCustomEvent$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/upsight/android/analytics/event/UpsightCustomEvent$1;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/upsight/android/analytics/event/UpsightCustomEvent$Builder;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic build()Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/upsight/android/analytics/event/UpsightCustomEvent$Builder;->build()Lcom/upsight/android/analytics/event/UpsightCustomEvent;

    move-result-object v0

    return-object v0
.end method

.method protected build()Lcom/upsight/android/analytics/event/UpsightCustomEvent;
    .locals 4

    .prologue
    .line 34
    new-instance v0, Lcom/upsight/android/analytics/event/UpsightCustomEvent;

    iget-object v1, p0, Lcom/upsight/android/analytics/event/UpsightCustomEvent$Builder;->type:Ljava/lang/String;

    iget-object v2, p0, Lcom/upsight/android/analytics/event/UpsightCustomEvent$Builder;->upsightDataBuilder:Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    invoke-virtual {v2}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->build()Lcom/upsight/android/analytics/event/UpsightPublisherData;

    move-result-object v2

    iget-object v3, p0, Lcom/upsight/android/analytics/event/UpsightCustomEvent$Builder;->mPublisherDataBuilder:Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    invoke-virtual {v3}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->build()Lcom/upsight/android/analytics/event/UpsightPublisherData;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/upsight/android/analytics/event/UpsightCustomEvent;-><init>(Ljava/lang/String;Lcom/upsight/android/analytics/event/UpsightPublisherData;Lcom/upsight/android/analytics/event/UpsightPublisherData;)V

    return-object v0
.end method
