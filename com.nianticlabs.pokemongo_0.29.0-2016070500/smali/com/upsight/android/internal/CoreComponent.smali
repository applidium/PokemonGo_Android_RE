.class public interface abstract Lcom/upsight/android/internal/CoreComponent;
.super Ljava/lang/Object;
.source "CoreComponent.java"

# interfaces
.implements Lcom/upsight/android/UpsightCoreComponent;


# annotations
.annotation runtime Ldagger/Component;
    modules = {
        Lcom/upsight/android/internal/CoreModule;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation
