.class Lcom/upsight/android/managedvariables/internal/experience/UserExperience;
.super Lcom/upsight/android/managedvariables/experience/UpsightUserExperience;
.source "UserExperience.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/managedvariables/internal/experience/UserExperience$1;,
        Lcom/upsight/android/managedvariables/internal/experience/UserExperience$DefaultHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_HANDLER:Lcom/upsight/android/managedvariables/experience/UpsightUserExperience$Handler;


# instance fields
.field private mBus:Lcom/squareup/otto/Bus;

.field private mHandler:Lcom/upsight/android/managedvariables/experience/UpsightUserExperience$Handler;

.field private mSyncNotifications:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lcom/upsight/android/managedvariables/internal/experience/UserExperience$DefaultHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/upsight/android/managedvariables/internal/experience/UserExperience$DefaultHandler;-><init>(Lcom/upsight/android/managedvariables/internal/experience/UserExperience$1;)V

    sput-object v0, Lcom/upsight/android/managedvariables/internal/experience/UserExperience;->DEFAULT_HANDLER:Lcom/upsight/android/managedvariables/experience/UpsightUserExperience$Handler;

    return-void
.end method

.method constructor <init>(Lcom/squareup/otto/Bus;)V
    .locals 1
    .param p1, "bus"    # Lcom/squareup/otto/Bus;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/upsight/android/managedvariables/experience/UpsightUserExperience;-><init>()V

    .line 34
    sget-object v0, Lcom/upsight/android/managedvariables/internal/experience/UserExperience;->DEFAULT_HANDLER:Lcom/upsight/android/managedvariables/experience/UpsightUserExperience$Handler;

    iput-object v0, p0, Lcom/upsight/android/managedvariables/internal/experience/UserExperience;->mHandler:Lcom/upsight/android/managedvariables/experience/UpsightUserExperience$Handler;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/managedvariables/internal/experience/UserExperience;->mSyncNotifications:Ljava/util/Map;

    .line 42
    iput-object p1, p0, Lcom/upsight/android/managedvariables/internal/experience/UserExperience;->mBus:Lcom/squareup/otto/Bus;

    .line 43
    iget-object v0, p0, Lcom/upsight/android/managedvariables/internal/experience/UserExperience;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    .line 44
    return-void
.end method


# virtual methods
.method public declared-synchronized getHandler()Lcom/upsight/android/managedvariables/experience/UpsightUserExperience$Handler;
    .locals 1

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/upsight/android/managedvariables/internal/experience/UserExperience;->mHandler:Lcom/upsight/android/managedvariables/experience/UpsightUserExperience$Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized handleActionMapFinishedEvent(Lcom/upsight/android/analytics/internal/action/Actionable$ActionMapFinishedEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/upsight/android/analytics/internal/action/Actionable$ActionMapFinishedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/upsight/android/managedvariables/internal/experience/UserExperience;->mSyncNotifications:Ljava/util/Map;

    iget-object v2, p1, Lcom/upsight/android/analytics/internal/action/Actionable$ActionMapFinishedEvent;->mId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 86
    .local v0, "pendingNotificationTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 87
    iget-object v1, p0, Lcom/upsight/android/managedvariables/internal/experience/UserExperience;->mHandler:Lcom/upsight/android/managedvariables/experience/UpsightUserExperience$Handler;

    invoke-interface {v1, v0}, Lcom/upsight/android/managedvariables/experience/UpsightUserExperience$Handler;->onSynchronize(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :cond_0
    monitor-exit p0

    return-void

    .line 85
    .end local v0    # "pendingNotificationTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized handleScheduleSyncNotificationEvent(Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ScheduleSyncNotificationEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ScheduleSyncNotificationEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/upsight/android/managedvariables/internal/experience/UserExperience;->mSyncNotifications:Ljava/util/Map;

    iget-object v1, p1, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ScheduleSyncNotificationEvent;->mId:Ljava/lang/String;

    iget-object v2, p1, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$ScheduleSyncNotificationEvent;->mTags:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerHandler(Lcom/upsight/android/managedvariables/experience/UpsightUserExperience$Handler;)V
    .locals 1
    .param p1, "handler"    # Lcom/upsight/android/managedvariables/experience/UpsightUserExperience$Handler;

    .prologue
    .line 48
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 49
    :try_start_0
    iput-object p1, p0, Lcom/upsight/android/managedvariables/internal/experience/UserExperience;->mHandler:Lcom/upsight/android/managedvariables/experience/UpsightUserExperience$Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :goto_0
    monitor-exit p0

    return-void

    .line 51
    :cond_0
    :try_start_1
    sget-object v0, Lcom/upsight/android/managedvariables/internal/experience/UserExperience;->DEFAULT_HANDLER:Lcom/upsight/android/managedvariables/experience/UpsightUserExperience$Handler;

    iput-object v0, p0, Lcom/upsight/android/managedvariables/internal/experience/UserExperience;->mHandler:Lcom/upsight/android/managedvariables/experience/UpsightUserExperience$Handler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
