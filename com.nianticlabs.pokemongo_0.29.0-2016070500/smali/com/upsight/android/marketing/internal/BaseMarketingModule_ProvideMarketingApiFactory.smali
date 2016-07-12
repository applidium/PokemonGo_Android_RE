.class public final Lcom/upsight/android/marketing/internal/BaseMarketingModule_ProvideMarketingApiFactory;
.super Ljava/lang/Object;
.source "BaseMarketingModule_ProvideMarketingApiFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory",
        "<",
        "Lcom/upsight/android/marketing/UpsightMarketingApi;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final billboardManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/marketing/UpsightBillboardManager;",
            ">;"
        }
    .end annotation
.end field

.field private final marketingContentStoreProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/marketing/UpsightMarketingContentStore;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/upsight/android/marketing/internal/BaseMarketingModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/upsight/android/marketing/internal/BaseMarketingModule_ProvideMarketingApiFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/upsight/android/marketing/internal/BaseMarketingModule_ProvideMarketingApiFactory;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/upsight/android/marketing/internal/BaseMarketingModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1
    .param p1, "module"    # Lcom/upsight/android/marketing/internal/BaseMarketingModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/marketing/internal/BaseMarketingModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/marketing/UpsightBillboardManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/marketing/UpsightMarketingContentStore;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p2, "billboardManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/marketing/UpsightBillboardManager;>;"
    .local p3, "marketingContentStoreProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/marketing/UpsightMarketingContentStore;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-boolean v0, Lcom/upsight/android/marketing/internal/BaseMarketingModule_ProvideMarketingApiFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 18
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/marketing/internal/BaseMarketingModule_ProvideMarketingApiFactory;->module:Lcom/upsight/android/marketing/internal/BaseMarketingModule;

    .line 19
    sget-boolean v0, Lcom/upsight/android/marketing/internal/BaseMarketingModule_ProvideMarketingApiFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 20
    :cond_1
    iput-object p2, p0, Lcom/upsight/android/marketing/internal/BaseMarketingModule_ProvideMarketingApiFactory;->billboardManagerProvider:Ljavax/inject/Provider;

    .line 21
    sget-boolean v0, Lcom/upsight/android/marketing/internal/BaseMarketingModule_ProvideMarketingApiFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 22
    :cond_2
    iput-object p3, p0, Lcom/upsight/android/marketing/internal/BaseMarketingModule_ProvideMarketingApiFactory;->marketingContentStoreProvider:Ljavax/inject/Provider;

    .line 23
    return-void
.end method

.method public static create(Lcom/upsight/android/marketing/internal/BaseMarketingModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 1
    .param p0, "module"    # Lcom/upsight/android/marketing/internal/BaseMarketingModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/marketing/internal/BaseMarketingModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/marketing/UpsightBillboardManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/marketing/UpsightMarketingContentStore;",
            ">;)",
            "Ldagger/internal/Factory",
            "<",
            "Lcom/upsight/android/marketing/UpsightMarketingApi;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "billboardManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/marketing/UpsightBillboardManager;>;"
    .local p2, "marketingContentStoreProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/marketing/UpsightMarketingContentStore;>;"
    new-instance v0, Lcom/upsight/android/marketing/internal/BaseMarketingModule_ProvideMarketingApiFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/upsight/android/marketing/internal/BaseMarketingModule_ProvideMarketingApiFactory;-><init>(Lcom/upsight/android/marketing/internal/BaseMarketingModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/upsight/android/marketing/UpsightMarketingApi;
    .locals 4

    .prologue
    .line 27
    iget-object v3, p0, Lcom/upsight/android/marketing/internal/BaseMarketingModule_ProvideMarketingApiFactory;->module:Lcom/upsight/android/marketing/internal/BaseMarketingModule;

    iget-object v1, p0, Lcom/upsight/android/marketing/internal/BaseMarketingModule_ProvideMarketingApiFactory;->billboardManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/marketing/UpsightBillboardManager;

    iget-object v2, p0, Lcom/upsight/android/marketing/internal/BaseMarketingModule_ProvideMarketingApiFactory;->marketingContentStoreProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/upsight/android/marketing/UpsightMarketingContentStore;

    invoke-virtual {v3, v1, v2}, Lcom/upsight/android/marketing/internal/BaseMarketingModule;->provideMarketingApi(Lcom/upsight/android/marketing/UpsightBillboardManager;Lcom/upsight/android/marketing/UpsightMarketingContentStore;)Lcom/upsight/android/marketing/UpsightMarketingApi;

    move-result-object v0

    .line 28
    .local v0, "provided":Lcom/upsight/android/marketing/UpsightMarketingApi;
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
    invoke-virtual {p0}, Lcom/upsight/android/marketing/internal/BaseMarketingModule_ProvideMarketingApiFactory;->get()Lcom/upsight/android/marketing/UpsightMarketingApi;

    move-result-object v0

    return-object v0
.end method
