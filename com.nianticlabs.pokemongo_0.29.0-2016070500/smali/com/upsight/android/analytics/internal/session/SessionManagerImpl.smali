.class public Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;
.super Ljava/lang/Object;
.source "SessionManagerImpl.java"

# interfaces
.implements Lcom/upsight/android/analytics/internal/session/SessionManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/internal/session/SessionManagerImpl$Config;
    }
.end annotation


# static fields
.field private static final KEY_SESSION:Ljava/lang/String; = "com.upsight.session_callbacks"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final PREFERENCES_KEY_JSON_CONFIG:Ljava/lang/String; = "session_manager_json_config"

.field private static final PREFERENCES_KEY_LAST_KNOWN_SESSION_TIME:Ljava/lang/String; = "last_known_session_time"


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private final mClock:Lcom/upsight/android/analytics/internal/session/Clock;

.field private mConfigParser:Lcom/upsight/android/analytics/internal/session/ConfigParser;

.field private mCurrentConfig:Lcom/upsight/android/analytics/internal/session/SessionManagerImpl$Config;

.field private mLastKnownSessionTs:J

.field private mLogger:Lcom/upsight/android/logger/UpsightLogger;

.field private mSession:Lcom/upsight/android/analytics/internal/session/Session;

.field private mStopRequestedTs:J

.field private mUpsight:Lcom/upsight/android/UpsightContext;

.field private mUpsightSessionCallbacks:Lcom/upsight/android/analytics/session/UpsightSessionCallbacks;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/upsight/android/UpsightContext;Lcom/upsight/android/persistence/UpsightDataStore;Lcom/upsight/android/logger/UpsightLogger;Lcom/upsight/android/analytics/internal/session/ConfigParser;Lcom/upsight/android/analytics/internal/session/Clock;)V
    .locals 4
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p3, "dataStore"    # Lcom/upsight/android/persistence/UpsightDataStore;
    .param p4, "logger"    # Lcom/upsight/android/logger/UpsightLogger;
    .param p5, "configParser"    # Lcom/upsight/android/analytics/internal/session/ConfigParser;
    .param p6, "clock"    # Lcom/upsight/android/analytics/internal/session/Clock;

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p4, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    .line 112
    iput-object p5, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mConfigParser:Lcom/upsight/android/analytics/internal/session/ConfigParser;

    .line 113
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mAppContext:Landroid/content/Context;

    .line 114
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mUpsight:Lcom/upsight/android/UpsightContext;

    .line 115
    iput-object p6, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mClock:Lcom/upsight/android/analytics/internal/session/Clock;

    .line 117
    const-string v0, "last_known_session_time"

    const-wide/16 v2, 0x0

    invoke-static {p1, v0, v2, v3}, Lcom/upsight/android/internal/util/PreferencesHelper;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mLastKnownSessionTs:J

    .line 120
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->loadSessionHook()V

    .line 123
    invoke-interface {p3, p0}, Lcom/upsight/android/persistence/UpsightDataStore;->subscribe(Ljava/lang/Object;)Lcom/upsight/android/persistence/UpsightSubscription;

    .line 126
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->fetchCurrentConfig()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->applyConfiguration(Ljava/lang/String;)Z

    .line 127
    return-void
.end method

.method private applyConfiguration(Ljava/lang/String;)Z
    .locals 8
    .param p1, "jsonConfig"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 227
    :try_start_0
    iget-object v4, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mConfigParser:Lcom/upsight/android/analytics/internal/session/ConfigParser;

    invoke-virtual {v4, p1}, Lcom/upsight/android/analytics/internal/session/ConfigParser;->parseConfig(Ljava/lang/String;)Lcom/upsight/android/analytics/internal/session/SessionManagerImpl$Config;

    move-result-object v0

    .line 228
    .local v0, "config":Lcom/upsight/android/analytics/internal/session/SessionManagerImpl$Config;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl$Config;->isValid()Z

    move-result v4

    if-nez v4, :cond_1

    .line 229
    :cond_0
    iget-object v4, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    sget-object v5, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->LOG_TAG:Ljava/lang/String;

    const-string v6, "New config is invalid"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v7}, Lcom/upsight/android/logger/UpsightLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v3

    .line 241
    .end local v0    # "config":Lcom/upsight/android/analytics/internal/session/SessionManagerImpl$Config;
    :goto_0
    return v2

    .line 232
    .restart local v0    # "config":Lcom/upsight/android/analytics/internal/session/SessionManagerImpl$Config;
    :cond_1
    iget-object v4, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mCurrentConfig:Lcom/upsight/android/analytics/internal/session/SessionManagerImpl$Config;

    invoke-virtual {v0, v4}, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl$Config;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 233
    iget-object v4, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    sget-object v5, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->LOG_TAG:Ljava/lang/String;

    const-string v6, "New config ignored because it is equal to current config"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v7}, Lcom/upsight/android/logger/UpsightLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 239
    .end local v0    # "config":Lcom/upsight/android/analytics/internal/session/SessionManagerImpl$Config;
    :catch_0
    move-exception v1

    .line 240
    .local v1, "e":Ljava/io/IOException;
    iget-object v4, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    sget-object v5, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Failed to apply new config"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-interface {v4, v5, v6, v2}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v3

    .line 241
    goto :goto_0

    .line 236
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "config":Lcom/upsight/android/analytics/internal/session/SessionManagerImpl$Config;
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mAppContext:Landroid/content/Context;

    const-string v5, "session_manager_json_config"

    invoke-static {v4, v5, p1}, Lcom/upsight/android/internal/util/PreferencesHelper;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iput-object v0, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mCurrentConfig:Lcom/upsight/android/analytics/internal/session/SessionManagerImpl$Config;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private fetchCurrentConfig()Ljava/lang/String;
    .locals 3

    .prologue
    .line 215
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mAppContext:Landroid/content/Context;

    const-string v1, "session_manager_json_config"

    const-string v2, "{\"session_gap\": 120}"

    invoke-static {v0, v1, v2}, Lcom/upsight/android/internal/util/PreferencesHelper;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isExpired()Z
    .locals 4

    .prologue
    .line 269
    iget-wide v0, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mStopRequestedTs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mClock:Lcom/upsight/android/analytics/internal/session/Clock;

    invoke-interface {v0}, Lcom/upsight/android/analytics/internal/session/Clock;->currentTimeSeconds()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mStopRequestedTs:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mCurrentConfig:Lcom/upsight/android/analytics/internal/session/SessionManagerImpl$Config;

    iget-wide v2, v2, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl$Config;->timeToNewSession:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mSession:Lcom/upsight/android/analytics/internal/session/Session;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mClock:Lcom/upsight/android/analytics/internal/session/Clock;

    invoke-interface {v0}, Lcom/upsight/android/analytics/internal/session/Clock;->currentTimeSeconds()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mLastKnownSessionTs:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mCurrentConfig:Lcom/upsight/android/analytics/internal/session/SessionManagerImpl$Config;

    iget-wide v2, v2, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl$Config;->timeToNewSession:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSessionNull()Z
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mSession:Lcom/upsight/android/analytics/internal/session/Session;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadSessionHook()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 184
    :try_start_0
    iget-object v5, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v5}, Lcom/upsight/android/UpsightContext;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v6}, Lcom/upsight/android/UpsightContext;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 186
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 187
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v5, "com.upsight.session_callbacks"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 188
    const-string v5, "com.upsight.session_callbacks"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .line 190
    .local v4, "session":Ljava/lang/String;
    :try_start_1
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 191
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v5, Lcom/upsight/android/analytics/session/UpsightSessionCallbacks;

    invoke-virtual {v5, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 192
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Class %s must implement %s!"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Lcom/upsight/android/analytics/session/UpsightSessionCallbacks;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 196
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 197
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    :try_start_2
    iget-object v5, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v6, "Upsight"

    const-string v7, "Unexpected error: Class: %s was not found."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-interface {v5, v6, v7, v8}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 207
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "session":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 195
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "session":Ljava/lang/String;
    :cond_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/upsight/android/analytics/session/UpsightSessionCallbacks;

    iput-object v5, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mUpsightSessionCallbacks:Lcom/upsight/android/analytics/session/UpsightSessionCallbacks;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 198
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v2

    .line 199
    .local v2, "e":Ljava/lang/IllegalAccessException;
    :try_start_4
    iget-object v5, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v6, "Upsight"

    const-string v7, "Unexpected error: Class: %s does not have public access."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-interface {v5, v6, v7, v8}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 204
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "session":Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 205
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v5, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v6, "Upsight"

    const-string v7, "Unexpected error: Package name missing!?"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v2, v8, v10

    invoke-interface {v5, v6, v7, v8}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 200
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v3    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "session":Ljava/lang/String;
    :catch_3
    move-exception v2

    .line 201
    .local v2, "e":Ljava/lang/InstantiationException;
    :try_start_5
    iget-object v5, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v6, "Upsight"

    const-string v7, "Unexpected error: Class: %s could not be instantiated"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-interface {v5, v6, v7, v8}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0
.end method

.method private startSession(ZZLcom/upsight/android/analytics/internal/session/SessionInitializer;)Lcom/upsight/android/analytics/internal/session/Session;
    .locals 8
    .param p1, "isSessionNull"    # Z
    .param p2, "isExpired"    # Z
    .param p3, "initializer"    # Lcom/upsight/android/analytics/internal/session/SessionInitializer;

    .prologue
    .line 281
    iget-object v4, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mUpsight:Lcom/upsight/android/UpsightContext;

    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mUpsight:Lcom/upsight/android/UpsightContext;

    const-class v7, Lcom/upsight/android/analytics/internal/DispatcherService;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, v5}, Lcom/upsight/android/UpsightContext;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 284
    const/4 v0, 0x0

    .line 285
    .local v0, "campaignId":Ljava/lang/Integer;
    const/4 v2, 0x0

    .line 288
    .local v2, "messageId":Ljava/lang/Integer;
    if-eqz p3, :cond_4

    const/4 v1, 0x1

    .line 291
    .local v1, "fromPush":Z
    :goto_0
    iget-wide v4, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mStopRequestedTs:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_5

    const/4 v3, 0x1

    .line 294
    .local v3, "sessionIsStopped":Z
    :goto_1
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mStopRequestedTs:J

    .line 296
    if-nez v1, :cond_0

    if-eqz p2, :cond_6

    .line 298
    :cond_0
    iget-object v4, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-static {v4}, Lcom/upsight/android/analytics/provider/UpsightLocationTracker;->purge(Lcom/upsight/android/UpsightContext;)V

    .line 299
    iget-object v4, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mUpsightSessionCallbacks:Lcom/upsight/android/analytics/session/UpsightSessionCallbacks;

    if-eqz v4, :cond_1

    .line 300
    iget-object v4, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mUpsightSessionCallbacks:Lcom/upsight/android/analytics/session/UpsightSessionCallbacks;

    iget-object v5, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-interface {v4, v5}, Lcom/upsight/android/analytics/session/UpsightSessionCallbacks;->onStart(Lcom/upsight/android/UpsightContext;)V

    .line 303
    :cond_1
    if-eqz v1, :cond_2

    .line 304
    invoke-interface {p3}, Lcom/upsight/android/analytics/internal/session/SessionInitializer;->getCampaignID()Ljava/lang/Integer;

    move-result-object v0

    .line 305
    invoke-interface {p3}, Lcom/upsight/android/analytics/internal/session/SessionInitializer;->getMessageID()Ljava/lang/Integer;

    move-result-object v2

    .line 309
    :cond_2
    iget-object v4, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mAppContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mClock:Lcom/upsight/android/analytics/internal/session/Clock;

    invoke-static {v4, v5, v0, v2}, Lcom/upsight/android/analytics/internal/session/SessionImpl;->incrementAndCreate(Landroid/content/Context;Lcom/upsight/android/analytics/internal/session/Clock;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/upsight/android/analytics/internal/session/Session;

    move-result-object v4

    iput-object v4, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mSession:Lcom/upsight/android/analytics/internal/session/Session;

    .line 310
    invoke-static {}, Lcom/upsight/android/analytics/event/session/UpsightSessionStartEvent;->createBuilder()Lcom/upsight/android/analytics/event/session/UpsightSessionStartEvent$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v4, v5}, Lcom/upsight/android/analytics/event/session/UpsightSessionStartEvent$Builder;->record(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;

    .line 328
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mClock:Lcom/upsight/android/analytics/internal/session/Clock;

    invoke-interface {v4}, Lcom/upsight/android/analytics/internal/session/Clock;->currentTimeSeconds()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mLastKnownSessionTs:J

    .line 329
    iget-object v4, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mAppContext:Landroid/content/Context;

    const-string v5, "last_known_session_time"

    iget-wide v6, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mLastKnownSessionTs:J

    invoke-static {v4, v5, v6, v7}, Lcom/upsight/android/internal/util/PreferencesHelper;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 331
    iget-object v4, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mSession:Lcom/upsight/android/analytics/internal/session/Session;

    return-object v4

    .line 288
    .end local v1    # "fromPush":Z
    .end local v3    # "sessionIsStopped":Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 291
    .restart local v1    # "fromPush":Z
    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    .line 311
    .restart local v3    # "sessionIsStopped":Z
    :cond_6
    if-eqz p1, :cond_8

    .line 313
    iget-object v4, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-static {v4}, Lcom/upsight/android/analytics/provider/UpsightLocationTracker;->purge(Lcom/upsight/android/UpsightContext;)V

    .line 314
    iget-object v4, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mUpsightSessionCallbacks:Lcom/upsight/android/analytics/session/UpsightSessionCallbacks;

    if-eqz v4, :cond_7

    .line 315
    iget-object v4, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mUpsightSessionCallbacks:Lcom/upsight/android/analytics/session/UpsightSessionCallbacks;

    iget-object v5, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-interface {v4, v5}, Lcom/upsight/android/analytics/session/UpsightSessionCallbacks;->onStart(Lcom/upsight/android/UpsightContext;)V

    .line 320
    :cond_7
    iget-object v4, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mAppContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mClock:Lcom/upsight/android/analytics/internal/session/Clock;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/upsight/android/analytics/internal/session/SessionImpl;->create(Landroid/content/Context;Lcom/upsight/android/analytics/internal/session/Clock;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/upsight/android/analytics/internal/session/Session;

    move-result-object v4

    iput-object v4, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mSession:Lcom/upsight/android/analytics/internal/session/Session;

    .line 321
    invoke-static {}, Lcom/upsight/android/analytics/event/session/UpsightSessionResumeEvent;->createBuilder()Lcom/upsight/android/analytics/event/session/UpsightSessionResumeEvent$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v4, v5}, Lcom/upsight/android/analytics/event/session/UpsightSessionResumeEvent$Builder;->record(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;

    goto :goto_2

    .line 322
    :cond_8
    if-eqz v3, :cond_3

    .line 324
    invoke-static {}, Lcom/upsight/android/analytics/event/session/UpsightSessionResumeEvent;->createBuilder()Lcom/upsight/android/analytics/event/session/UpsightSessionResumeEvent$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v4, v5}, Lcom/upsight/android/analytics/event/session/UpsightSessionResumeEvent$Builder;->record(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;

    goto :goto_2
.end method


# virtual methods
.method public declared-synchronized getCurrentSession()Lcom/upsight/android/analytics/internal/session/Session;
    .locals 3

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->isSessionNull()Z

    move-result v1

    .line 132
    .local v1, "isSessionNull":Z
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->isExpired()Z

    move-result v0

    .line 133
    .local v0, "isExpired":Z
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 134
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->startSession(ZZLcom/upsight/android/analytics/internal/session/SessionInitializer;)Lcom/upsight/android/analytics/internal/session/Session;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 136
    :goto_0
    monitor-exit p0

    return-object v2

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mSession:Lcom/upsight/android/analytics/internal/session/Session;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 131
    .end local v0    # "isExpired":Z
    .end local v1    # "isSessionNull":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized onApplicationStatusUpdated(Lcom/upsight/android/analytics/internal/session/ApplicationStatus;)V
    .locals 4
    .param p1, "statusEvent"    # Lcom/upsight/android/analytics/internal/session/ApplicationStatus;
    .annotation runtime Lcom/upsight/android/persistence/annotation/Updated;
    .end annotation

    .prologue
    .line 170
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;->BACKGROUND:Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;

    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/session/ApplicationStatus;->getState()Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mClock:Lcom/upsight/android/analytics/internal/session/Clock;

    invoke-interface {v0}, Lcom/upsight/android/analytics/internal/session/Clock;->currentTimeSeconds()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mLastKnownSessionTs:J

    .line 172
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mAppContext:Landroid/content/Context;

    const-string v1, "last_known_session_time"

    iget-wide v2, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mLastKnownSessionTs:J

    invoke-static {v0, v1, v2, v3}, Lcom/upsight/android/internal/util/PreferencesHelper;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 174
    invoke-static {}, Lcom/upsight/android/analytics/event/session/UpsightSessionPauseEvent;->createBuilder()Lcom/upsight/android/analytics/event/session/UpsightSessionPauseEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v0, v1}, Lcom/upsight/android/analytics/event/session/UpsightSessionPauseEvent$Builder;->record(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    :cond_0
    monitor-exit p0

    return-void

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onConfigurationCreated(Lcom/upsight/android/analytics/configuration/UpsightConfiguration;)V
    .locals 2
    .param p1, "config"    # Lcom/upsight/android/analytics/configuration/UpsightConfiguration;
    .annotation runtime Lcom/upsight/android/persistence/annotation/Created;
    .end annotation

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    const-string v0, "upsight.configuration.session_manager"

    invoke-virtual {p1}, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p1}, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;->getConfiguration()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->applyConfiguration(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :cond_0
    monitor-exit p0

    return-void

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startSession(Lcom/upsight/android/analytics/internal/session/SessionInitializer;)Lcom/upsight/android/analytics/internal/session/Session;
    .locals 2
    .param p1, "initializer"    # Lcom/upsight/android/analytics/internal/session/SessionInitializer;

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->isSessionNull()Z

    move-result v0

    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->isExpired()Z

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->startSession(ZZLcom/upsight/android/analytics/internal/session/SessionInitializer;)Lcom/upsight/android/analytics/internal/session/Session;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopSession()V
    .locals 4

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->getCurrentSession()Lcom/upsight/android/analytics/internal/session/Session;

    move-result-object v0

    .line 147
    .local v0, "currentSession":Lcom/upsight/android/analytics/internal/session/Session;
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mClock:Lcom/upsight/android/analytics/internal/session/Clock;

    invoke-interface {v1}, Lcom/upsight/android/analytics/internal/session/Clock;->currentTimeSeconds()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mStopRequestedTs:J

    .line 148
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mAppContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;->mStopRequestedTs:J

    invoke-interface {v0, v1, v2, v3}, Lcom/upsight/android/analytics/internal/session/Session;->updateDuration(Landroid/content/Context;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    monitor-exit p0

    return-void

    .line 146
    .end local v0    # "currentSession":Lcom/upsight/android/analytics/internal/session/Session;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
