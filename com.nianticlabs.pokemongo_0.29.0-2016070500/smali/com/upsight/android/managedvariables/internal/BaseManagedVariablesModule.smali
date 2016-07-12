.class public final Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;
.super Ljava/lang/Object;
.source "BaseManagedVariablesModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# static fields
.field public static final SCHEDULER_MAIN:Ljava/lang/String; = "main"


# instance fields
.field private final mUpsight:Lcom/upsight/android/UpsightContext;


# direct methods
.method public constructor <init>(Lcom/upsight/android/UpsightContext;)V
    .locals 0
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;->mUpsight:Lcom/upsight/android/UpsightContext;

    .line 29
    return-void
.end method


# virtual methods
.method provideMainScheduler()Lrx/Scheduler;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "main"
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 48
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v0

    return-object v0
.end method

.method provideManagedVariablesApi(Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;Lcom/upsight/android/managedvariables/experience/UpsightUserExperience;)Lcom/upsight/android/managedvariables/UpsightManagedVariablesApi;
    .locals 1
    .param p1, "managedVariableManager"    # Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;
    .param p2, "userExperience"    # Lcom/upsight/android/managedvariables/experience/UpsightUserExperience;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lcom/upsight/android/managedvariables/internal/ManagedVariables;

    invoke-direct {v0, p1, p2}, Lcom/upsight/android/managedvariables/internal/ManagedVariables;-><init>(Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;Lcom/upsight/android/managedvariables/experience/UpsightUserExperience;)V

    return-object v0
.end method

.method provideUpsightContext()Lcom/upsight/android/UpsightContext;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/upsight/android/managedvariables/internal/BaseManagedVariablesModule;->mUpsight:Lcom/upsight/android/UpsightContext;

    return-object v0
.end method
