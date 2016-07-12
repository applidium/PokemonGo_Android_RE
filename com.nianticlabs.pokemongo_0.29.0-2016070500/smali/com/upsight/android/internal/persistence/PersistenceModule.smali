.class public final Lcom/upsight/android/internal/persistence/PersistenceModule;
.super Ljava/lang/Object;
.source "PersistenceModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# static fields
.field public static final DATA_STORE_BACKGROUND:Ljava/lang/String; = "background"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provideBackgroundDataStore(Landroid/content/Context;Lrx/Scheduler;Lcom/upsight/android/internal/persistence/storable/StorableIdFactory;Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;Lcom/squareup/otto/Bus;)Lcom/upsight/android/persistence/UpsightDataStore;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subscribeOnScheduler"    # Lrx/Scheduler;
        .annotation runtime Ljavax/inject/Named;
            value = "execution"
        .end annotation
    .end param
    .param p3, "idFactory"    # Lcom/upsight/android/internal/persistence/storable/StorableIdFactory;
    .param p4, "infoCache"    # Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;
    .param p5, "bus"    # Lcom/squareup/otto/Bus;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "background"
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 48
    new-instance v0, Lcom/upsight/android/internal/persistence/DataStore;

    invoke-static {}, Lrx/schedulers/Schedulers;->immediate()Lrx/Scheduler;

    move-result-object v5

    move-object v1, p1

    move-object v2, p4

    move-object v3, p3

    move-object v4, p2

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/upsight/android/internal/persistence/DataStore;-><init>(Landroid/content/Context;Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;Lcom/upsight/android/internal/persistence/storable/StorableIdFactory;Lrx/Scheduler;Lrx/Scheduler;Lcom/squareup/otto/Bus;)V

    return-object v0
.end method

.method provideDataStore(Landroid/content/Context;Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;Lcom/upsight/android/internal/persistence/storable/StorableIdFactory;Lrx/Scheduler;Lrx/Scheduler;Lcom/squareup/otto/Bus;)Lcom/upsight/android/persistence/UpsightDataStore;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "infoCache"    # Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;
    .param p3, "idFactory"    # Lcom/upsight/android/internal/persistence/storable/StorableIdFactory;
    .param p4, "subscribeOnScheduler"    # Lrx/Scheduler;
        .annotation runtime Ljavax/inject/Named;
            value = "execution"
        .end annotation
    .end param
    .param p5, "observeOnScheduler"    # Lrx/Scheduler;
        .annotation runtime Ljavax/inject/Named;
            value = "callback"
        .end annotation
    .end param
    .param p6, "bus"    # Lcom/squareup/otto/Bus;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 36
    new-instance v0, Lcom/upsight/android/internal/persistence/DataStore;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/upsight/android/internal/persistence/DataStore;-><init>(Landroid/content/Context;Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;Lcom/upsight/android/internal/persistence/storable/StorableIdFactory;Lrx/Scheduler;Lrx/Scheduler;Lcom/squareup/otto/Bus;)V

    return-object v0
.end method
