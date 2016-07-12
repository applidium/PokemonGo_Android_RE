.class public final Lcom/upsight/android/analytics/internal/EventSequenceId;
.super Ljava/lang/Object;
.source "EventSequenceId.java"


# static fields
.field private static final INITIAL_SEQUENCE_ID:J = 0x1L

.field private static final PREFERENCES_KEY_SEQ_ID:Ljava/lang/String; = "seq_id"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static declared-synchronized getAndIncrement(Landroid/content/Context;)J
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v6, 0x1

    .line 34
    const-class v3, Lcom/upsight/android/analytics/internal/EventSequenceId;

    monitor-enter v3

    :try_start_0
    const-string v2, "seq_id"

    const-wide/16 v4, 0x1

    invoke-static {p0, v2, v4, v5}, Lcom/upsight/android/internal/util/PreferencesHelper;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    .line 35
    .local v0, "currentId":J
    const-string v2, "seq_id"

    add-long v4, v0, v6

    invoke-static {p0, v2, v4, v5}, Lcom/upsight/android/internal/util/PreferencesHelper;->putLong(Landroid/content/Context;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit v3

    return-wide v0

    .line 34
    .end local v0    # "currentId":J
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
