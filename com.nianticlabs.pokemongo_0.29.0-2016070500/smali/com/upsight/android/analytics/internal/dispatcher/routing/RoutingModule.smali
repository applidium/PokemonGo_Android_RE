.class public Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingModule;
.super Ljava/lang/Object;
.source "RoutingModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provideRouterBuilder(Lcom/upsight/android/UpsightContext;Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;)Lcom/upsight/android/analytics/internal/dispatcher/routing/RouterBuilder;
    .locals 2
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p2, "queueBuilder"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 23
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getCoreComponent()Lcom/upsight/android/UpsightCoreComponent;

    move-result-object v1

    invoke-interface {v1}, Lcom/upsight/android/UpsightCoreComponent;->observeOnScheduler()Lrx/Scheduler;

    move-result-object v0

    .line 25
    .local v0, "scheduler":Lrx/Scheduler;
    new-instance v1, Lcom/upsight/android/analytics/internal/dispatcher/routing/RouterBuilder;

    invoke-direct {v1, v0, p2}, Lcom/upsight/android/analytics/internal/dispatcher/routing/RouterBuilder;-><init>(Lrx/Scheduler;Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;)V

    return-object v1
.end method
