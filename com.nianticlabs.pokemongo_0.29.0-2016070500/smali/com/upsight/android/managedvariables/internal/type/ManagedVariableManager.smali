.class public Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;
.super Ljava/lang/Object;
.source "ManagedVariableManager.java"


# static fields
.field private static final sModelMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/upsight/android/managedvariables/internal/type/ManagedVariableModel;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbackScheduler:Lrx/Scheduler;

.field private mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

.field private mUxmSchema:Lcom/upsight/android/managedvariables/internal/type/UxmSchema;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager$1;

    invoke-direct {v0}, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager$1;-><init>()V

    sput-object v0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;->sModelMap:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lrx/Scheduler;Lcom/upsight/android/persistence/UpsightDataStore;Lcom/upsight/android/managedvariables/internal/type/UxmSchema;)V
    .locals 1
    .param p1, "callbackScheduler"    # Lrx/Scheduler;
    .param p2, "dataStore"    # Lcom/upsight/android/persistence/UpsightDataStore;
    .param p3, "uxmSchema"    # Lcom/upsight/android/managedvariables/internal/type/UxmSchema;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;->mCache:Ljava/util/Map;

    .line 72
    iput-object p1, p0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;->mCallbackScheduler:Lrx/Scheduler;

    .line 73
    iput-object p2, p0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    .line 74
    iput-object p3, p0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;->mUxmSchema:Lcom/upsight/android/managedvariables/internal/type/UxmSchema;

    .line 75
    invoke-interface {p2, p0}, Lcom/upsight/android/persistence/UpsightDataStore;->subscribe(Ljava/lang/Object;)Lcom/upsight/android/persistence/UpsightSubscription;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;->mCache:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;Ljava/lang/Class;Ljava/lang/String;Lcom/upsight/android/managedvariables/internal/type/ManagedVariableModel;)Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;
    .param p1, "x1"    # Ljava/lang/Class;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/upsight/android/managedvariables/internal/type/ManagedVariableModel;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;->fromModel(Ljava/lang/Class;Ljava/lang/String;Lcom/upsight/android/managedvariables/internal/type/ManagedVariableModel;)Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;)Lcom/upsight/android/managedvariables/internal/type/UxmSchema;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;->mUxmSchema:Lcom/upsight/android/managedvariables/internal/type/UxmSchema;

    return-object v0
.end method

.method private fetchDataStoreObservable(Ljava/lang/Class;Ljava/lang/String;)Lrx/Observable;
    .locals 2
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<+",
            "Lcom/upsight/android/managedvariables/internal/type/ManagedVariableModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 232
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v1, p0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    sget-object v0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;->sModelMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-interface {v1, v0}, Lcom/upsight/android/persistence/UpsightDataStore;->fetchObservable(Ljava/lang/Class;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager$5;-><init>(Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lrx/Observable;->defaultIfEmpty(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private fromModel(Ljava/lang/Class;Ljava/lang/String;Lcom/upsight/android/managedvariables/internal/type/ManagedVariableModel;)Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;
    .locals 6
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "model"    # Lcom/upsight/android/managedvariables/internal/type/ManagedVariableModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Lcom/upsight/android/managedvariables/internal/type/ManagedVariableModel;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v4, 0x0

    .line 253
    const/4 v1, 0x0

    .line 254
    .local v1, "managedVariable":Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;, "TT;"
    iget-object v5, p0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;->mUxmSchema:Lcom/upsight/android/managedvariables/internal/type/UxmSchema;

    invoke-virtual {v5, p1, p2}, Lcom/upsight/android/managedvariables/internal/type/UxmSchema;->get(Ljava/lang/Class;Ljava/lang/String;)Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;

    move-result-object v2

    .line 255
    .local v2, "schemaObject":Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;
    if-nez v2, :cond_0

    .line 275
    :goto_0
    return-object v4

    .line 258
    :cond_0
    const-class v5, Lcom/upsight/android/managedvariables/type/UpsightManagedString;

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 259
    iget-object v0, v2, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;->defaultValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 260
    .local v0, "defaultValue":Ljava/lang/String;
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableModel;->getValue()Ljava/lang/Object;

    move-result-object v4

    :cond_1
    check-cast v4, Ljava/lang/String;

    move-object v3, v4

    check-cast v3, Ljava/lang/String;

    .line 261
    .local v3, "value":Ljava/lang/String;
    new-instance v1, Lcom/upsight/android/managedvariables/internal/type/ManagedString;

    .end local v1    # "managedVariable":Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;, "TT;"
    invoke-direct {v1, p2, v0, v3}, Lcom/upsight/android/managedvariables/internal/type/ManagedString;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "defaultValue":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    .restart local v1    # "managedVariable":Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;, "TT;"
    :cond_2
    :goto_1
    move-object v4, v1

    .line 275
    goto :goto_0

    .line 262
    :cond_3
    const-class v5, Lcom/upsight/android/managedvariables/type/UpsightManagedBoolean;

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 263
    iget-object v0, v2, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;->defaultValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    .line 264
    .local v0, "defaultValue":Ljava/lang/Boolean;
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableModel;->getValue()Ljava/lang/Object;

    move-result-object v4

    :cond_4
    check-cast v4, Ljava/lang/Boolean;

    move-object v3, v4

    check-cast v3, Ljava/lang/Boolean;

    .line 265
    .local v3, "value":Ljava/lang/Boolean;
    new-instance v1, Lcom/upsight/android/managedvariables/internal/type/ManagedBoolean;

    .end local v1    # "managedVariable":Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;, "TT;"
    invoke-direct {v1, p2, v0, v3}, Lcom/upsight/android/managedvariables/internal/type/ManagedBoolean;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 266
    .restart local v1    # "managedVariable":Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;, "TT;"
    goto :goto_1

    .end local v0    # "defaultValue":Ljava/lang/Boolean;
    .end local v3    # "value":Ljava/lang/Boolean;
    :cond_5
    const-class v5, Lcom/upsight/android/managedvariables/type/UpsightManagedInt;

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 267
    iget-object v0, v2, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;->defaultValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 268
    .local v0, "defaultValue":Ljava/lang/Integer;
    if-eqz p3, :cond_6

    invoke-virtual {p3}, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableModel;->getValue()Ljava/lang/Object;

    move-result-object v4

    :cond_6
    check-cast v4, Ljava/lang/Integer;

    move-object v3, v4

    check-cast v3, Ljava/lang/Integer;

    .line 269
    .local v3, "value":Ljava/lang/Integer;
    new-instance v1, Lcom/upsight/android/managedvariables/internal/type/ManagedInt;

    .end local v1    # "managedVariable":Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;, "TT;"
    invoke-direct {v1, p2, v0, v3}, Lcom/upsight/android/managedvariables/internal/type/ManagedInt;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 270
    .restart local v1    # "managedVariable":Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;, "TT;"
    goto :goto_1

    .end local v0    # "defaultValue":Ljava/lang/Integer;
    .end local v3    # "value":Ljava/lang/Integer;
    :cond_7
    const-class v5, Lcom/upsight/android/managedvariables/type/UpsightManagedFloat;

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 271
    iget-object v0, v2, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;->defaultValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    .line 272
    .local v0, "defaultValue":Ljava/lang/Float;
    if-eqz p3, :cond_8

    invoke-virtual {p3}, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableModel;->getValue()Ljava/lang/Object;

    move-result-object v4

    :cond_8
    check-cast v4, Ljava/lang/Float;

    move-object v3, v4

    check-cast v3, Ljava/lang/Float;

    .line 273
    .local v3, "value":Ljava/lang/Float;
    new-instance v1, Lcom/upsight/android/managedvariables/internal/type/ManagedFloat;

    .end local v1    # "managedVariable":Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;, "TT;"
    invoke-direct {v1, p2, v0, v3}, Lcom/upsight/android/managedvariables/internal/type/ManagedFloat;-><init>(Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;)V

    .restart local v1    # "managedVariable":Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;, "TT;"
    goto :goto_1
.end method

.method private resetValue(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 3
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 303
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v2, p0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;->mCache:Ljava/util/Map;

    monitor-enter v2

    .line 304
    :try_start_0
    iget-object v1, p0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;->mCache:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;

    .line 305
    .local v0, "managedVariable":Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;
    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 306
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;->set(Ljava/lang/Object;)V

    .line 308
    :cond_0
    monitor-exit v2

    .line 309
    return-void

    .line 308
    .end local v0    # "managedVariable":Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 287
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v2, p0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;->mCache:Ljava/util/Map;

    monitor-enter v2

    .line 288
    :try_start_0
    iget-object v1, p0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;->mCache:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;

    .line 289
    .local v0, "managedVariable":Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;
    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    invoke-virtual {v0, p3}, Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;->set(Ljava/lang/Object;)V

    .line 292
    :cond_0
    monitor-exit v2

    .line 293
    return-void

    .line 292
    .end local v0    # "managedVariable":Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public fetch(Ljava/lang/Class;Ljava/lang/String;)Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;
    .locals 5
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v4, p0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;->mCache:Ljava/util/Map;

    monitor-enter v4

    .line 91
    :try_start_0
    iget-object v3, p0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;->mCache:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;

    .line 92
    .local v0, "cachedVariable":Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;
    if-eqz v0, :cond_1

    .line 94
    move-object v1, v0

    .line 109
    .local v1, "managedVariable":Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;, "TT;"
    :cond_0
    :goto_0
    monitor-exit v4

    .line 111
    return-object v1

    .line 97
    .end local v1    # "managedVariable":Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;, "TT;"
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;->fetchDataStoreObservable(Ljava/lang/Class;Ljava/lang/String;)Lrx/Observable;

    move-result-object v3

    invoke-virtual {v3}, Lrx/Observable;->toBlocking()Lrx/observables/BlockingObservable;

    move-result-object v3

    invoke-virtual {v3}, Lrx/observables/BlockingObservable;->first()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableModel;

    .line 102
    .local v2, "model":Lcom/upsight/android/managedvariables/internal/type/ManagedVariableModel;
    invoke-direct {p0, p1, p2, v2}, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;->fromModel(Ljava/lang/Class;Ljava/lang/String;Lcom/upsight/android/managedvariables/internal/type/ManagedVariableModel;)Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;

    move-result-object v1

    .line 105
    .restart local v1    # "managedVariable":Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;, "TT;"
    if-eqz v1, :cond_0

    .line 106
    iget-object v3, p0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;->mCache:Ljava/util/Map;

    invoke-interface {v3, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 109
    .end local v0    # "cachedVariable":Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;
    .end local v1    # "managedVariable":Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;, "TT;"
    .end local v2    # "model":Lcom/upsight/android/managedvariables/internal/type/ManagedVariableModel;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public fetch(Ljava/lang/Class;Ljava/lang/String;Lcom/upsight/android/managedvariables/type/UpsightManagedVariable$Listener;)Lcom/upsight/android/persistence/UpsightSubscription;
    .locals 6
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Lcom/upsight/android/managedvariables/type/UpsightManagedVariable$Listener",
            "<TT;>;)",
            "Lcom/upsight/android/persistence/UpsightSubscription;"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "listener":Lcom/upsight/android/managedvariables/type/UpsightManagedVariable$Listener;, "Lcom/upsight/android/managedvariables/type/UpsightManagedVariable$Listener<TT;>;"
    iget-object v3, p0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;->mCache:Ljava/util/Map;

    monitor-enter v3

    .line 129
    :try_start_0
    iget-object v2, p0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;->mCache:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;

    .line 130
    .local v0, "cachedVariable":Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;
    if-eqz v0, :cond_0

    .line 132
    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v2

    iget-object v4, p0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;->mCallbackScheduler:Lrx/Scheduler;

    invoke-virtual {v2, v4}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v2

    new-instance v4, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager$2;

    invoke-direct {v4, p0, p3}, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager$2;-><init>(Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;Lcom/upsight/android/managedvariables/type/UpsightManagedVariable$Listener;)V

    invoke-virtual {v2, v4}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object v2

    invoke-static {v2}, Lcom/upsight/android/internal/persistence/subscription/Subscriptions;->from(Lrx/Subscription;)Lcom/upsight/android/persistence/UpsightSubscription;

    move-result-object v1

    .line 173
    .local v1, "subscription":Lcom/upsight/android/persistence/UpsightSubscription;
    :goto_0
    monitor-exit v3

    .line 175
    return-object v1

    .line 142
    .end local v1    # "subscription":Lcom/upsight/android/persistence/UpsightSubscription;
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;->fetchDataStoreObservable(Ljava/lang/Class;Ljava/lang/String;)Lrx/Observable;

    move-result-object v2

    new-instance v4, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager$3;

    invoke-direct {v4, p0, p2, p3, p1}, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager$3;-><init>(Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;Ljava/lang/String;Lcom/upsight/android/managedvariables/type/UpsightManagedVariable$Listener;Ljava/lang/Class;)V

    new-instance v5, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager$4;

    invoke-direct {v5, p0, p3}, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager$4;-><init>(Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;Lcom/upsight/android/managedvariables/type/UpsightManagedVariable$Listener;)V

    invoke-virtual {v2, v4, v5}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object v2

    invoke-static {v2}, Lcom/upsight/android/internal/persistence/subscription/Subscriptions;->from(Lrx/Subscription;)Lcom/upsight/android/persistence/UpsightSubscription;

    move-result-object v1

    .restart local v1    # "subscription":Lcom/upsight/android/persistence/UpsightSubscription;
    goto :goto_0

    .line 173
    .end local v0    # "cachedVariable":Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;
    .end local v1    # "subscription":Lcom/upsight/android/persistence/UpsightSubscription;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public handleManagedVariableRemoval(Lcom/upsight/android/managedvariables/internal/type/ManagedBoolean$Model;)V
    .locals 2
    .param p1, "model"    # Lcom/upsight/android/managedvariables/internal/type/ManagedBoolean$Model;
    .annotation runtime Lcom/upsight/android/persistence/annotation/Removed;
    .end annotation

    .prologue
    .line 209
    const-class v0, Lcom/upsight/android/managedvariables/type/UpsightManagedBoolean;

    invoke-virtual {p1}, Lcom/upsight/android/managedvariables/internal/type/ManagedBoolean$Model;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;->resetValue(Ljava/lang/Class;Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public handleManagedVariableRemoval(Lcom/upsight/android/managedvariables/internal/type/ManagedFloat$Model;)V
    .locals 2
    .param p1, "model"    # Lcom/upsight/android/managedvariables/internal/type/ManagedFloat$Model;
    .annotation runtime Lcom/upsight/android/persistence/annotation/Removed;
    .end annotation

    .prologue
    .line 219
    const-class v0, Lcom/upsight/android/managedvariables/type/UpsightManagedFloat;

    invoke-virtual {p1}, Lcom/upsight/android/managedvariables/internal/type/ManagedFloat$Model;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;->resetValue(Ljava/lang/Class;Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method public handleManagedVariableRemoval(Lcom/upsight/android/managedvariables/internal/type/ManagedInt$Model;)V
    .locals 2
    .param p1, "model"    # Lcom/upsight/android/managedvariables/internal/type/ManagedInt$Model;
    .annotation runtime Lcom/upsight/android/persistence/annotation/Removed;
    .end annotation

    .prologue
    .line 214
    const-class v0, Lcom/upsight/android/managedvariables/type/UpsightManagedInt;

    invoke-virtual {p1}, Lcom/upsight/android/managedvariables/internal/type/ManagedInt$Model;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;->resetValue(Ljava/lang/Class;Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public handleManagedVariableRemoval(Lcom/upsight/android/managedvariables/internal/type/ManagedString$Model;)V
    .locals 2
    .param p1, "model"    # Lcom/upsight/android/managedvariables/internal/type/ManagedString$Model;
    .annotation runtime Lcom/upsight/android/persistence/annotation/Removed;
    .end annotation

    .prologue
    .line 204
    const-class v0, Lcom/upsight/android/managedvariables/type/UpsightManagedString;

    invoke-virtual {p1}, Lcom/upsight/android/managedvariables/internal/type/ManagedString$Model;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;->resetValue(Ljava/lang/Class;Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method public handleManagedVariableUpdate(Lcom/upsight/android/managedvariables/internal/type/ManagedBoolean$Model;)V
    .locals 3
    .param p1, "model"    # Lcom/upsight/android/managedvariables/internal/type/ManagedBoolean$Model;
    .annotation runtime Lcom/upsight/android/persistence/annotation/Created;
    .end annotation

    .annotation runtime Lcom/upsight/android/persistence/annotation/Updated;
    .end annotation

    .prologue
    .line 187
    const-class v0, Lcom/upsight/android/managedvariables/type/UpsightManagedBoolean;

    invoke-virtual {p1}, Lcom/upsight/android/managedvariables/internal/type/ManagedBoolean$Model;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/upsight/android/managedvariables/internal/type/ManagedBoolean$Model;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;->updateValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 188
    return-void
.end method

.method public handleManagedVariableUpdate(Lcom/upsight/android/managedvariables/internal/type/ManagedFloat$Model;)V
    .locals 3
    .param p1, "model"    # Lcom/upsight/android/managedvariables/internal/type/ManagedFloat$Model;
    .annotation runtime Lcom/upsight/android/persistence/annotation/Created;
    .end annotation

    .annotation runtime Lcom/upsight/android/persistence/annotation/Updated;
    .end annotation

    .prologue
    .line 199
    const-class v0, Lcom/upsight/android/managedvariables/type/UpsightManagedFloat;

    invoke-virtual {p1}, Lcom/upsight/android/managedvariables/internal/type/ManagedFloat$Model;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/upsight/android/managedvariables/internal/type/ManagedFloat$Model;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;->updateValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 200
    return-void
.end method

.method public handleManagedVariableUpdate(Lcom/upsight/android/managedvariables/internal/type/ManagedInt$Model;)V
    .locals 3
    .param p1, "model"    # Lcom/upsight/android/managedvariables/internal/type/ManagedInt$Model;
    .annotation runtime Lcom/upsight/android/persistence/annotation/Created;
    .end annotation

    .annotation runtime Lcom/upsight/android/persistence/annotation/Updated;
    .end annotation

    .prologue
    .line 193
    const-class v0, Lcom/upsight/android/managedvariables/type/UpsightManagedInt;

    invoke-virtual {p1}, Lcom/upsight/android/managedvariables/internal/type/ManagedInt$Model;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/upsight/android/managedvariables/internal/type/ManagedInt$Model;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;->updateValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 194
    return-void
.end method

.method public handleManagedVariableUpdate(Lcom/upsight/android/managedvariables/internal/type/ManagedString$Model;)V
    .locals 3
    .param p1, "model"    # Lcom/upsight/android/managedvariables/internal/type/ManagedString$Model;
    .annotation runtime Lcom/upsight/android/persistence/annotation/Created;
    .end annotation

    .annotation runtime Lcom/upsight/android/persistence/annotation/Updated;
    .end annotation

    .prologue
    .line 181
    const-class v0, Lcom/upsight/android/managedvariables/type/UpsightManagedString;

    invoke-virtual {p1}, Lcom/upsight/android/managedvariables/internal/type/ManagedString$Model;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/upsight/android/managedvariables/internal/type/ManagedString$Model;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;->updateValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 182
    return-void
.end method
