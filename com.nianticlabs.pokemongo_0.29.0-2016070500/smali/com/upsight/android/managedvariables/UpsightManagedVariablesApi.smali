.class public interface abstract Lcom/upsight/android/managedvariables/UpsightManagedVariablesApi;
.super Ljava/lang/Object;
.source "UpsightManagedVariablesApi.java"


# virtual methods
.method public abstract fetch(Ljava/lang/Class;Ljava/lang/String;)Lcom/upsight/android/managedvariables/type/UpsightManagedVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/upsight/android/managedvariables/type/UpsightManagedVariable;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract fetch(Ljava/lang/Class;Ljava/lang/String;Lcom/upsight/android/managedvariables/type/UpsightManagedVariable$Listener;)Lcom/upsight/android/persistence/UpsightSubscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/upsight/android/managedvariables/type/UpsightManagedVariable;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Lcom/upsight/android/managedvariables/type/UpsightManagedVariable$Listener",
            "<TT;>;)",
            "Lcom/upsight/android/persistence/UpsightSubscription;"
        }
    .end annotation
.end method

.method public abstract registerUserExperienceHandler(Lcom/upsight/android/managedvariables/experience/UpsightUserExperience$Handler;)V
.end method
