.class public final Lcom/upsight/android/analytics/internal/association/AssociationModule_ProvideAssociationManagerFactory;
.super Ljava/lang/Object;
.source "AssociationModule_ProvideAssociationManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory",
        "<",
        "Lcom/upsight/android/analytics/internal/association/AssociationManager;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final clockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/session/Clock;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/upsight/android/analytics/internal/association/AssociationModule;

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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/upsight/android/analytics/internal/association/AssociationModule_ProvideAssociationManagerFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/upsight/android/analytics/internal/association/AssociationModule_ProvideAssociationManagerFactory;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/upsight/android/analytics/internal/association/AssociationModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1
    .param p1, "module"    # Lcom/upsight/android/analytics/internal/association/AssociationModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/analytics/internal/association/AssociationModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/UpsightContext;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/session/Clock;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p2, "upsightProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/UpsightContext;>;"
    .local p3, "clockProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/session/Clock;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sget-boolean v0, Lcom/upsight/android/analytics/internal/association/AssociationModule_ProvideAssociationManagerFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 17
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/association/AssociationModule_ProvideAssociationManagerFactory;->module:Lcom/upsight/android/analytics/internal/association/AssociationModule;

    .line 18
    sget-boolean v0, Lcom/upsight/android/analytics/internal/association/AssociationModule_ProvideAssociationManagerFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 19
    :cond_1
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/association/AssociationModule_ProvideAssociationManagerFactory;->upsightProvider:Ljavax/inject/Provider;

    .line 20
    sget-boolean v0, Lcom/upsight/android/analytics/internal/association/AssociationModule_ProvideAssociationManagerFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 21
    :cond_2
    iput-object p3, p0, Lcom/upsight/android/analytics/internal/association/AssociationModule_ProvideAssociationManagerFactory;->clockProvider:Ljavax/inject/Provider;

    .line 22
    return-void
.end method

.method public static create(Lcom/upsight/android/analytics/internal/association/AssociationModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 1
    .param p0, "module"    # Lcom/upsight/android/analytics/internal/association/AssociationModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/analytics/internal/association/AssociationModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/UpsightContext;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/session/Clock;",
            ">;)",
            "Ldagger/internal/Factory",
            "<",
            "Lcom/upsight/android/analytics/internal/association/AssociationManager;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "upsightProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/UpsightContext;>;"
    .local p2, "clockProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/session/Clock;>;"
    new-instance v0, Lcom/upsight/android/analytics/internal/association/AssociationModule_ProvideAssociationManagerFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/upsight/android/analytics/internal/association/AssociationModule_ProvideAssociationManagerFactory;-><init>(Lcom/upsight/android/analytics/internal/association/AssociationModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/upsight/android/analytics/internal/association/AssociationManager;
    .locals 4

    .prologue
    .line 26
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/association/AssociationModule_ProvideAssociationManagerFactory;->module:Lcom/upsight/android/analytics/internal/association/AssociationModule;

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/association/AssociationModule_ProvideAssociationManagerFactory;->upsightProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/UpsightContext;

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/association/AssociationModule_ProvideAssociationManagerFactory;->clockProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/upsight/android/analytics/internal/session/Clock;

    invoke-virtual {v3, v1, v2}, Lcom/upsight/android/analytics/internal/association/AssociationModule;->provideAssociationManager(Lcom/upsight/android/UpsightContext;Lcom/upsight/android/analytics/internal/session/Clock;)Lcom/upsight/android/analytics/internal/association/AssociationManager;

    move-result-object v0

    .line 27
    .local v0, "provided":Lcom/upsight/android/analytics/internal/association/AssociationManager;
    if-nez v0, :cond_0

    .line 28
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Cannot return null from a non-@Nullable @Provides method"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 30
    :cond_0
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/upsight/android/analytics/internal/association/AssociationModule_ProvideAssociationManagerFactory;->get()Lcom/upsight/android/analytics/internal/association/AssociationManager;

    move-result-object v0

    return-object v0
.end method
