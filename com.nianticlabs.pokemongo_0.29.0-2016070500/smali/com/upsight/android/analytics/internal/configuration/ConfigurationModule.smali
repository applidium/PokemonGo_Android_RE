.class public final Lcom/upsight/android/analytics/internal/configuration/ConfigurationModule;
.super Ljava/lang/Object;
.source "ConfigurationModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provideConfigurationManager(Lcom/upsight/android/UpsightContext;Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser;Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser;)Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;
    .locals 7
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p2, "responseParser"    # Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser;
    .param p3, "managerConfigParser"    # Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 25
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getDataStore()Lcom/upsight/android/persistence/UpsightDataStore;

    move-result-object v2

    .line 26
    .local v2, "dataStore":Lcom/upsight/android/persistence/UpsightDataStore;
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getCoreComponent()Lcom/upsight/android/UpsightCoreComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/upsight/android/UpsightCoreComponent;->subscribeOnScheduler()Lrx/Scheduler;

    move-result-object v5

    .line 27
    .local v5, "scheduler":Lrx/Scheduler;
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v6

    .line 29
    .local v6, "logger":Lcom/upsight/android/logger/UpsightLogger;
    new-instance v0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;-><init>(Lcom/upsight/android/UpsightContext;Lcom/upsight/android/persistence/UpsightDataStore;Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser;Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser;Lrx/Scheduler;Lcom/upsight/android/logger/UpsightLogger;)V

    return-object v0
.end method
