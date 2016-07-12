.class public interface abstract Lcom/upsight/android/UpsightCoreComponent;
.super Ljava/lang/Object;
.source "UpsightCoreComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/UpsightCoreComponent$Factory;
    }
.end annotation


# virtual methods
.method public abstract applicationContext()Landroid/content/Context;
.end method

.method public abstract backgroundDataStore()Lcom/upsight/android/persistence/UpsightDataStore;
    .annotation runtime Ljavax/inject/Named;
        value = "background"
    .end annotation
.end method

.method public abstract bus()Lcom/squareup/otto/Bus;
.end method

.method public abstract objectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;
.end method

.method public abstract observeOnScheduler()Lrx/Scheduler;
    .annotation runtime Ljavax/inject/Named;
        value = "callback"
    .end annotation
.end method

.method public abstract subscribeOnScheduler()Lrx/Scheduler;
    .annotation runtime Ljavax/inject/Named;
        value = "execution"
    .end annotation
.end method

.method public abstract upsightContext()Lcom/upsight/android/UpsightContext;
.end method
