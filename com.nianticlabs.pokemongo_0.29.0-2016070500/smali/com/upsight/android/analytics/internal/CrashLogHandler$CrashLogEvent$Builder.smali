.class public Lcom/upsight/android/analytics/internal/CrashLogHandler$CrashLogEvent$Builder;
.super Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent$Builder;
.source "CrashLogHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/internal/CrashLogHandler$CrashLogEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent$Builder",
        "<",
        "Lcom/upsight/android/analytics/internal/CrashLogHandler$CrashLogEvent;",
        "Lcom/upsight/android/analytics/internal/CrashLogHandler$CrashLogEvent$UpsightData;",
        "Lcom/upsight/android/analytics/event/UpsightPublisherData;",
        ">;"
    }
.end annotation


# instance fields
.field private crashID:Ljava/lang/String;

.field private publisherData:Lcom/upsight/android/analytics/event/UpsightPublisherData;

.field private stacktrace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "stacktrace"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent$Builder;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/CrashLogHandler$CrashLogEvent$Builder;->stacktrace:Ljava/lang/String;

    .line 113
    new-instance v0, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    invoke-direct {v0}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->build()Lcom/upsight/android/analytics/event/UpsightPublisherData;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/CrashLogHandler$CrashLogEvent$Builder;->publisherData:Lcom/upsight/android/analytics/event/UpsightPublisherData;

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/upsight/android/analytics/internal/CrashLogHandler$CrashLogEvent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/CrashLogHandler$CrashLogEvent$Builder;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/CrashLogHandler$CrashLogEvent$Builder;->stacktrace:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/upsight/android/analytics/internal/CrashLogHandler$CrashLogEvent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/CrashLogHandler$CrashLogEvent$Builder;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/CrashLogHandler$CrashLogEvent$Builder;->crashID:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/upsight/android/analytics/internal/CrashLogHandler$CrashLogEvent$Builder;->build()Lcom/upsight/android/analytics/internal/CrashLogHandler$CrashLogEvent;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/upsight/android/analytics/internal/CrashLogHandler$CrashLogEvent;
    .locals 4

    .prologue
    .line 138
    new-instance v0, Lcom/upsight/android/analytics/internal/CrashLogHandler$CrashLogEvent;

    const-string v1, "upsight.crashlog"

    new-instance v2, Lcom/upsight/android/analytics/internal/CrashLogHandler$CrashLogEvent$UpsightData;

    invoke-direct {v2, p0}, Lcom/upsight/android/analytics/internal/CrashLogHandler$CrashLogEvent$UpsightData;-><init>(Lcom/upsight/android/analytics/internal/CrashLogHandler$CrashLogEvent$Builder;)V

    iget-object v3, p0, Lcom/upsight/android/analytics/internal/CrashLogHandler$CrashLogEvent$Builder;->publisherData:Lcom/upsight/android/analytics/event/UpsightPublisherData;

    invoke-direct {v0, v1, v2, v3}, Lcom/upsight/android/analytics/internal/CrashLogHandler$CrashLogEvent;-><init>(Ljava/lang/String;Lcom/upsight/android/analytics/internal/CrashLogHandler$CrashLogEvent$UpsightData;Lcom/upsight/android/analytics/event/UpsightPublisherData;)V

    return-object v0
.end method

.method public setCrashId(Ljava/lang/String;)Lcom/upsight/android/analytics/internal/CrashLogHandler$CrashLogEvent$Builder;
    .locals 0
    .param p1, "crashID"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/CrashLogHandler$CrashLogEvent$Builder;->crashID:Ljava/lang/String;

    .line 129
    return-object p0
.end method

.method public with(Lcom/upsight/android/analytics/event/UpsightPublisherData;)Lcom/upsight/android/analytics/internal/CrashLogHandler$CrashLogEvent$Builder;
    .locals 0
    .param p1, "data"    # Lcom/upsight/android/analytics/event/UpsightPublisherData;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/CrashLogHandler$CrashLogEvent$Builder;->publisherData:Lcom/upsight/android/analytics/event/UpsightPublisherData;

    .line 121
    return-object p0
.end method
