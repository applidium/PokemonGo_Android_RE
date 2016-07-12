.class Lcom/upsight/android/managedvariables/internal/ManagedVariables;
.super Ljava/lang/Object;
.source "ManagedVariables.java"

# interfaces
.implements Lcom/upsight/android/managedvariables/UpsightManagedVariablesApi;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private mManagedVariableManager:Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;

.field private mUserExperience:Lcom/upsight/android/managedvariables/experience/UpsightUserExperience;


# direct methods
.method public constructor <init>(Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;Lcom/upsight/android/managedvariables/experience/UpsightUserExperience;)V
    .locals 0
    .param p1, "managedVariableManager"    # Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;
    .param p2, "userExperience"    # Lcom/upsight/android/managedvariables/experience/UpsightUserExperience;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/upsight/android/managedvariables/internal/ManagedVariables;->mManagedVariableManager:Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;

    .line 27
    iput-object p2, p0, Lcom/upsight/android/managedvariables/internal/ManagedVariables;->mUserExperience:Lcom/upsight/android/managedvariables/experience/UpsightUserExperience;

    .line 28
    return-void
.end method


# virtual methods
.method public fetch(Ljava/lang/Class;Ljava/lang/String;)Lcom/upsight/android/managedvariables/type/UpsightManagedVariable;
    .locals 1
    .param p2, "tag"    # Ljava/lang/String;
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

    .prologue
    .line 37
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/upsight/android/managedvariables/internal/ManagedVariables;->mManagedVariableManager:Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;

    invoke-virtual {v0, p1, p2}, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;->fetch(Ljava/lang/Class;Ljava/lang/String;)Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/managedvariables/type/UpsightManagedVariable;

    return-object v0
.end method

.method public fetch(Ljava/lang/Class;Ljava/lang/String;Lcom/upsight/android/managedvariables/type/UpsightManagedVariable$Listener;)Lcom/upsight/android/persistence/UpsightSubscription;
    .locals 1
    .param p2, "tag"    # Ljava/lang/String;
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

    .prologue
    .line 43
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "listener":Lcom/upsight/android/managedvariables/type/UpsightManagedVariable$Listener;, "Lcom/upsight/android/managedvariables/type/UpsightManagedVariable$Listener<TT;>;"
    iget-object v0, p0, Lcom/upsight/android/managedvariables/internal/ManagedVariables;->mManagedVariableManager:Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;->fetch(Ljava/lang/Class;Ljava/lang/String;Lcom/upsight/android/managedvariables/type/UpsightManagedVariable$Listener;)Lcom/upsight/android/persistence/UpsightSubscription;

    move-result-object v0

    return-object v0
.end method

.method public registerUserExperienceHandler(Lcom/upsight/android/managedvariables/experience/UpsightUserExperience$Handler;)V
    .locals 1
    .param p1, "handler"    # Lcom/upsight/android/managedvariables/experience/UpsightUserExperience$Handler;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/upsight/android/managedvariables/internal/ManagedVariables;->mUserExperience:Lcom/upsight/android/managedvariables/experience/UpsightUserExperience;

    invoke-virtual {v0, p1}, Lcom/upsight/android/managedvariables/experience/UpsightUserExperience;->registerHandler(Lcom/upsight/android/managedvariables/experience/UpsightUserExperience$Handler;)V

    .line 33
    return-void
.end method
