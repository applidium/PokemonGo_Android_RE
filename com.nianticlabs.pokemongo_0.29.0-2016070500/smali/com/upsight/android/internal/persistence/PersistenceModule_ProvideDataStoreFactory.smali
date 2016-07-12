.class public final Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideDataStoreFactory;
.super Ljava/lang/Object;
.source "PersistenceModule_ProvideDataStoreFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory",
        "<",
        "Lcom/upsight/android/persistence/UpsightDataStore;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final busProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/squareup/otto/Bus;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final idFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/internal/persistence/storable/StorableIdFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final infoCacheProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/upsight/android/internal/persistence/PersistenceModule;

.field private final observeOnSchedulerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lrx/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field private final subscribeOnSchedulerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lrx/Scheduler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideDataStoreFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideDataStoreFactory;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/upsight/android/internal/persistence/PersistenceModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1
    .param p1, "module"    # Lcom/upsight/android/internal/persistence/PersistenceModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/internal/persistence/PersistenceModule;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/internal/persistence/storable/StorableIdFactory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lrx/Scheduler;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lrx/Scheduler;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/squareup/otto/Bus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p2, "contextProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Landroid/content/Context;>;"
    .local p3, "infoCacheProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;>;"
    .local p4, "idFactoryProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/internal/persistence/storable/StorableIdFactory;>;"
    .local p5, "subscribeOnSchedulerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lrx/Scheduler;>;"
    .local p6, "observeOnSchedulerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lrx/Scheduler;>;"
    .local p7, "busProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/squareup/otto/Bus;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-boolean v0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideDataStoreFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 25
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideDataStoreFactory;->module:Lcom/upsight/android/internal/persistence/PersistenceModule;

    .line 26
    sget-boolean v0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideDataStoreFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 27
    :cond_1
    iput-object p2, p0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideDataStoreFactory;->contextProvider:Ljavax/inject/Provider;

    .line 28
    sget-boolean v0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideDataStoreFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 29
    :cond_2
    iput-object p3, p0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideDataStoreFactory;->infoCacheProvider:Ljavax/inject/Provider;

    .line 30
    sget-boolean v0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideDataStoreFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 31
    :cond_3
    iput-object p4, p0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideDataStoreFactory;->idFactoryProvider:Ljavax/inject/Provider;

    .line 32
    sget-boolean v0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideDataStoreFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    if-nez p5, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 33
    :cond_4
    iput-object p5, p0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideDataStoreFactory;->subscribeOnSchedulerProvider:Ljavax/inject/Provider;

    .line 34
    sget-boolean v0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideDataStoreFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_5

    if-nez p6, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 35
    :cond_5
    iput-object p6, p0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideDataStoreFactory;->observeOnSchedulerProvider:Ljavax/inject/Provider;

    .line 36
    sget-boolean v0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideDataStoreFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_6

    if-nez p7, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 37
    :cond_6
    iput-object p7, p0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideDataStoreFactory;->busProvider:Ljavax/inject/Provider;

    .line 38
    return-void
.end method

.method public static create(Lcom/upsight/android/internal/persistence/PersistenceModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 8
    .param p0, "module"    # Lcom/upsight/android/internal/persistence/PersistenceModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/internal/persistence/PersistenceModule;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/internal/persistence/storable/StorableIdFactory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lrx/Scheduler;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lrx/Scheduler;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/squareup/otto/Bus;",
            ">;)",
            "Ldagger/internal/Factory",
            "<",
            "Lcom/upsight/android/persistence/UpsightDataStore;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "contextProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Landroid/content/Context;>;"
    .local p2, "infoCacheProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;>;"
    .local p3, "idFactoryProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/internal/persistence/storable/StorableIdFactory;>;"
    .local p4, "subscribeOnSchedulerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lrx/Scheduler;>;"
    .local p5, "observeOnSchedulerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lrx/Scheduler;>;"
    .local p6, "busProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/squareup/otto/Bus;>;"
    new-instance v0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideDataStoreFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideDataStoreFactory;-><init>(Lcom/upsight/android/internal/persistence/PersistenceModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/upsight/android/persistence/UpsightDataStore;
    .locals 8

    .prologue
    .line 42
    iget-object v0, p0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideDataStoreFactory;->module:Lcom/upsight/android/internal/persistence/PersistenceModule;

    iget-object v1, p0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideDataStoreFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideDataStoreFactory;->infoCacheProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;

    iget-object v3, p0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideDataStoreFactory;->idFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/upsight/android/internal/persistence/storable/StorableIdFactory;

    iget-object v4, p0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideDataStoreFactory;->subscribeOnSchedulerProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lrx/Scheduler;

    iget-object v5, p0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideDataStoreFactory;->observeOnSchedulerProvider:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lrx/Scheduler;

    iget-object v6, p0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideDataStoreFactory;->busProvider:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/squareup/otto/Bus;

    invoke-virtual/range {v0 .. v6}, Lcom/upsight/android/internal/persistence/PersistenceModule;->provideDataStore(Landroid/content/Context;Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;Lcom/upsight/android/internal/persistence/storable/StorableIdFactory;Lrx/Scheduler;Lrx/Scheduler;Lcom/squareup/otto/Bus;)Lcom/upsight/android/persistence/UpsightDataStore;

    move-result-object v7

    .line 43
    .local v7, "provided":Lcom/upsight/android/persistence/UpsightDataStore;
    if-nez v7, :cond_0

    .line 44
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    return-object v7
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideDataStoreFactory;->get()Lcom/upsight/android/persistence/UpsightDataStore;

    move-result-object v0

    return-object v0
.end method
