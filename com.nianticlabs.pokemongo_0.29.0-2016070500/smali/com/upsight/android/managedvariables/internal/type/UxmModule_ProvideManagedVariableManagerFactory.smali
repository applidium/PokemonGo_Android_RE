.class public final Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideManagedVariableManagerFactory;
.super Ljava/lang/Object;
.source "UxmModule_ProvideManagedVariableManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory",
        "<",
        "Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final module:Lcom/upsight/android/managedvariables/internal/type/UxmModule;

.field private final schedulerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lrx/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field private final upsightProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/UpsightContext;",
            ">;"
        }
    .end annotation
.end field

.field private final uxmSchemaProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/managedvariables/internal/type/UxmSchema;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideManagedVariableManagerFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideManagedVariableManagerFactory;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/upsight/android/managedvariables/internal/type/UxmModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1
    .param p1, "module"    # Lcom/upsight/android/managedvariables/internal/type/UxmModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/managedvariables/internal/type/UxmModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/UpsightContext;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lrx/Scheduler;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/managedvariables/internal/type/UxmSchema;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p2, "upsightProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/UpsightContext;>;"
    .local p3, "schedulerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lrx/Scheduler;>;"
    .local p4, "uxmSchemaProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/managedvariables/internal/type/UxmSchema;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-boolean v0, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideManagedVariableManagerFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 18
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideManagedVariableManagerFactory;->module:Lcom/upsight/android/managedvariables/internal/type/UxmModule;

    .line 19
    sget-boolean v0, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideManagedVariableManagerFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 20
    :cond_1
    iput-object p2, p0, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideManagedVariableManagerFactory;->upsightProvider:Ljavax/inject/Provider;

    .line 21
    sget-boolean v0, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideManagedVariableManagerFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 22
    :cond_2
    iput-object p3, p0, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideManagedVariableManagerFactory;->schedulerProvider:Ljavax/inject/Provider;

    .line 23
    sget-boolean v0, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideManagedVariableManagerFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 24
    :cond_3
    iput-object p4, p0, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideManagedVariableManagerFactory;->uxmSchemaProvider:Ljavax/inject/Provider;

    .line 25
    return-void
.end method

.method public static create(Lcom/upsight/android/managedvariables/internal/type/UxmModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 1
    .param p0, "module"    # Lcom/upsight/android/managedvariables/internal/type/UxmModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/managedvariables/internal/type/UxmModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/UpsightContext;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lrx/Scheduler;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/managedvariables/internal/type/UxmSchema;",
            ">;)",
            "Ldagger/internal/Factory",
            "<",
            "Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "upsightProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/UpsightContext;>;"
    .local p2, "schedulerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lrx/Scheduler;>;"
    .local p3, "uxmSchemaProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/managedvariables/internal/type/UxmSchema;>;"
    new-instance v0, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideManagedVariableManagerFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideManagedVariableManagerFactory;-><init>(Lcom/upsight/android/managedvariables/internal/type/UxmModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;
    .locals 5

    .prologue
    .line 29
    iget-object v4, p0, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideManagedVariableManagerFactory;->module:Lcom/upsight/android/managedvariables/internal/type/UxmModule;

    iget-object v1, p0, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideManagedVariableManagerFactory;->upsightProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/UpsightContext;

    iget-object v2, p0, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideManagedVariableManagerFactory;->schedulerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/Scheduler;

    iget-object v3, p0, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideManagedVariableManagerFactory;->uxmSchemaProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/upsight/android/managedvariables/internal/type/UxmSchema;

    invoke-virtual {v4, v1, v2, v3}, Lcom/upsight/android/managedvariables/internal/type/UxmModule;->provideManagedVariableManager(Lcom/upsight/android/UpsightContext;Lrx/Scheduler;Lcom/upsight/android/managedvariables/internal/type/UxmSchema;)Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;

    move-result-object v0

    .line 30
    .local v0, "provided":Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;
    if-nez v0, :cond_0

    .line 31
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Cannot return null from a non-@Nullable @Provides method"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 33
    :cond_0
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/upsight/android/managedvariables/internal/type/UxmModule_ProvideManagedVariableManagerFactory;->get()Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;

    move-result-object v0

    return-object v0
.end method
