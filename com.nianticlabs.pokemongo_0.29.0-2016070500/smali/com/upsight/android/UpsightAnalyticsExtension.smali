.class public Lcom/upsight/android/UpsightAnalyticsExtension;
.super Lcom/upsight/android/UpsightExtension;
.source "UpsightAnalyticsExtension.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/upsight/android/UpsightExtension",
        "<",
        "Lcom/upsight/android/analytics/UpsightAnalyticsComponent;",
        "Lcom/upsight/android/analytics/UpsightAnalyticsApi;",
        ">;"
    }
.end annotation


# static fields
.field public static final EXTENSION_NAME:Ljava/lang/String; = "com.upsight.extension.analytics"


# instance fields
.field mAnalytics:Lcom/upsight/android/analytics/UpsightAnalyticsApi;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mAssociationManager:Lcom/upsight/android/analytics/internal/association/AssociationManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mClock:Lcom/upsight/android/analytics/internal/session/Clock;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mUncaughtExceptionHandler:Lcom/upsight/android/internal/util/Opt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/upsight/android/internal/util/Opt",
            "<",
            "Ljava/lang/Thread$UncaughtExceptionHandler;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "optUncaughtExceptionHandler"
    .end annotation
.end field

.field mUpsightLifeCycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/upsight/android/UpsightExtension;-><init>()V

    .line 51
    return-void
.end method


# virtual methods
.method public getApi()Lcom/upsight/android/analytics/UpsightAnalyticsApi;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/upsight/android/UpsightAnalyticsExtension;->mAnalytics:Lcom/upsight/android/analytics/UpsightAnalyticsApi;

    return-object v0
.end method

.method public bridge synthetic getApi()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/upsight/android/UpsightAnalyticsExtension;->getApi()Lcom/upsight/android/analytics/UpsightAnalyticsApi;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Lcom/upsight/android/UpsightContext;)V
    .locals 2
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/upsight/android/UpsightAnalyticsExtension;->mUncaughtExceptionHandler:Lcom/upsight/android/internal/util/Opt;

    invoke-virtual {v0}, Lcom/upsight/android/internal/util/Opt;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/upsight/android/UpsightAnalyticsExtension;->mUncaughtExceptionHandler:Lcom/upsight/android/internal/util/Opt;

    invoke-virtual {v0}, Lcom/upsight/android/internal/util/Opt;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 66
    :cond_0
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iget-object v1, p0, Lcom/upsight/android/UpsightAnalyticsExtension;->mUpsightLifeCycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 68
    iget-object v0, p0, Lcom/upsight/android/UpsightAnalyticsExtension;->mAssociationManager:Lcom/upsight/android/analytics/internal/association/AssociationManager;

    invoke-interface {v0}, Lcom/upsight/android/analytics/internal/association/AssociationManager;->launch()V

    .line 69
    return-void
.end method

.method protected onPostCreate(Lcom/upsight/android/UpsightContext;)V
    .locals 4
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;

    .prologue
    .line 73
    const-string v0, "install_ts"

    invoke-static {p1, v0}, Lcom/upsight/android/internal/util/PreferencesHelper;->contains(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    const-string v0, "install_ts"

    iget-object v1, p0, Lcom/upsight/android/UpsightAnalyticsExtension;->mClock:Lcom/upsight/android/analytics/internal/session/Clock;

    invoke-interface {v1}, Lcom/upsight/android/analytics/internal/session/Clock;->currentTimeSeconds()J

    move-result-wide v2

    invoke-static {p1, v0, v2, v3}, Lcom/upsight/android/internal/util/PreferencesHelper;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 75
    invoke-static {}, Lcom/upsight/android/analytics/event/install/UpsightInstallEvent;->createBuilder()Lcom/upsight/android/analytics/event/install/UpsightInstallEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/upsight/android/analytics/event/install/UpsightInstallEvent$Builder;->record(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;

    .line 77
    :cond_0
    return-void
.end method

.method protected bridge synthetic onResolve(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/UpsightExtension$BaseComponent;
    .locals 1
    .param p1, "x0"    # Lcom/upsight/android/UpsightContext;

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/upsight/android/UpsightAnalyticsExtension;->onResolve(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/analytics/UpsightAnalyticsComponent;

    move-result-object v0

    return-object v0
.end method

.method protected onResolve(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/analytics/UpsightAnalyticsComponent;
    .locals 2
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;

    .prologue
    .line 55
    invoke-static {}, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;->builder()Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;

    move-result-object v0

    new-instance v1, Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;

    invoke-direct {v1, p1}, Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;-><init>(Lcom/upsight/android/UpsightContext;)V

    invoke-virtual {v0, v1}, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->baseAnalyticsModule(Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;)Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->build()Lcom/upsight/android/analytics/internal/AnalyticsComponent;

    move-result-object v0

    return-object v0
.end method
