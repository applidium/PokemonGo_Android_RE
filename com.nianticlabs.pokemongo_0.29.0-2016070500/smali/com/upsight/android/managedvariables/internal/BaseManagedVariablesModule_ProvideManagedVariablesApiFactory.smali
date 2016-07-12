.class public final Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule_ProvideManagedVariablesApiFactory;
.super Ljava/lang/Object;
.source "BaseManagedVariablesModule_ProvideManagedVariablesApiFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory",
        "<",
        "Lcom/upsight/android/managedvariables/UpsightManagedVariablesApi;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final managedVariableManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;

.field private final userExperienceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/managedvariables/experience/UpsightUserExperience;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule_ProvideManagedVariablesApiFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule_ProvideManagedVariablesApiFactory;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1
    .param p1, "module"    # Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/managedvariables/experience/UpsightUserExperience;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p2, "managedVariableManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;>;"
    .local p3, "userExperienceProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/managedvariables/experience/UpsightUserExperience;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-boolean v0, Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule_ProvideManagedVariablesApiFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 18
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule_ProvideManagedVariablesApiFactory;->module:Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;

    .line 19
    sget-boolean v0, Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule_ProvideManagedVariablesApiFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 20
    :cond_1
    iput-object p2, p0, Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule_ProvideManagedVariablesApiFactory;->managedVariableManagerProvider:Ljavax/inject/Provider;

    .line 21
    sget-boolean v0, Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule_ProvideManagedVariablesApiFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 22
    :cond_2
    iput-object p3, p0, Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule_ProvideManagedVariablesApiFactory;->userExperienceProvider:Ljavax/inject/Provider;

    .line 23
    return-void
.end method

.method public static create(Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 1
    .param p0, "module"    # Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/managedvariables/experience/UpsightUserExperience;",
            ">;)",
            "Ldagger/internal/Factory",
            "<",
            "Lcom/upsight/android/managedvariables/UpsightManagedVariablesApi;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "managedVariableManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;>;"
    .local p2, "userExperienceProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/managedvariables/experience/UpsightUserExperience;>;"
    new-instance v0, Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule_ProvideManagedVariablesApiFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule_ProvideManagedVariablesApiFactory;-><init>(Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/upsight/android/managedvariables/UpsightManagedVariablesApi;
    .locals 4

    .prologue
    .line 27
    iget-object v3, p0, Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule_ProvideManagedVariablesApiFactory;->module:Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;

    iget-object v1, p0, Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule_ProvideManagedVariablesApiFactory;->managedVariableManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;

    iget-object v2, p0, Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule_ProvideManagedVariablesApiFactory;->userExperienceProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/upsight/android/managedvariables/experience/UpsightUserExperience;

    invoke-virtual {v3, v1, v2}, Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;->provideManagedVariablesApi(Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;Lcom/upsight/android/managedvariables/experience/UpsightUserExperience;)Lcom/upsight/android/managedvariables/UpsightManagedVariablesApi;

    move-result-object v0

    .line 28
    .local v0, "provided":Lcom/upsight/android/managedvariables/UpsightManagedVariablesApi;
    if-nez v0, :cond_0

    .line 29
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Cannot return null from a non-@Nullable @Provides method"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 31
    :cond_0
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule_ProvideManagedVariablesApiFactory;->get()Lcom/upsight/android/managedvariables/UpsightManagedVariablesApi;

    move-result-object v0

    return-object v0
.end method
