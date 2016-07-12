.class public final Lcom/upsight/android/UpsightManagedVariablesExtension_MembersInjector;
.super Ljava/lang/Object;
.source "UpsightManagedVariablesExtension_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/upsight/android/UpsightManagedVariablesExtension;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mManagedVariablesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/managedvariables/UpsightManagedVariablesApi;",
            ">;"
        }
    .end annotation
.end field

.field private final mUxmBlockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final mUxmContentFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/managedvariables/internal/type/UxmContentFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final supertypeInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/upsight/android/UpsightExtension",
            "<",
            "Lcom/upsight/android/managedvariables/UpsightManagedVariablesComponent;",
            "Lcom/upsight/android/managedvariables/UpsightManagedVariablesApi;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/upsight/android/UpsightManagedVariablesExtension_MembersInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/upsight/android/UpsightManagedVariablesExtension_MembersInjector;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/MembersInjector",
            "<",
            "Lcom/upsight/android/UpsightExtension",
            "<",
            "Lcom/upsight/android/managedvariables/UpsightManagedVariablesComponent;",
            "Lcom/upsight/android/managedvariables/UpsightManagedVariablesApi;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/managedvariables/UpsightManagedVariablesApi;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/managedvariables/internal/type/UxmContentFactory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "supertypeInjector":Ldagger/MembersInjector;, "Ldagger/MembersInjector<Lcom/upsight/android/UpsightExtension<Lcom/upsight/android/managedvariables/UpsightManagedVariablesComponent;Lcom/upsight/android/managedvariables/UpsightManagedVariablesApi;>;>;"
    .local p2, "mManagedVariablesProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/managedvariables/UpsightManagedVariablesApi;>;"
    .local p3, "mUxmContentFactoryProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/managedvariables/internal/type/UxmContentFactory;>;"
    .local p4, "mUxmBlockProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    sget-boolean v0, Lcom/upsight/android/UpsightManagedVariablesExtension_MembersInjector;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 20
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/UpsightManagedVariablesExtension_MembersInjector;->supertypeInjector:Ldagger/MembersInjector;

    .line 21
    sget-boolean v0, Lcom/upsight/android/UpsightManagedVariablesExtension_MembersInjector;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 22
    :cond_1
    iput-object p2, p0, Lcom/upsight/android/UpsightManagedVariablesExtension_MembersInjector;->mManagedVariablesProvider:Ljavax/inject/Provider;

    .line 23
    sget-boolean v0, Lcom/upsight/android/UpsightManagedVariablesExtension_MembersInjector;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 24
    :cond_2
    iput-object p3, p0, Lcom/upsight/android/UpsightManagedVariablesExtension_MembersInjector;->mUxmContentFactoryProvider:Ljavax/inject/Provider;

    .line 25
    sget-boolean v0, Lcom/upsight/android/UpsightManagedVariablesExtension_MembersInjector;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 26
    :cond_3
    iput-object p4, p0, Lcom/upsight/android/UpsightManagedVariablesExtension_MembersInjector;->mUxmBlockProvider:Ljavax/inject/Provider;

    .line 27
    return-void
.end method

.method public static create(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/MembersInjector",
            "<",
            "Lcom/upsight/android/UpsightExtension",
            "<",
            "Lcom/upsight/android/managedvariables/UpsightManagedVariablesComponent;",
            "Lcom/upsight/android/managedvariables/UpsightManagedVariablesApi;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/managedvariables/UpsightManagedVariablesApi;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/managedvariables/internal/type/UxmContentFactory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;",
            ">;)",
            "Ldagger/MembersInjector",
            "<",
            "Lcom/upsight/android/UpsightManagedVariablesExtension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "supertypeInjector":Ldagger/MembersInjector;, "Ldagger/MembersInjector<Lcom/upsight/android/UpsightExtension<Lcom/upsight/android/managedvariables/UpsightManagedVariablesComponent;Lcom/upsight/android/managedvariables/UpsightManagedVariablesApi;>;>;"
    .local p1, "mManagedVariablesProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/managedvariables/UpsightManagedVariablesApi;>;"
    .local p2, "mUxmContentFactoryProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/managedvariables/internal/type/UxmContentFactory;>;"
    .local p3, "mUxmBlockProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;>;"
    new-instance v0, Lcom/upsight/android/UpsightManagedVariablesExtension_MembersInjector;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/upsight/android/UpsightManagedVariablesExtension_MembersInjector;-><init>(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public injectMembers(Lcom/upsight/android/UpsightManagedVariablesExtension;)V
    .locals 2
    .param p1, "instance"    # Lcom/upsight/android/UpsightManagedVariablesExtension;

    .prologue
    .line 31
    if-nez p1, :cond_0

    .line 32
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot inject members into a null reference"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/upsight/android/UpsightManagedVariablesExtension_MembersInjector;->supertypeInjector:Ldagger/MembersInjector;

    invoke-interface {v0, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lcom/upsight/android/UpsightManagedVariablesExtension_MembersInjector;->mManagedVariablesProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/managedvariables/UpsightManagedVariablesApi;

    iput-object v0, p1, Lcom/upsight/android/UpsightManagedVariablesExtension;->mManagedVariables:Lcom/upsight/android/managedvariables/UpsightManagedVariablesApi;

    .line 36
    iget-object v0, p0, Lcom/upsight/android/UpsightManagedVariablesExtension_MembersInjector;->mUxmContentFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/managedvariables/internal/type/UxmContentFactory;

    iput-object v0, p1, Lcom/upsight/android/UpsightManagedVariablesExtension;->mUxmContentFactory:Lcom/upsight/android/managedvariables/internal/type/UxmContentFactory;

    .line 37
    iget-object v0, p0, Lcom/upsight/android/UpsightManagedVariablesExtension_MembersInjector;->mUxmBlockProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;

    iput-object v0, p1, Lcom/upsight/android/UpsightManagedVariablesExtension;->mUxmBlockProvider:Lcom/upsight/android/managedvariables/internal/type/UxmBlockProvider;

    .line 38
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 11
    check-cast p1, Lcom/upsight/android/UpsightManagedVariablesExtension;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/upsight/android/UpsightManagedVariablesExtension_MembersInjector;->injectMembers(Lcom/upsight/android/UpsightManagedVariablesExtension;)V

    return-void
.end method
