.class public final Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideBackgroundDataStoreFactory;
.super Ljava/lang/Object;
.source "PersistenceModule_ProvideBackgroundDataStoreFactory.java"

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
    const-class v0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideBackgroundDataStoreFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideBackgroundDataStoreFactory;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/upsight/android/internal/persistence/PersistenceModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
            "Lrx/Scheduler;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/internal/persistence/storable/StorableIdFactory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/squareup/otto/Bus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p2, "contextProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Landroid/content/Context;>;"
    .local p3, "subscribeOnSchedulerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lrx/Scheduler;>;"
    .local p4, "idFactoryProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/internal/persistence/storable/StorableIdFactory;>;"
    .local p5, "infoCacheProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;>;"
    .local p6, "busProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/squareup/otto/Bus;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-boolean v0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideBackgroundDataStoreFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideBackgroundDataStoreFactory;->module:Lcom/upsight/android/internal/persistence/PersistenceModule;

    .line 25
    sget-boolean v0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideBackgroundDataStoreFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 26
    :cond_1
    iput-object p2, p0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideBackgroundDataStoreFactory;->contextProvider:Ljavax/inject/Provider;

    .line 27
    sget-boolean v0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideBackgroundDataStoreFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 28
    :cond_2
    iput-object p3, p0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideBackgroundDataStoreFactory;->subscribeOnSchedulerProvider:Ljavax/inject/Provider;

    .line 29
    sget-boolean v0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideBackgroundDataStoreFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 30
    :cond_3
    iput-object p4, p0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideBackgroundDataStoreFactory;->idFactoryProvider:Ljavax/inject/Provider;

    .line 31
    sget-boolean v0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideBackgroundDataStoreFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    if-nez p5, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 32
    :cond_4
    iput-object p5, p0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideBackgroundDataStoreFactory;->infoCacheProvider:Ljavax/inject/Provider;

    .line 33
    sget-boolean v0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideBackgroundDataStoreFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_5

    if-nez p6, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 34
    :cond_5
    iput-object p6, p0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideBackgroundDataStoreFactory;->busProvider:Ljavax/inject/Provider;

    .line 35
    return-void
.end method

.method public static create(Lcom/upsight/android/internal/persistence/PersistenceModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 7
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
            "Lrx/Scheduler;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/internal/persistence/storable/StorableIdFactory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;",
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
    .line 47
    .local p1, "contextProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Landroid/content/Context;>;"
    .local p2, "subscribeOnSchedulerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lrx/Scheduler;>;"
    .local p3, "idFactoryProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/internal/persistence/storable/StorableIdFactory;>;"
    .local p4, "infoCacheProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;>;"
    .local p5, "busProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/squareup/otto/Bus;>;"
    new-instance v0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideBackgroundDataStoreFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideBackgroundDataStoreFactory;-><init>(Lcom/upsight/android/internal/persistence/PersistenceModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/upsight/android/persistence/UpsightDataStore;
    .locals 7

    .prologue
    .line 39
    iget-object v0, p0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideBackgroundDataStoreFactory;->module:Lcom/upsight/android/internal/persistence/PersistenceModule;

    iget-object v1, p0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideBackgroundDataStoreFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideBackgroundDataStoreFactory;->subscribeOnSchedulerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/Scheduler;

    iget-object v3, p0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideBackgroundDataStoreFactory;->idFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/upsight/android/internal/persistence/storable/StorableIdFactory;

    iget-object v4, p0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideBackgroundDataStoreFactory;->infoCacheProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;

    iget-object v5, p0, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideBackgroundDataStoreFactory;->busProvider:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/squareup/otto/Bus;

    invoke-virtual/range {v0 .. v5}, Lcom/upsight/android/internal/persistence/PersistenceModule;->provideBackgroundDataStore(Landroid/content/Context;Lrx/Scheduler;Lcom/upsight/android/internal/persistence/storable/StorableIdFactory;Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;Lcom/squareup/otto/Bus;)Lcom/upsight/android/persistence/UpsightDataStore;

    move-result-object v6

    .line 40
    .local v6, "provided":Lcom/upsight/android/persistence/UpsightDataStore;
    if-nez v6, :cond_0

    .line 41
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    return-object v6
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/upsight/android/internal/persistence/PersistenceModule_ProvideBackgroundDataStoreFactory;->get()Lcom/upsight/android/persistence/UpsightDataStore;

    move-result-object v0

    return-object v0
.end method
