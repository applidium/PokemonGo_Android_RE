.class public interface abstract Lcom/upsight/android/managedvariables/internal/ManagedVariablesComponent;
.super Ljava/lang/Object;
.source "ManagedVariablesComponent.java"

# interfaces
.implements Lcom/upsight/android/managedvariables/UpsightManagedVariablesComponent;


# annotations
.annotation runtime Ldagger/Component;
    modules = {
        Lcom/upsight/android/managedvariables/internal/ManagedVariablesModule;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation
