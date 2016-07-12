.class public Lcom/upsight/android/analytics/internal/CrashLogHandler$CrashLogEvent$UpsightData;
.super Ljava/lang/Object;
.source "CrashLogHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/internal/CrashLogHandler$CrashLogEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpsightData"
.end annotation


# instance fields
.field crashID:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "crashID"
    .end annotation
.end field

.field stacktrace:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "stacktrace"
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method protected constructor <init>(Lcom/upsight/android/analytics/internal/CrashLogHandler$CrashLogEvent$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/upsight/android/analytics/internal/CrashLogHandler$CrashLogEvent$Builder;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    # getter for: Lcom/upsight/android/analytics/internal/CrashLogHandler$CrashLogEvent$Builder;->stacktrace:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/CrashLogHandler$CrashLogEvent$Builder;->access$000(Lcom/upsight/android/analytics/internal/CrashLogHandler$CrashLogEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/CrashLogHandler$CrashLogEvent$UpsightData;->stacktrace:Ljava/lang/String;

    .line 74
    # getter for: Lcom/upsight/android/analytics/internal/CrashLogHandler$CrashLogEvent$Builder;->crashID:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/CrashLogHandler$CrashLogEvent$Builder;->access$100(Lcom/upsight/android/analytics/internal/CrashLogHandler$CrashLogEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/CrashLogHandler$CrashLogEvent$UpsightData;->crashID:Ljava/lang/String;

    .line 75
    return-void
.end method


# virtual methods
.method public getCrashID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/CrashLogHandler$CrashLogEvent$UpsightData;->crashID:Ljava/lang/String;

    return-object v0
.end method

.method public getStacktrace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/CrashLogHandler$CrashLogEvent$UpsightData;->stacktrace:Ljava/lang/String;

    return-object v0
.end method
