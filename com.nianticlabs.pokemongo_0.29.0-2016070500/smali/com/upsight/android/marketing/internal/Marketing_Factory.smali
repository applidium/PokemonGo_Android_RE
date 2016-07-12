.class public final Lcom/upsight/android/marketing/internal/Marketing_Factory;
.super Ljava/lang/Object;
.source "Marketing_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory",
        "<",
        "Lcom/upsight/android/marketing/internal/Marketing;",
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/upsight/android/marketing/internal/Marketing_Factory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/upsight/android/marketing/internal/Marketing_Factory;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 14
    .local p1, "billboardManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/marketing/UpsightBillboardManager;>;"
    .local p2, "marketingContentStoreProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/marketing/UpsightMarketingContentStore;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget-boolean v0, Lcom/upsight/android/marketing/internal/Marketing_Factory;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 16
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/marketing/internal/Marketing_Factory;->billboardManagerProvider:Ljavax/inject/Provider;

    .line 17
    sget-boolean v0, Lcom/upsight/android/marketing/internal/Marketing_Factory;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 18
    :cond_1
    iput-object p2, p0, Lcom/upsight/android/marketing/internal/Marketing_Factory;->marketingContentStoreProvider:Ljavax/inject/Provider;

    .line 19
    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            "Lcom/upsight/android/marketing/internal/Marketing;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "billboardManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/marketing/UpsightBillboardManager;>;"
    .local p1, "marketingContentStoreProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/marketing/UpsightMarketingContentStore;>;"
    new-instance v0, Lcom/upsight/android/marketing/internal/Marketing_Factory;

    invoke-direct {v0, p0, p1}, Lcom/upsight/android/marketing/internal/Marketing_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/upsight/android/marketing/internal/Marketing;
    .locals 3

    .prologue
    .line 23
    new-instance v2, Lcom/upsight/android/marketing/internal/Marketing;

    iget-object v0, p0, Lcom/upsight/android/marketing/internal/Marketing_Factory;->billboardManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/marketing/UpsightBillboardManager;

    iget-object v1, p0, Lcom/upsight/android/marketing/internal/Marketing_Factory;->marketingContentStoreProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/marketing/UpsightMarketingContentStore;

    invoke-direct {v2, v0, v1}, Lcom/upsight/android/marketing/internal/Marketing;-><init>(Lcom/upsight/android/marketing/UpsightBillboardManager;Lcom/upsight/android/marketing/UpsightMarketingContentStore;)V

    return-object v2
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/upsight/android/marketing/internal/Marketing_Factory;->get()Lcom/upsight/android/marketing/internal/Marketing;

    move-result-object v0

    return-object v0
.end method
