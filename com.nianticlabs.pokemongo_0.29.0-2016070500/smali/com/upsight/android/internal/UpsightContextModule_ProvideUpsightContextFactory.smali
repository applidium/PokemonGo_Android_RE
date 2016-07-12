.class public final Lcom/upsight/android/internal/UpsightContextModule_ProvideUpsightContextFactory;
.super Ljava/lang/Object;
.source "UpsightContextModule_ProvideUpsightContextFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory",
        "<",
        "Lcom/upsight/android/UpsightContext;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final appTokenProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final baseContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final dataStoreProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/persistence/UpsightDataStore;",
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

.field private final module:Lcom/upsight/android/internal/UpsightContextModule;

.field private final publicKeyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final sdkPluginProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/upsight/android/internal/UpsightContextModule_ProvideUpsightContextFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/upsight/android/internal/UpsightContextModule_ProvideUpsightContextFactory;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/upsight/android/internal/UpsightContextModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1
    .param p1, "module"    # Lcom/upsight/android/internal/UpsightContextModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/internal/UpsightContextModule;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/persistence/UpsightDataStore;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/logger/UpsightLogger;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p2, "baseContextProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Landroid/content/Context;>;"
    .local p3, "sdkPluginProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Ljava/lang/String;>;"
    .local p4, "appTokenProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Ljava/lang/String;>;"
    .local p5, "publicKeyProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Ljava/lang/String;>;"
    .local p6, "dataStoreProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/persistence/UpsightDataStore;>;"
    .local p7, "loggerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/logger/UpsightLogger;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-boolean v0, Lcom/upsight/android/internal/UpsightContextModule_ProvideUpsightContextFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 23
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/internal/UpsightContextModule_ProvideUpsightContextFactory;->module:Lcom/upsight/android/internal/UpsightContextModule;

    .line 24
    sget-boolean v0, Lcom/upsight/android/internal/UpsightContextModule_ProvideUpsightContextFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 25
    :cond_1
    iput-object p2, p0, Lcom/upsight/android/internal/UpsightContextModule_ProvideUpsightContextFactory;->baseContextProvider:Ljavax/inject/Provider;

    .line 26
    sget-boolean v0, Lcom/upsight/android/internal/UpsightContextModule_ProvideUpsightContextFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 27
    :cond_2
    iput-object p3, p0, Lcom/upsight/android/internal/UpsightContextModule_ProvideUpsightContextFactory;->sdkPluginProvider:Ljavax/inject/Provider;

    .line 28
    sget-boolean v0, Lcom/upsight/android/internal/UpsightContextModule_ProvideUpsightContextFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 29
    :cond_3
    iput-object p4, p0, Lcom/upsight/android/internal/UpsightContextModule_ProvideUpsightContextFactory;->appTokenProvider:Ljavax/inject/Provider;

    .line 30
    sget-boolean v0, Lcom/upsight/android/internal/UpsightContextModule_ProvideUpsightContextFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    if-nez p5, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 31
    :cond_4
    iput-object p5, p0, Lcom/upsight/android/internal/UpsightContextModule_ProvideUpsightContextFactory;->publicKeyProvider:Ljavax/inject/Provider;

    .line 32
    sget-boolean v0, Lcom/upsight/android/internal/UpsightContextModule_ProvideUpsightContextFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_5

    if-nez p6, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 33
    :cond_5
    iput-object p6, p0, Lcom/upsight/android/internal/UpsightContextModule_ProvideUpsightContextFactory;->dataStoreProvider:Ljavax/inject/Provider;

    .line 34
    sget-boolean v0, Lcom/upsight/android/internal/UpsightContextModule_ProvideUpsightContextFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_6

    if-nez p7, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 35
    :cond_6
    iput-object p7, p0, Lcom/upsight/android/internal/UpsightContextModule_ProvideUpsightContextFactory;->loggerProvider:Ljavax/inject/Provider;

    .line 36
    return-void
.end method

.method public static create(Lcom/upsight/android/internal/UpsightContextModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 8
    .param p0, "module"    # Lcom/upsight/android/internal/UpsightContextModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/internal/UpsightContextModule;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/persistence/UpsightDataStore;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/logger/UpsightLogger;",
            ">;)",
            "Ldagger/internal/Factory",
            "<",
            "Lcom/upsight/android/UpsightContext;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "baseContextProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Landroid/content/Context;>;"
    .local p2, "sdkPluginProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Ljava/lang/String;>;"
    .local p3, "appTokenProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Ljava/lang/String;>;"
    .local p4, "publicKeyProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Ljava/lang/String;>;"
    .local p5, "dataStoreProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/persistence/UpsightDataStore;>;"
    .local p6, "loggerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/logger/UpsightLogger;>;"
    new-instance v0, Lcom/upsight/android/internal/UpsightContextModule_ProvideUpsightContextFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/upsight/android/internal/UpsightContextModule_ProvideUpsightContextFactory;-><init>(Lcom/upsight/android/internal/UpsightContextModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/upsight/android/UpsightContext;
    .locals 8

    .prologue
    .line 40
    iget-object v0, p0, Lcom/upsight/android/internal/UpsightContextModule_ProvideUpsightContextFactory;->module:Lcom/upsight/android/internal/UpsightContextModule;

    iget-object v1, p0, Lcom/upsight/android/internal/UpsightContextModule_ProvideUpsightContextFactory;->baseContextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/upsight/android/internal/UpsightContextModule_ProvideUpsightContextFactory;->sdkPluginProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/upsight/android/internal/UpsightContextModule_ProvideUpsightContextFactory;->appTokenProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/upsight/android/internal/UpsightContextModule_ProvideUpsightContextFactory;->publicKeyProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/upsight/android/internal/UpsightContextModule_ProvideUpsightContextFactory;->dataStoreProvider:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/upsight/android/persistence/UpsightDataStore;

    iget-object v6, p0, Lcom/upsight/android/internal/UpsightContextModule_ProvideUpsightContextFactory;->loggerProvider:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/upsight/android/logger/UpsightLogger;

    invoke-virtual/range {v0 .. v6}, Lcom/upsight/android/internal/UpsightContextModule;->provideUpsightContext(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/upsight/android/persistence/UpsightDataStore;Lcom/upsight/android/logger/UpsightLogger;)Lcom/upsight/android/UpsightContext;

    move-result-object v7

    .line 41
    .local v7, "provided":Lcom/upsight/android/UpsightContext;
    if-nez v7, :cond_0

    .line 42
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    return-object v7
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/upsight/android/internal/UpsightContextModule_ProvideUpsightContextFactory;->get()Lcom/upsight/android/UpsightContext;

    move-result-object v0

    return-object v0
.end method
