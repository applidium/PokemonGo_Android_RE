.class public final Lcrittercism/android/ds;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcrittercism/android/ds$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean p1, p0, Lcrittercism/android/ds;->a:Z

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcrittercism/android/ds;->b:Z

    .line 54
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Z
    .locals 1

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcrittercism/android/ds;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
