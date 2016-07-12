.class public final Lcom/upsight/android/analytics/internal/session/SessionModule;
.super Ljava/lang/Object;
.source "SessionModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public providesSessionManager(Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;)Lcom/upsight/android/analytics/internal/session/SessionManager;
    .locals 0
    .param p1, "sessionManager"    # Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 24
    return-object p1
.end method

.method public providesSessionManagerImpl(Lcom/upsight/android/UpsightContext;Lcom/upsight/android/analytics/internal/session/ConfigParser;Lcom/upsight/android/analytics/internal/session/Clock;)Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;
    .locals 7
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p2, "configParser"    # Lcom/upsight/android/analytics/internal/session/ConfigParser;
    .param p3, "clock"    # Lcom/upsight/android/analytics/internal/session/Clock;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getCoreComponent()Lcom/upsight/android/UpsightCoreComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/upsight/android/UpsightCoreComponent;->applicationContext()Landroid/content/Context;

    move-result-object v1

    .line 33
    .local v1, "appContext":Landroid/content/Context;
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getDataStore()Lcom/upsight/android/persistence/UpsightDataStore;

    move-result-object v3

    .line 34
    .local v3, "dataStore":Lcom/upsight/android/persistence/UpsightDataStore;
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v4

    .line 36
    .local v4, "logger":Lcom/upsight/android/logger/UpsightLogger;
    new-instance v0, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;-><init>(Landroid/content/Context;Lcom/upsight/android/UpsightContext;Lcom/upsight/android/persistence/UpsightDataStore;Lcom/upsight/android/logger/UpsightLogger;Lcom/upsight/android/analytics/internal/session/ConfigParser;Lcom/upsight/android/analytics/internal/session/Clock;)V

    return-object v0
.end method
