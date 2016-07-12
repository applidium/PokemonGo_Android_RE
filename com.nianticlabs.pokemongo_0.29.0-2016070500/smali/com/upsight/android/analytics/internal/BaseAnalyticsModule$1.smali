.class Lcom/upsight/android/analytics/internal/BaseAnalyticsModule$1;
.super Ljava/lang/Object;
.source "BaseAnalyticsModule.java"

# interfaces
.implements Lcom/upsight/android/analytics/internal/session/Clock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;->provideClock()Lcom/upsight/android/analytics/internal/session/Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;


# direct methods
.method constructor <init>(Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/BaseAnalyticsModule$1;->this$0:Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public currentTimeMillis()J
    .locals 2

    .prologue
    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public currentTimeSeconds()J
    .locals 4

    .prologue
    .line 44
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method
