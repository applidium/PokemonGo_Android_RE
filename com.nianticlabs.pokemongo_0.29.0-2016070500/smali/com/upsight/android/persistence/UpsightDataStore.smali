.class public interface abstract Lcom/upsight/android/persistence/UpsightDataStore;
.super Ljava/lang/Object;
.source "UpsightDataStore.java"


# virtual methods
.method public abstract fetch(Ljava/lang/Class;Lcom/upsight/android/persistence/UpsightDataStoreListener;)Lcom/upsight/android/persistence/UpsightSubscription;
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
.end method

.method public abstract fetch(Ljava/lang/Class;Ljava/util/Set;Lcom/upsight/android/persistence/UpsightDataStoreListener;)Lcom/upsight/android/persistence/UpsightSubscription;
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
.end method

.method public abstract fetchObservable(Ljava/lang/Class;)Lrx/Observable;
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
.end method

.method public varargs abstract fetchObservable(Ljava/lang/Class;[Ljava/lang/String;)Lrx/Observable;
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
.end method

.method public abstract remove(Ljava/lang/Class;Ljava/util/Set;)Lcom/upsight/android/persistence/UpsightSubscription;
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
.end method

.method public abstract remove(Ljava/lang/Class;Ljava/util/Set;Lcom/upsight/android/persistence/UpsightDataStoreListener;)Lcom/upsight/android/persistence/UpsightSubscription;
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
.end method

.method public abstract remove(Ljava/lang/Object;)Lcom/upsight/android/persistence/UpsightSubscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/upsight/android/persistence/UpsightSubscription;"
        }
    .end annotation
.end method

.method public abstract remove(Ljava/lang/Object;Lcom/upsight/android/persistence/UpsightDataStoreListener;)Lcom/upsight/android/persistence/UpsightSubscription;
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
.end method

.method public varargs abstract removeObservable(Ljava/lang/Class;[Ljava/lang/String;)Lrx/Observable;
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
.end method

.method public abstract removeObservable(Ljava/lang/Object;)Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract setSerializer(Ljava/lang/Class;Lcom/upsight/android/persistence/UpsightStorableSerializer;)V
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
.end method

.method public abstract store(Ljava/lang/Object;)Lcom/upsight/android/persistence/UpsightSubscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/upsight/android/persistence/UpsightSubscription;"
        }
    .end annotation
.end method

.method public abstract store(Ljava/lang/Object;Lcom/upsight/android/persistence/UpsightDataStoreListener;)Lcom/upsight/android/persistence/UpsightSubscription;
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
.end method

.method public abstract storeObservable(Ljava/lang/Object;)Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract subscribe(Ljava/lang/Object;)Lcom/upsight/android/persistence/UpsightSubscription;
.end method
