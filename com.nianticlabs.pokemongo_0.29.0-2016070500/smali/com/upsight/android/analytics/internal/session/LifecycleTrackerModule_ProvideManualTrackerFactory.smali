.class public final Lcom/upsight/android/analytics/internal/session/LifecycleTrackerModule_ProvideManualTrackerFactory;
.super Ljava/lang/Object;
.source "LifecycleTrackerModule_ProvideManualTrackerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory",
        "<",
        "Lcom/upsight/android/analytics/UpsightLifeCycleTracker;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final module:Lcom/upsight/android/analytics/internal/session/LifecycleTrackerModule;

.field private final trackerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/session/ManualTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/upsight/android/analytics/internal/session/LifecycleTrackerModule_ProvideManualTrackerFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/upsight/android/analytics/internal/session/LifecycleTrackerModule_ProvideManualTrackerFactory;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/upsight/android/analytics/internal/session/LifecycleTrackerModule;Ljavax/inject/Provider;)V
    .locals 1
    .param p1, "module"    # Lcom/upsight/android/analytics/internal/session/LifecycleTrackerModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/analytics/internal/session/LifecycleTrackerModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/session/ManualTracker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p2, "trackerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/session/ManualTracker;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-boolean v0, Lcom/upsight/android/analytics/internal/session/LifecycleTrackerModule_ProvideManualTrackerFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 15
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/session/LifecycleTrackerModule_ProvideManualTrackerFactory;->module:Lcom/upsight/android/analytics/internal/session/LifecycleTrackerModule;

    .line 16
    sget-boolean v0, Lcom/upsight/android/analytics/internal/session/LifecycleTrackerModule_ProvideManualTrackerFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 17
    :cond_1
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/session/LifecycleTrackerModule_ProvideManualTrackerFactory;->trackerProvider:Ljavax/inject/Provider;

    .line 18
    return-void
.end method

.method public static create(Lcom/upsight/android/analytics/internal/session/LifecycleTrackerModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 1
    .param p0, "module"    # Lcom/upsight/android/analytics/internal/session/LifecycleTrackerModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/analytics/internal/session/LifecycleTrackerModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/session/ManualTracker;",
            ">;)",
            "Ldagger/internal/Factory",
            "<",
            "Lcom/upsight/android/analytics/UpsightLifeCycleTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "trackerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/session/ManualTracker;>;"
    new-instance v0, Lcom/upsight/android/analytics/internal/session/LifecycleTrackerModule_ProvideManualTrackerFactory;

    invoke-direct {v0, p0, p1}, Lcom/upsight/android/analytics/internal/session/LifecycleTrackerModule_ProvideManualTrackerFactory;-><init>(Lcom/upsight/android/analytics/internal/session/LifecycleTrackerModule;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/upsight/android/analytics/UpsightLifeCycleTracker;
    .locals 3

    .prologue
    .line 22
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/session/LifecycleTrackerModule_ProvideManualTrackerFactory;->module:Lcom/upsight/android/analytics/internal/session/LifecycleTrackerModule;

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/session/LifecycleTrackerModule_ProvideManualTrackerFactory;->trackerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/analytics/internal/session/ManualTracker;

    invoke-virtual {v2, v1}, Lcom/upsight/android/analytics/internal/session/LifecycleTrackerModule;->provideManualTracker(Lcom/upsight/android/analytics/internal/session/ManualTracker;)Lcom/upsight/android/analytics/UpsightLifeCycleTracker;

    move-result-object v0

    .line 23
    .local v0, "provided":Lcom/upsight/android/analytics/UpsightLifeCycleTracker;
    if-nez v0, :cond_0

    .line 24
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Cannot return null from a non-@Nullable @Provides method"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 26
    :cond_0
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/upsight/android/analytics/internal/session/LifecycleTrackerModule_ProvideManualTrackerFactory;->get()Lcom/upsight/android/analytics/UpsightLifeCycleTracker;

    move-result-object v0

    return-object v0
.end method
