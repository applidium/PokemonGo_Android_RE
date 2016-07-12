.class public final Lcrittercism/android/bc;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/location/Location;


# direct methods
.method public static declared-synchronized a()Landroid/location/Location;
    .locals 2

    .prologue
    .line 16
    const-class v0, Lcrittercism/android/bc;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcrittercism/android/bc;->a:Landroid/location/Location;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/location/Location;)V
    .locals 2

    .prologue
    .line 13
    const-class v1, Lcrittercism/android/bc;

    monitor-enter v1

    if-nez p0, :cond_0

    :goto_0
    :try_start_0
    sput-object p0, Lcrittercism/android/bc;->a:Landroid/location/Location;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit v1

    return-void

    .line 13
    :cond_0
    :try_start_1
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object p0, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b()Z
    .locals 2

    .prologue
    .line 20
    const-class v1, Lcrittercism/android/bc;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcrittercism/android/bc;->a:Landroid/location/Location;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
