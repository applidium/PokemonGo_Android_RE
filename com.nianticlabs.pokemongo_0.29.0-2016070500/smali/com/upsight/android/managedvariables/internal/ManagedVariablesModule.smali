.class public Lcom/upsight/android/managedvariables/internal/ManagedVariablesModule;
.super Ljava/lang/Object;
.source "ManagedVariablesModule.java"


# annotations
.annotation runtime Ldagger/Module;
    includes = {
        Lcom/upsight/android/managedvariables/internal/ResourceModule;,
        Lcom/upsight/android/managedvariables/internal/type/UxmModule;,
        Lcom/upsight/android/managedvariables/internal/experience/UserExperienceModule;,
        Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
