.class public final Lcom/upsight/android/marketing/internal/content/ContentModule_ProvideMarketingContentStoreFactory;
.super Ljava/lang/Object;
.source "ContentModule_ProvideMarketingContentStoreFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory",
        "<",
        "Lcom/upsight/android/marketing/internal/content/MarketingContentStore;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final implProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/upsight/android/marketing/internal/content/ContentModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/upsight/android/marketing/internal/content/ContentModule_ProvideMarketingContentStoreFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/upsight/android/marketing/internal/content/ContentModule_ProvideMarketingContentStoreFactory;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/upsight/android/marketing/internal/content/ContentModule;Ljavax/inject/Provider;)V
    .locals 1
    .param p1, "module"    # Lcom/upsight/android/marketing/internal/content/ContentModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/marketing/internal/content/ContentModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p2, "implProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    sget-boolean v0, Lcom/upsight/android/marketing/internal/content/ContentModule_ProvideMarketingContentStoreFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 14
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/marketing/internal/content/ContentModule_ProvideMarketingContentStoreFactory;->module:Lcom/upsight/android/marketing/internal/content/ContentModule;

    .line 15
    sget-boolean v0, Lcom/upsight/android/marketing/internal/content/ContentModule_ProvideMarketingContentStoreFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 16
    :cond_1
    iput-object p2, p0, Lcom/upsight/android/marketing/internal/content/ContentModule_ProvideMarketingContentStoreFactory;->implProvider:Ljavax/inject/Provider;

    .line 17
    return-void
.end method

.method public static create(Lcom/upsight/android/marketing/internal/content/ContentModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 1
    .param p0, "module"    # Lcom/upsight/android/marketing/internal/content/ContentModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/marketing/internal/content/ContentModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;",
            ">;)",
            "Ldagger/internal/Factory",
            "<",
            "Lcom/upsight/android/marketing/internal/content/MarketingContentStore;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "implProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;>;"
    new-instance v0, Lcom/upsight/android/marketing/internal/content/ContentModule_ProvideMarketingContentStoreFactory;

    invoke-direct {v0, p0, p1}, Lcom/upsight/android/marketing/internal/content/ContentModule_ProvideMarketingContentStoreFactory;-><init>(Lcom/upsight/android/marketing/internal/content/ContentModule;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/upsight/android/marketing/internal/content/MarketingContentStore;
    .locals 3

    .prologue
    .line 21
    iget-object v2, p0, Lcom/upsight/android/marketing/internal/content/ContentModule_ProvideMarketingContentStoreFactory;->module:Lcom/upsight/android/marketing/internal/content/ContentModule;

    iget-object v1, p0, Lcom/upsight/android/marketing/internal/content/ContentModule_ProvideMarketingContentStoreFactory;->implProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;

    invoke-virtual {v2, v1}, Lcom/upsight/android/marketing/internal/content/ContentModule;->provideMarketingContentStore(Lcom/upsight/android/marketing/internal/content/MarketingContentStoreImpl;)Lcom/upsight/android/marketing/internal/content/MarketingContentStore;

    move-result-object v0

    .line 22
    .local v0, "provided":Lcom/upsight/android/marketing/internal/content/MarketingContentStore;
    if-nez v0, :cond_0

    .line 23
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Cannot return null from a non-@Nullable @Provides method"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 25
    :cond_0
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p0}, Lcom/upsight/android/marketing/internal/content/ContentModule_ProvideMarketingContentStoreFactory;->get()Lcom/upsight/android/marketing/internal/content/MarketingContentStore;

    move-result-object v0

    return-object v0
.end method
