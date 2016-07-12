.class public final Lcom/upsight/android/marketing/internal/billboard/BillboardModule_ProvideBillboardManagerFactory;
.super Ljava/lang/Object;
.source "BillboardModule_ProvideBillboardManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory",
        "<",
        "Lcom/upsight/android/marketing/UpsightBillboardManager;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final contentStoreProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/marketing/internal/content/MarketingContentStore;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/upsight/android/marketing/internal/billboard/BillboardModule;

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
    .line 10
    const-class v0, Lcom/upsight/android/marketing/internal/billboard/BillboardModule_ProvideBillboardManagerFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/upsight/android/marketing/internal/billboard/BillboardModule_ProvideBillboardManagerFactory;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/upsight/android/marketing/internal/billboard/BillboardModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1
    .param p1, "module"    # Lcom/upsight/android/marketing/internal/billboard/BillboardModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/marketing/internal/billboard/BillboardModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/UpsightContext;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/marketing/internal/content/MarketingContentStore;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p2, "upsightProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/UpsightContext;>;"
    .local p3, "contentStoreProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/marketing/internal/content/MarketingContentStore;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-boolean v0, Lcom/upsight/android/marketing/internal/billboard/BillboardModule_ProvideBillboardManagerFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 18
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardModule_ProvideBillboardManagerFactory;->module:Lcom/upsight/android/marketing/internal/billboard/BillboardModule;

    .line 19
    sget-boolean v0, Lcom/upsight/android/marketing/internal/billboard/BillboardModule_ProvideBillboardManagerFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 20
    :cond_1
    iput-object p2, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardModule_ProvideBillboardManagerFactory;->upsightProvider:Ljavax/inject/Provider;

    .line 21
    sget-boolean v0, Lcom/upsight/android/marketing/internal/billboard/BillboardModule_ProvideBillboardManagerFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 22
    :cond_2
    iput-object p3, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardModule_ProvideBillboardManagerFactory;->contentStoreProvider:Ljavax/inject/Provider;

    .line 23
    return-void
.end method

.method public static create(Lcom/upsight/android/marketing/internal/billboard/BillboardModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 1
    .param p0, "module"    # Lcom/upsight/android/marketing/internal/billboard/BillboardModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/marketing/internal/billboard/BillboardModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/UpsightContext;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/marketing/internal/content/MarketingContentStore;",
            ">;)",
            "Ldagger/internal/Factory",
            "<",
            "Lcom/upsight/android/marketing/UpsightBillboardManager;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "upsightProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/UpsightContext;>;"
    .local p2, "contentStoreProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/marketing/internal/content/MarketingContentStore;>;"
    new-instance v0, Lcom/upsight/android/marketing/internal/billboard/BillboardModule_ProvideBillboardManagerFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/upsight/android/marketing/internal/billboard/BillboardModule_ProvideBillboardManagerFactory;-><init>(Lcom/upsight/android/marketing/internal/billboard/BillboardModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/upsight/android/marketing/UpsightBillboardManager;
    .locals 4

    .prologue
    .line 27
    iget-object v3, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardModule_ProvideBillboardManagerFactory;->module:Lcom/upsight/android/marketing/internal/billboard/BillboardModule;

    iget-object v1, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardModule_ProvideBillboardManagerFactory;->upsightProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/UpsightContext;

    iget-object v2, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardModule_ProvideBillboardManagerFactory;->contentStoreProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/upsight/android/marketing/internal/content/MarketingContentStore;

    invoke-virtual {v3, v1, v2}, Lcom/upsight/android/marketing/internal/billboard/BillboardModule;->provideBillboardManager(Lcom/upsight/android/UpsightContext;Lcom/upsight/android/marketing/internal/content/MarketingContentStore;)Lcom/upsight/android/marketing/UpsightBillboardManager;

    move-result-object v0

    .line 28
    .local v0, "provided":Lcom/upsight/android/marketing/UpsightBillboardManager;
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
    invoke-virtual {p0}, Lcom/upsight/android/marketing/internal/billboard/BillboardModule_ProvideBillboardManagerFactory;->get()Lcom/upsight/android/marketing/UpsightBillboardManager;

    move-result-object v0

    return-object v0
.end method
