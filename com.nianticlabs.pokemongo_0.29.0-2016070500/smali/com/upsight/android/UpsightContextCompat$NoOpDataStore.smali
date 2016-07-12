.class Lcom/upsight/android/UpsightContextCompat$NoOpDataStore;
.super Ljava/lang/Object;
.source "UpsightContextCompat.java"

# interfaces
.implements Lcom/upsight/android/persistence/UpsightDataStore;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/UpsightContextCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoOpDataStore"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/UpsightContextCompat$NoOpDataStore$NoOpSubscription;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    return-void
.end method

.method synthetic constructor <init>(Lcom/upsight/android/UpsightContextCompat$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/upsight/android/UpsightContextCompat$1;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/upsight/android/UpsightContextCompat$NoOpDataStore;-><init>()V

    return-void
.end method


# virtual methods
.method public fetch(Ljava/lang/Class;Lcom/upsight/android/persistence/UpsightDataStoreListener;)Lcom/upsight/android/persistence/UpsightSubscription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/upsight/android/persistence/UpsightDataStoreListener",
            "<",
            "Ljava/util/Set",
            "<TT;>;>;)",
            "Lcom/upsight/android/persistence/UpsightSubscription;"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "listener":Lcom/upsight/android/persistence/UpsightDataStoreListener;, "Lcom/upsight/android/persistence/UpsightDataStoreListener<Ljava/util/Set<TT;>;>;"
    new-instance v0, Lcom/upsight/android/UpsightContextCompat$NoOpDataStore$NoOpSubscription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/upsight/android/UpsightContextCompat$NoOpDataStore$NoOpSubscription;-><init>(Lcom/upsight/android/UpsightContextCompat$1;)V

    return-object v0
.end method

.method public fetch(Ljava/lang/Class;Ljava/util/Set;Lcom/upsight/android/persistence/UpsightDataStoreListener;)Lcom/upsight/android/persistence/UpsightSubscription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/upsight/android/persistence/UpsightDataStoreListener",
            "<",
            "Ljava/util/Set",
            "<TT;>;>;)",
            "Lcom/upsight/android/persistence/UpsightSubscription;"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p3, "listener":Lcom/upsight/android/persistence/UpsightDataStoreListener;, "Lcom/upsight/android/persistence/UpsightDataStoreListener<Ljava/util/Set<TT;>;>;"
    new-instance v0, Lcom/upsight/android/UpsightContextCompat$NoOpDataStore$NoOpSubscription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/upsight/android/UpsightContextCompat$NoOpDataStore$NoOpSubscription;-><init>(Lcom/upsight/android/UpsightContextCompat$1;)V

    return-object v0
.end method

.method public fetchObservable(Ljava/lang/Class;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lrx/Observable;->empty()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public varargs fetchObservable(Ljava/lang/Class;[Ljava/lang/String;)Lrx/Observable;
    .locals 1
    .param p2, "ids"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lrx/Observable;->empty()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Class;Ljava/util/Set;)Lcom/upsight/android/persistence/UpsightSubscription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/upsight/android/persistence/UpsightSubscription;"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Lcom/upsight/android/UpsightContextCompat$NoOpDataStore$NoOpSubscription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/upsight/android/UpsightContextCompat$NoOpDataStore$NoOpSubscription;-><init>(Lcom/upsight/android/UpsightContextCompat$1;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Class;Ljava/util/Set;Lcom/upsight/android/persistence/UpsightDataStoreListener;)Lcom/upsight/android/persistence/UpsightSubscription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/upsight/android/persistence/UpsightDataStoreListener",
            "<",
            "Ljava/util/Set",
            "<TT;>;>;)",
            "Lcom/upsight/android/persistence/UpsightSubscription;"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p3, "listener":Lcom/upsight/android/persistence/UpsightDataStoreListener;, "Lcom/upsight/android/persistence/UpsightDataStoreListener<Ljava/util/Set<TT;>;>;"
    new-instance v0, Lcom/upsight/android/UpsightContextCompat$NoOpDataStore$NoOpSubscription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/upsight/android/UpsightContextCompat$NoOpDataStore$NoOpSubscription;-><init>(Lcom/upsight/android/UpsightContextCompat$1;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Lcom/upsight/android/persistence/UpsightSubscription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/upsight/android/persistence/UpsightSubscription;"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "object":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/upsight/android/UpsightContextCompat$NoOpDataStore$NoOpSubscription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/upsight/android/UpsightContextCompat$NoOpDataStore$NoOpSubscription;-><init>(Lcom/upsight/android/UpsightContextCompat$1;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;Lcom/upsight/android/persistence/UpsightDataStoreListener;)Lcom/upsight/android/persistence/UpsightSubscription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/upsight/android/persistence/UpsightDataStoreListener",
            "<TT;>;)",
            "Lcom/upsight/android/persistence/UpsightSubscription;"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "object":Ljava/lang/Object;, "TT;"
    .local p2, "listener":Lcom/upsight/android/persistence/UpsightDataStoreListener;, "Lcom/upsight/android/persistence/UpsightDataStoreListener<TT;>;"
    new-instance v0, Lcom/upsight/android/UpsightContextCompat$NoOpDataStore$NoOpSubscription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/upsight/android/UpsightContextCompat$NoOpDataStore$NoOpSubscription;-><init>(Lcom/upsight/android/UpsightContextCompat$1;)V

    return-object v0
.end method

.method public varargs removeObservable(Ljava/lang/Class;[Ljava/lang/String;)Lrx/Observable;
    .locals 1
    .param p2, "ids"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lrx/Observable;->empty()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public removeObservable(Ljava/lang/Object;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 117
    .local p1, "object":Ljava/lang/Object;, "TT;"
    invoke-static {}, Lrx/Observable;->empty()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public setSerializer(Ljava/lang/Class;Lcom/upsight/android/persistence/UpsightStorableSerializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/upsight/android/persistence/UpsightStorableSerializer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "serializer":Lcom/upsight/android/persistence/UpsightStorableSerializer;, "Lcom/upsight/android/persistence/UpsightStorableSerializer<TT;>;"
    return-void
.end method

.method public store(Ljava/lang/Object;)Lcom/upsight/android/persistence/UpsightSubscription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/upsight/android/persistence/UpsightSubscription;"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "object":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/upsight/android/UpsightContextCompat$NoOpDataStore$NoOpSubscription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/upsight/android/UpsightContextCompat$NoOpDataStore$NoOpSubscription;-><init>(Lcom/upsight/android/UpsightContextCompat$1;)V

    return-object v0
.end method

.method public store(Ljava/lang/Object;Lcom/upsight/android/persistence/UpsightDataStoreListener;)Lcom/upsight/android/persistence/UpsightSubscription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/upsight/android/persistence/UpsightDataStoreListener",
            "<TT;>;)",
            "Lcom/upsight/android/persistence/UpsightSubscription;"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "object":Ljava/lang/Object;, "TT;"
    .local p2, "listener":Lcom/upsight/android/persistence/UpsightDataStoreListener;, "Lcom/upsight/android/persistence/UpsightDataStoreListener<TT;>;"
    new-instance v0, Lcom/upsight/android/UpsightContextCompat$NoOpDataStore$NoOpSubscription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/upsight/android/UpsightContextCompat$NoOpDataStore$NoOpSubscription;-><init>(Lcom/upsight/android/UpsightContextCompat$1;)V

    return-object v0
.end method

.method public storeObservable(Ljava/lang/Object;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "object":Ljava/lang/Object;, "TT;"
    invoke-static {}, Lrx/Observable;->empty()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public subscribe(Ljava/lang/Object;)Lcom/upsight/android/persistence/UpsightSubscription;
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 92
    new-instance v0, Lcom/upsight/android/UpsightContextCompat$NoOpDataStore$NoOpSubscription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/upsight/android/UpsightContextCompat$NoOpDataStore$NoOpSubscription;-><init>(Lcom/upsight/android/UpsightContextCompat$1;)V

    return-object v0
.end method
