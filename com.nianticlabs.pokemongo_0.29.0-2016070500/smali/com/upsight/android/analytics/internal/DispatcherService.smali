.class public Lcom/upsight/android/analytics/internal/DispatcherService;
.super Landroid/app/Service;
.source "DispatcherService.java"


# static fields
.field private static final STATUS_CHECK_INTERVAL:J = 0x61a8L

.field private static final STOP_AFTER_DEAD_INTERVALS:I = 0x4


# instance fields
.field mConfigurationManager:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mDataStoreSubscription:Lcom/upsight/android/persistence/UpsightSubscription;

.field private mDeadIntervalsInARow:I

.field mDispatcher:Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mSelfStopTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 45
    new-instance v0, Lcom/upsight/android/analytics/internal/DispatcherService$1;

    invoke-direct {v0, p0}, Lcom/upsight/android/analytics/internal/DispatcherService$1;-><init>(Lcom/upsight/android/analytics/internal/DispatcherService;)V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mSelfStopTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/upsight/android/analytics/internal/DispatcherService;)I
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/DispatcherService;

    .prologue
    .line 27
    iget v0, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mDeadIntervalsInARow:I

    return v0
.end method

.method static synthetic access$002(Lcom/upsight/android/analytics/internal/DispatcherService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/DispatcherService;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mDeadIntervalsInARow:I

    return p1
.end method

.method static synthetic access$008(Lcom/upsight/android/analytics/internal/DispatcherService;)I
    .locals 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/DispatcherService;

    .prologue
    .line 27
    iget v0, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mDeadIntervalsInARow:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mDeadIntervalsInARow:I

    return v0
.end method

.method static synthetic access$100(Lcom/upsight/android/analytics/internal/DispatcherService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/DispatcherService;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mSelfStopTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/upsight/android/analytics/internal/DispatcherService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/DispatcherService;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onApplicationStatus(Lcom/upsight/android/analytics/internal/session/ApplicationStatus;)V
    .locals 4
    .param p1, "appStatus"    # Lcom/upsight/android/analytics/internal/session/ApplicationStatus;
    .annotation runtime Lcom/upsight/android/persistence/annotation/Created;
    .end annotation

    .annotation runtime Lcom/upsight/android/persistence/annotation/Updated;
    .end annotation

    .prologue
    .line 85
    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/session/ApplicationStatus;->getState()Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;

    move-result-object v0

    sget-object v1, Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;->BACKGROUND:Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;

    if-ne v0, v1, :cond_0

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mDeadIntervalsInARow:I

    .line 87
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mSelfStopTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x61a8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mSelfStopTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 64
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 66
    invoke-static {p0}, Lcom/upsight/android/Upsight;->createContext(Landroid/content/Context;)Lcom/upsight/android/UpsightContext;

    move-result-object v0

    .line 67
    .local v0, "upsight":Lcom/upsight/android/UpsightContext;
    const-string v1, "com.upsight.extension.analytics"

    invoke-virtual {v0, v1}, Lcom/upsight/android/UpsightContext;->getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/UpsightAnalyticsExtension;

    check-cast v1, Lcom/upsight/android/UpsightAnalyticsExtension;

    invoke-virtual {v1}, Lcom/upsight/android/UpsightAnalyticsExtension;->getComponent()Lcom/upsight/android/UpsightExtension$BaseComponent;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/analytics/UpsightAnalyticsComponent;

    invoke-interface {v1, p0}, Lcom/upsight/android/analytics/UpsightAnalyticsComponent;->inject(Lcom/upsight/android/analytics/internal/DispatcherService;)V

    .line 71
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mHandler:Landroid/os/Handler;

    .line 72
    invoke-virtual {v0}, Lcom/upsight/android/UpsightContext;->getDataStore()Lcom/upsight/android/persistence/UpsightDataStore;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/upsight/android/persistence/UpsightDataStore;->subscribe(Ljava/lang/Object;)Lcom/upsight/android/persistence/UpsightSubscription;

    move-result-object v1

    iput-object v1, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mDataStoreSubscription:Lcom/upsight/android/persistence/UpsightSubscription;

    .line 73
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mDispatcher:Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    invoke-virtual {v1}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->launch()V

    .line 74
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mConfigurationManager:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    invoke-virtual {v1}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->launch()V

    .line 75
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mSelfStopTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 96
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mDataStoreSubscription:Lcom/upsight/android/persistence/UpsightSubscription;

    invoke-interface {v0}, Lcom/upsight/android/persistence/UpsightSubscription;->unsubscribe()V

    .line 97
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mConfigurationManager:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->terminate()V

    .line 98
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mDispatcher:Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->terminate()V

    .line 99
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 100
    return-void
.end method
