.class public Lcom/upsight/android/analytics/internal/session/SessionImpl;
.super Ljava/lang/Object;
.source "SessionImpl.java"

# interfaces
.implements Lcom/upsight/android/analytics/internal/session/Session;


# static fields
.field private static final PREFERENCES_KEY_CURRENT_SESSION_DURATION:Ljava/lang/String; = "current_session_duration"

.field private static final PREFERENCES_KEY_PAST_SESSION_TIME:Ljava/lang/String; = "past_session_time"

.field private static final PREFERENCES_KEY_SESSION_NUM:Ljava/lang/String; = "session_num"

.field private static final PREFERENCES_KEY_SESSION_START_TS:Ljava/lang/String; = "session_start_ts"

.field private static final SESSION_NUM_BASE_OFFSET:I


# instance fields
.field private final mCampaignId:Ljava/lang/Integer;

.field private final mInitialSessionStartTs:J

.field private mLastKnownSessionTs:J

.field private final mMessageId:Ljava/lang/Integer;

.field private final mPastSessionTime:J

.field private final mSessionNum:I


# direct methods
.method private constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;IJJ)V
    .locals 0
    .param p1, "campaignID"    # Ljava/lang/Integer;
    .param p2, "messageId"    # Ljava/lang/Integer;
    .param p3, "sessionNum"    # I
    .param p4, "initialSessionStartTs"    # J
    .param p6, "pastSessionTime"    # J

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/session/SessionImpl;->mCampaignId:Ljava/lang/Integer;

    .line 73
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/session/SessionImpl;->mMessageId:Ljava/lang/Integer;

    .line 74
    iput p3, p0, Lcom/upsight/android/analytics/internal/session/SessionImpl;->mSessionNum:I

    .line 75
    iput-wide p4, p0, Lcom/upsight/android/analytics/internal/session/SessionImpl;->mInitialSessionStartTs:J

    .line 76
    iput-wide p6, p0, Lcom/upsight/android/analytics/internal/session/SessionImpl;->mPastSessionTime:J

    .line 77
    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/upsight/android/analytics/internal/session/Clock;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/upsight/android/analytics/internal/session/Session;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clock"    # Lcom/upsight/android/analytics/internal/session/Clock;
    .param p2, "campaignID"    # Ljava/lang/Integer;
    .param p3, "messageId"    # Ljava/lang/Integer;

    .prologue
    const-wide/high16 v8, -0x8000000000000000L

    const/high16 v1, -0x80000000

    .line 94
    const-string v0, "session_num"

    invoke-static {p0, v0, v1}, Lcom/upsight/android/internal/util/PreferencesHelper;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 98
    .local v3, "sessionNum":I
    const-string v0, "session_start_ts"

    invoke-static {p0, v0, v8, v9}, Lcom/upsight/android/internal/util/PreferencesHelper;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    .line 102
    .local v4, "initialSessionStartTs":J
    if-eq v3, v1, :cond_0

    cmp-long v0, v4, v8

    if-nez v0, :cond_1

    .line 103
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/upsight/android/analytics/internal/session/SessionImpl;->incrementAndCreate(Landroid/content/Context;Lcom/upsight/android/analytics/internal/session/Clock;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/upsight/android/analytics/internal/session/Session;

    move-result-object v0

    .line 110
    :goto_0
    return-object v0

    .line 107
    :cond_1
    const-string v0, "past_session_time"

    const-wide/16 v8, 0x0

    invoke-static {p0, v0, v8, v9}, Lcom/upsight/android/internal/util/PreferencesHelper;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v6

    .line 110
    .local v6, "pastSessionTime":J
    new-instance v0, Lcom/upsight/android/analytics/internal/session/SessionImpl;

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v7}, Lcom/upsight/android/analytics/internal/session/SessionImpl;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;IJJ)V

    goto :goto_0
.end method

.method public static incrementAndCreate(Landroid/content/Context;Lcom/upsight/android/analytics/internal/session/Clock;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/upsight/android/analytics/internal/session/Session;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clock"    # Lcom/upsight/android/analytics/internal/session/Clock;
    .param p2, "campaignID"    # Ljava/lang/Integer;
    .param p3, "messageId"    # Ljava/lang/Integer;

    .prologue
    const-wide/16 v10, 0x0

    .line 129
    const-string v0, "session_num"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/upsight/android/internal/util/PreferencesHelper;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    .line 133
    .local v3, "sessionNum":I
    invoke-interface {p1}, Lcom/upsight/android/analytics/internal/session/Clock;->currentTimeSeconds()J

    move-result-wide v4

    .line 136
    .local v4, "currentTime":J
    const-string v0, "session_num"

    invoke-static {p0, v0, v3}, Lcom/upsight/android/internal/util/PreferencesHelper;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 137
    const-string v0, "session_start_ts"

    invoke-static {p0, v0, v4, v5}, Lcom/upsight/android/internal/util/PreferencesHelper;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 140
    const-string v0, "current_session_duration"

    invoke-static {p0, v0, v10, v11}, Lcom/upsight/android/internal/util/PreferencesHelper;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v8

    .line 142
    .local v8, "lastSessionTime":J
    const-string v0, "past_session_time"

    invoke-static {p0, v0, v10, v11}, Lcom/upsight/android/internal/util/PreferencesHelper;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    add-long v6, v0, v8

    .line 144
    .local v6, "pastSessionTime":J
    const-string v0, "current_session_duration"

    invoke-static {p0, v0, v10, v11}, Lcom/upsight/android/internal/util/PreferencesHelper;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 145
    const-string v0, "past_session_time"

    invoke-static {p0, v0, v6, v7}, Lcom/upsight/android/internal/util/PreferencesHelper;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 147
    new-instance v0, Lcom/upsight/android/analytics/internal/session/SessionImpl;

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v7}, Lcom/upsight/android/analytics/internal/session/SessionImpl;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;IJJ)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getCampaignID()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/session/SessionImpl;->mCampaignId:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMessageID()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 157
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/session/SessionImpl;->mMessageId:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPreviousTos()J
    .locals 2

    .prologue
    .line 172
    iget-wide v0, p0, Lcom/upsight/android/analytics/internal/session/SessionImpl;->mPastSessionTime:J

    return-wide v0
.end method

.method public declared-synchronized getSessionNumber()I
    .locals 1

    .prologue
    .line 162
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/upsight/android/analytics/internal/session/SessionImpl;->mSessionNum:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTimeStamp()J
    .locals 2

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/upsight/android/analytics/internal/session/SessionImpl;->mInitialSessionStartTs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateDuration(Landroid/content/Context;J)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lastKnownTime"    # J

    .prologue
    .line 177
    const-string v0, "current_session_duration"

    iget-wide v2, p0, Lcom/upsight/android/analytics/internal/session/SessionImpl;->mInitialSessionStartTs:J

    sub-long v2, p2, v2

    invoke-static {p1, v0, v2, v3}, Lcom/upsight/android/internal/util/PreferencesHelper;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 179
    return-void
.end method
