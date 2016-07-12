.class public final Lcrittercism/android/cv;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:J


# direct methods
.method public constructor <init>(J)V
    .locals 3

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcrittercism/android/cv;->a:J

    .line 9
    iput-wide p1, p0, Lcrittercism/android/cv;->b:J

    .line 10
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Z
    .locals 4

    .prologue
    .line 13
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcrittercism/android/cv;->a:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcrittercism/android/cv;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 2

    .prologue
    .line 17
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcrittercism/android/cv;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit p0

    return-void

    .line 17
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
