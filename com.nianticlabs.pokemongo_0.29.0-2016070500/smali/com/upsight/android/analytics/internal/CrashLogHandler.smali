.class Lcom/upsight/android/analytics/internal/CrashLogHandler;
.super Ljava/lang/Object;
.source "CrashLogHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/internal/CrashLogHandler$CrashLogEvent;
    }
.end annotation


# instance fields
.field private mDefaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private mUpsightAnalytics:Lcom/upsight/android/analytics/UpsightAnalyticsApi;


# direct methods
.method public constructor <init>(Lcom/upsight/android/analytics/UpsightAnalyticsApi;)V
    .locals 1
    .param p1, "analytics"    # Lcom/upsight/android/analytics/UpsightAnalyticsApi;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/CrashLogHandler;->mUpsightAnalytics:Lcom/upsight/android/analytics/UpsightAnalyticsApi;

    .line 30
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/CrashLogHandler;->mDefaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 31
    return-void
.end method

.method private sendToServer(Ljava/lang/String;)V
    .locals 2
    .param p1, "stacktrace"    # Ljava/lang/String;

    .prologue
    .line 54
    new-instance v1, Lcom/upsight/android/analytics/internal/CrashLogHandler$CrashLogEvent$Builder;

    invoke-direct {v1, p1}, Lcom/upsight/android/analytics/internal/CrashLogHandler$CrashLogEvent$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/upsight/android/analytics/internal/CrashLogHandler$CrashLogEvent$Builder;->build()Lcom/upsight/android/analytics/internal/CrashLogHandler$CrashLogEvent;

    move-result-object v0

    .line 55
    .local v0, "crashReport":Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/CrashLogHandler;->mUpsightAnalytics:Lcom/upsight/android/analytics/UpsightAnalyticsApi;

    invoke-interface {v1, v0}, Lcom/upsight/android/analytics/UpsightAnalyticsApi;->record(Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;)V

    .line 56
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 34
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 35
    .local v2, "result":Ljava/io/Writer;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 39
    .local v1, "printWriter":Ljava/io/PrintWriter;
    move-object v0, p2

    .line 40
    .local v0, "cause":Ljava/lang/Throwable;
    :goto_0
    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 42
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 46
    .local v3, "stacktrace":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 47
    invoke-direct {p0, v3}, Lcom/upsight/android/analytics/internal/CrashLogHandler;->sendToServer(Ljava/lang/String;)V

    .line 50
    iget-object v4, p0, Lcom/upsight/android/analytics/internal/CrashLogHandler;->mDefaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v4, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 51
    return-void
.end method
