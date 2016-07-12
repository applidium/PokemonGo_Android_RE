.class public abstract Lrx/Scheduler$Worker;
.super Ljava/lang/Object;
.source "Scheduler.java"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/Scheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Worker"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public now()J
    .locals 2

    .prologue
    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract schedule(Lrx/functions/Action0;)Lrx/Subscription;
.end method

.method public abstract schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;
.end method

.method public schedulePeriodically(Lrx/functions/Action0;JJLjava/util/concurrent/TimeUnit;)Lrx/Subscription;
    .locals 18
    .param p1, "action"    # Lrx/functions/Action0;
    .param p2, "initialDelay"    # J
    .param p4, "period"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 111
    move-object/from16 v0, p6

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v10

    .line 112
    .local v10, "periodInNanos":J
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {p0 .. p0}, Lrx/Scheduler$Worker;->now()J

    move-result-wide v14

    invoke-virtual {v5, v14, v15}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v14

    move-object/from16 v0, p6

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v16

    add-long v8, v14, v16

    .line 114
    .local v8, "startInNanos":J
    new-instance v6, Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-direct {v6}, Lrx/subscriptions/MultipleAssignmentSubscription;-><init>()V

    .line 115
    .local v6, "mas":Lrx/subscriptions/MultipleAssignmentSubscription;
    new-instance v4, Lrx/Scheduler$Worker$1;

    move-object/from16 v5, p0

    move-object/from16 v7, p1

    invoke-direct/range {v4 .. v11}, Lrx/Scheduler$Worker$1;-><init>(Lrx/Scheduler$Worker;Lrx/subscriptions/MultipleAssignmentSubscription;Lrx/functions/Action0;JJ)V

    .line 126
    .local v4, "recursiveAction":Lrx/functions/Action0;
    new-instance v12, Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-direct {v12}, Lrx/subscriptions/MultipleAssignmentSubscription;-><init>()V

    .line 128
    .local v12, "s":Lrx/subscriptions/MultipleAssignmentSubscription;
    invoke-virtual {v6, v12}, Lrx/subscriptions/MultipleAssignmentSubscription;->set(Lrx/Subscription;)V

    .line 129
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-object/from16 v3, p6

    invoke-virtual {v0, v4, v1, v2, v3}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    move-result-object v5

    invoke-virtual {v12, v5}, Lrx/subscriptions/MultipleAssignmentSubscription;->set(Lrx/Subscription;)V

    .line 130
    return-object v6
.end method
