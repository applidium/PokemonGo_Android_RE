.class public final Lcom/upsight/android/marketing/internal/BaseMarketingModule_ProvideUpsightContextFactory;
.super Ljava/lang/Object;
.source "BaseMarketingModule_ProvideUpsightContextFactory.java"

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
.field private final module:Lcom/upsight/android/marketing/internal/BaseMarketingModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/upsight/android/marketing/internal/BaseMarketingModule_ProvideUpsightContextFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/upsight/android/marketing/internal/BaseMarketingModule_ProvideUpsightContextFactory;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/upsight/android/marketing/internal/BaseMarketingModule;)V
    .locals 1
    .param p1, "module"    # Lcom/upsight/android/marketing/internal/BaseMarketingModule;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-boolean v0, Lcom/upsight/android/marketing/internal/BaseMarketingModule_ProvideUpsightContextFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 13
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/marketing/internal/BaseMarketingModule_ProvideUpsightContextFactory;->module:Lcom/upsight/android/marketing/internal/BaseMarketingModule;

    .line 14
    return-void
.end method

.method public static create(Lcom/upsight/android/marketing/internal/BaseMarketingModule;)Ldagger/internal/Factory;
    .locals 1
    .param p0, "module"    # Lcom/upsight/android/marketing/internal/BaseMarketingModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/marketing/internal/BaseMarketingModule;",
            ")",
            "Ldagger/internal/Factory",
            "<",
            "Lcom/upsight/android/UpsightContext;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    new-instance v0, Lcom/upsight/android/marketing/internal/BaseMarketingModule_ProvideUpsightContextFactory;

    invoke-direct {v0, p0}, Lcom/upsight/android/marketing/internal/BaseMarketingModule_ProvideUpsightContextFactory;-><init>(Lcom/upsight/android/marketing/internal/BaseMarketingModule;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/upsight/android/UpsightContext;
    .locals 3

    .prologue
    .line 18
    iget-object v1, p0, Lcom/upsight/android/marketing/internal/BaseMarketingModule_ProvideUpsightContextFactory;->module:Lcom/upsight/android/marketing/internal/BaseMarketingModule;

    invoke-virtual {v1}, Lcom/upsight/android/marketing/internal/BaseMarketingModule;->provideUpsightContext()Lcom/upsight/android/UpsightContext;

    move-result-object v0

    .line 19
    .local v0, "provided":Lcom/upsight/android/UpsightContext;
    if-nez v0, :cond_0

    .line 20
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Cannot return null from a non-@Nullable @Provides method"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 22
    :cond_0
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p0}, Lcom/upsight/android/marketing/internal/BaseMarketingModule_ProvideUpsightContextFactory;->get()Lcom/upsight/android/UpsightContext;

    move-result-object v0

    return-object v0
.end method
