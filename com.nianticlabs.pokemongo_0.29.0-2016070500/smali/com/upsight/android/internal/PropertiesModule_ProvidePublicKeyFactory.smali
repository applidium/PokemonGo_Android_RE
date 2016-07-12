.class public final Lcom/upsight/android/internal/PropertiesModule_ProvidePublicKeyFactory;
.super Ljava/lang/Object;
.source "PropertiesModule_ProvidePublicKeyFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final loggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/logger/UpsightLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/upsight/android/internal/PropertiesModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/upsight/android/internal/PropertiesModule_ProvidePublicKeyFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/upsight/android/internal/PropertiesModule_ProvidePublicKeyFactory;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/upsight/android/internal/PropertiesModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1
    .param p1, "module"    # Lcom/upsight/android/internal/PropertiesModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/internal/PropertiesModule;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/logger/UpsightLogger;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p2, "contextProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Landroid/content/Context;>;"
    .local p3, "loggerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/logger/UpsightLogger;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sget-boolean v0, Lcom/upsight/android/internal/PropertiesModule_ProvidePublicKeyFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 17
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/internal/PropertiesModule_ProvidePublicKeyFactory;->module:Lcom/upsight/android/internal/PropertiesModule;

    .line 18
    sget-boolean v0, Lcom/upsight/android/internal/PropertiesModule_ProvidePublicKeyFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 19
    :cond_1
    iput-object p2, p0, Lcom/upsight/android/internal/PropertiesModule_ProvidePublicKeyFactory;->contextProvider:Ljavax/inject/Provider;

    .line 20
    sget-boolean v0, Lcom/upsight/android/internal/PropertiesModule_ProvidePublicKeyFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 21
    :cond_2
    iput-object p3, p0, Lcom/upsight/android/internal/PropertiesModule_ProvidePublicKeyFactory;->loggerProvider:Ljavax/inject/Provider;

    .line 22
    return-void
.end method

.method public static create(Lcom/upsight/android/internal/PropertiesModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 1
    .param p0, "module"    # Lcom/upsight/android/internal/PropertiesModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/internal/PropertiesModule;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/logger/UpsightLogger;",
            ">;)",
            "Ldagger/internal/Factory",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "contextProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Landroid/content/Context;>;"
    .local p2, "loggerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/logger/UpsightLogger;>;"
    new-instance v0, Lcom/upsight/android/internal/PropertiesModule_ProvidePublicKeyFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/upsight/android/internal/PropertiesModule_ProvidePublicKeyFactory;-><init>(Lcom/upsight/android/internal/PropertiesModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/upsight/android/internal/PropertiesModule_ProvidePublicKeyFactory;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/String;
    .locals 4

    .prologue
    .line 26
    iget-object v3, p0, Lcom/upsight/android/internal/PropertiesModule_ProvidePublicKeyFactory;->module:Lcom/upsight/android/internal/PropertiesModule;

    iget-object v1, p0, Lcom/upsight/android/internal/PropertiesModule_ProvidePublicKeyFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/upsight/android/internal/PropertiesModule_ProvidePublicKeyFactory;->loggerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/upsight/android/logger/UpsightLogger;

    invoke-virtual {v3, v1, v2}, Lcom/upsight/android/internal/PropertiesModule;->providePublicKey(Landroid/content/Context;Lcom/upsight/android/logger/UpsightLogger;)Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "provided":Ljava/lang/String;
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
