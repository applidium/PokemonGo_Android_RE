.class public Lcom/upsight/android/analytics/internal/CrashLogHandler$CrashLogEvent;
.super Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;
.source "CrashLogHandler.java"


# annotations
.annotation runtime Lcom/upsight/android/persistence/annotation/UpsightStorableType;
    value = "upsight.crash_log"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/internal/CrashLogHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CrashLogEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/internal/CrashLogHandler$CrashLogEvent$Builder;,
        Lcom/upsight/android/analytics/internal/CrashLogHandler$CrashLogEvent$UpsightData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent",
        "<",
        "Lcom/upsight/android/analytics/internal/CrashLogHandler$CrashLogEvent$UpsightData;",
        "Lcom/upsight/android/analytics/event/UpsightPublisherData;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;-><init>()V

    .line 152
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/upsight/android/analytics/internal/CrashLogHandler$CrashLogEvent$UpsightData;Lcom/upsight/android/analytics/event/UpsightPublisherData;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "upsightData"    # Lcom/upsight/android/analytics/internal/CrashLogHandler$CrashLogEvent$UpsightData;
    .param p3, "publisherData"    # Lcom/upsight/android/analytics/event/UpsightPublisherData;

    .prologue
    .line 147
    invoke-direct {p0, p1, p2, p3}, Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 148
    return-void
.end method
