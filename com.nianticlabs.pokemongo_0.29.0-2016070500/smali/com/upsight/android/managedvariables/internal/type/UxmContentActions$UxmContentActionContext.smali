.class public Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;
.super Lcom/upsight/android/analytics/internal/action/ActionContext;
.source "UxmContentActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/managedvariables/internal/type/UxmContentActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UxmContentActionContext"
.end annotation


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
    .line 92
    invoke-direct/range {p0 .. p6}, Lcom/upsight/android/analytics/internal/action/ActionContext;-><init>(Lcom/upsight/android/UpsightContext;Lcom/squareup/otto/Bus;Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/upsight/android/analytics/internal/session/Clock;Lrx/Scheduler$Worker;Lcom/upsight/android/logger/UpsightLogger;)V

    .line 93
    return-void
.end method
