.class public Lcom/upsight/android/analytics/internal/action/ActionContext;
.super Ljava/lang/Object;
.source "ActionContext.java"


# instance fields
.field public final mBus:Lcom/squareup/otto/Bus;

.field public final mClock:Lcom/upsight/android/analytics/internal/session/Clock;

.field public final mLogger:Lcom/upsight/android/logger/UpsightLogger;

.field public final mMainWorker:Lrx/Scheduler$Worker;

.field public final mMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

.field public final mUpsight:Lcom/upsight/android/UpsightContext;


# direct methods
.method public constructor <init>(Lcom/upsight/android/UpsightContext;Lcom/squareup/otto/Bus;Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/upsight/android/analytics/internal/session/Clock;Lrx/Scheduler$Worker;Lcom/upsight/android/logger/UpsightLogger;)V
    .locals 0
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p2, "bus"    # Lcom/squareup/otto/Bus;
    .param p3, "mapper"    # Lcom/fasterxml/jackson/databind/ObjectMapper;
    .param p4, "clock"    # Lcom/upsight/android/analytics/internal/session/Clock;
    .param p5, "mainWorker"    # Lrx/Scheduler$Worker;
    .param p6, "logger"    # Lcom/upsight/android/logger/UpsightLogger;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/action/ActionContext;->mUpsight:Lcom/upsight/android/UpsightContext;

    .line 35
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/action/ActionContext;->mBus:Lcom/squareup/otto/Bus;

    .line 36
    iput-object p3, p0, Lcom/upsight/android/analytics/internal/action/ActionContext;->mMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 37
    iput-object p4, p0, Lcom/upsight/android/analytics/internal/action/ActionContext;->mClock:Lcom/upsight/android/analytics/internal/session/Clock;

    .line 38
    iput-object p5, p0, Lcom/upsight/android/analytics/internal/action/ActionContext;->mMainWorker:Lrx/Scheduler$Worker;

    .line 39
    iput-object p6, p0, Lcom/upsight/android/analytics/internal/action/ActionContext;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    .line 40
    return-void
.end method
