.class public final Lcom/upsight/android/analytics/internal/session/LifecycleTrackerModule;
.super Ljava/lang/Object;
.source "LifecycleTrackerModule.java"


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
.method public provideManualTracker(Lcom/upsight/android/analytics/internal/session/ManualTracker;)Lcom/upsight/android/analytics/UpsightLifeCycleTracker;
    .locals 0
    .param p1, "tracker"    # Lcom/upsight/android/analytics/internal/session/ManualTracker;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 22
    return-object p1
.end method

.method public provideUpsightLifeCycleCallbacks(Lcom/upsight/android/analytics/internal/session/ActivityLifecycleTracker;)Landroid/app/Application$ActivityLifecycleCallbacks;
    .locals 0
    .param p1, "handler"    # Lcom/upsight/android/analytics/internal/session/ActivityLifecycleTracker;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 28
    return-object p1
.end method
