.class public final Lcom/upsight/android/analytics/internal/DispatcherService_MembersInjector;
.super Ljava/lang/Object;
.source "DispatcherService_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/upsight/android/analytics/internal/DispatcherService;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mConfigurationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mDispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final supertypeInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/upsight/android/analytics/internal/DispatcherService_MembersInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/upsight/android/analytics/internal/DispatcherService_MembersInjector;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/MembersInjector",
            "<",
            "Landroid/app/Service;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p1, "supertypeInjector":Ldagger/MembersInjector;, "Ldagger/MembersInjector<Landroid/app/Service;>;"
    .local p2, "mConfigurationManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;>;"
    .local p3, "mDispatcherProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-boolean v0, Lcom/upsight/android/analytics/internal/DispatcherService_MembersInjector;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 18
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/DispatcherService_MembersInjector;->supertypeInjector:Ldagger/MembersInjector;

    .line 19
    sget-boolean v0, Lcom/upsight/android/analytics/internal/DispatcherService_MembersInjector;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 20
    :cond_1
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/DispatcherService_MembersInjector;->mConfigurationManagerProvider:Ljavax/inject/Provider;

    .line 21
    sget-boolean v0, Lcom/upsight/android/analytics/internal/DispatcherService_MembersInjector;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 22
    :cond_2
    iput-object p3, p0, Lcom/upsight/android/analytics/internal/DispatcherService_MembersInjector;->mDispatcherProvider:Ljavax/inject/Provider;

    .line 23
    return-void
.end method

.method public static create(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/MembersInjector",
            "<",
            "Landroid/app/Service;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;",
            ">;)",
            "Ldagger/MembersInjector",
            "<",
            "Lcom/upsight/android/analytics/internal/DispatcherService;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "supertypeInjector":Ldagger/MembersInjector;, "Ldagger/MembersInjector<Landroid/app/Service;>;"
    .local p1, "mConfigurationManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;>;"
    .local p2, "mDispatcherProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;>;"
    new-instance v0, Lcom/upsight/android/analytics/internal/DispatcherService_MembersInjector;

    invoke-direct {v0, p0, p1, p2}, Lcom/upsight/android/analytics/internal/DispatcherService_MembersInjector;-><init>(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public injectMembers(Lcom/upsight/android/analytics/internal/DispatcherService;)V
    .locals 2
    .param p1, "instance"    # Lcom/upsight/android/analytics/internal/DispatcherService;

    .prologue
    .line 27
    if-nez p1, :cond_0

    .line 28
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot inject members into a null reference"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DispatcherService_MembersInjector;->supertypeInjector:Ldagger/MembersInjector;

    invoke-interface {v0, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    .line 31
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DispatcherService_MembersInjector;->mConfigurationManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    iput-object v0, p1, Lcom/upsight/android/analytics/internal/DispatcherService;->mConfigurationManager:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    .line 32
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DispatcherService_MembersInjector;->mDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    iput-object v0, p1, Lcom/upsight/android/analytics/internal/DispatcherService;->mDispatcher:Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    .line 33
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 10
    check-cast p1, Lcom/upsight/android/analytics/internal/DispatcherService;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/upsight/android/analytics/internal/DispatcherService_MembersInjector;->injectMembers(Lcom/upsight/android/analytics/internal/DispatcherService;)V

    return-void
.end method
