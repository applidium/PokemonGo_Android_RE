.class public final Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule;
.super Ljava/lang/Object;
.source "DispatchModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provideDispatcher(Lcom/upsight/android/UpsightContext;Lcom/upsight/android/analytics/internal/session/SessionManager;Lcom/upsight/android/analytics/internal/AnalyticsContext;Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser;Lcom/upsight/android/analytics/internal/dispatcher/routing/RouterBuilder;Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;)Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;
    .locals 8
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p2, "sessionManager"    # Lcom/upsight/android/analytics/internal/session/SessionManager;
    .param p3, "context"    # Lcom/upsight/android/analytics/internal/AnalyticsContext;
    .param p4, "configParser"    # Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser;
    .param p5, "routerBuilder"    # Lcom/upsight/android/analytics/internal/dispatcher/routing/RouterBuilder;
    .param p6, "schemaSelectorBuilder"    # Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getCoreComponent()Lcom/upsight/android/UpsightCoreComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/upsight/android/UpsightCoreComponent;->backgroundDataStore()Lcom/upsight/android/persistence/UpsightDataStore;

    move-result-object v3

    .line 32
    .local v3, "dataStore":Lcom/upsight/android/persistence/UpsightDataStore;
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v7

    .line 34
    .local v7, "logger":Lcom/upsight/android/logger/UpsightLogger;
    new-instance v0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    move-object v1, p3

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;-><init>(Lcom/upsight/android/analytics/internal/AnalyticsContext;Lcom/upsight/android/analytics/internal/session/SessionManager;Lcom/upsight/android/persistence/UpsightDataStore;Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser;Lcom/upsight/android/analytics/internal/dispatcher/routing/RouterBuilder;Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;Lcom/upsight/android/logger/UpsightLogger;)V

    return-object v0
.end method
