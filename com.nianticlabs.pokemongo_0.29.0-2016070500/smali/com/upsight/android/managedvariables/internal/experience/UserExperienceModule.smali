.class public Lcom/upsight/android/managedvariables/internal/experience/UserExperienceModule;
.super Ljava/lang/Object;
.source "UserExperienceModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method provideUserExperience(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/managedvariables/experience/UpsightUserExperience;
    .locals 2
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 21
    new-instance v0, Lcom/upsight/android/managedvariables/internal/experience/UserExperience;

    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getCoreComponent()Lcom/upsight/android/UpsightCoreComponent;

    move-result-object v1

    invoke-interface {v1}, Lcom/upsight/android/UpsightCoreComponent;->bus()Lcom/squareup/otto/Bus;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/upsight/android/managedvariables/internal/experience/UserExperience;-><init>(Lcom/squareup/otto/Bus;)V

    return-object v0
.end method
