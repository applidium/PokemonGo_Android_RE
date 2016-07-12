.class public final Lcom/upsight/android/analytics/internal/BaseAnalyticsModule_ProvideGooglePlayHelperFactory;
.super Ljava/lang/Object;
.source "BaseAnalyticsModule_ProvideGooglePlayHelperFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory",
        "<",
        "Lcom/upsight/android/analytics/UpsightGooglePlayHelper;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final module:Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;

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
    const-class v0, Lcom/upsight/android/analytics/internal/BaseAnalyticsModule_ProvideGooglePlayHelperFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/upsight/android/analytics/internal/BaseAnalyticsModule_ProvideGooglePlayHelperFactory;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;Ljavax/inject/Provider;)V
    .locals 1
    .param p1, "module"    # Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/UpsightContext;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p2, "upsightProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/UpsightContext;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget-boolean v0, Lcom/upsight/android/analytics/internal/BaseAnalyticsModule_ProvideGooglePlayHelperFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 16
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/BaseAnalyticsModule_ProvideGooglePlayHelperFactory;->module:Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;

    .line 17
    sget-boolean v0, Lcom/upsight/android/analytics/internal/BaseAnalyticsModule_ProvideGooglePlayHelperFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 18
    :cond_1
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/BaseAnalyticsModule_ProvideGooglePlayHelperFactory;->upsightProvider:Ljavax/inject/Provider;

    .line 19
    return-void
.end method

.method public static create(Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 1
    .param p0, "module"    # Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/UpsightContext;",
            ">;)",
            "Ldagger/internal/Factory",
            "<",
            "Lcom/upsight/android/analytics/UpsightGooglePlayHelper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "upsightProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/UpsightContext;>;"
    new-instance v0, Lcom/upsight/android/analytics/internal/BaseAnalyticsModule_ProvideGooglePlayHelperFactory;

    invoke-direct {v0, p0, p1}, Lcom/upsight/android/analytics/internal/BaseAnalyticsModule_ProvideGooglePlayHelperFactory;-><init>(Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/upsight/android/analytics/UpsightGooglePlayHelper;
    .locals 3

    .prologue
    .line 23
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/BaseAnalyticsModule_ProvideGooglePlayHelperFactory;->module:Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/BaseAnalyticsModule_ProvideGooglePlayHelperFactory;->upsightProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/UpsightContext;

    invoke-virtual {v2, v1}, Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;->provideGooglePlayHelper(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/analytics/UpsightGooglePlayHelper;

    move-result-object v0

    .line 24
    .local v0, "provided":Lcom/upsight/android/analytics/UpsightGooglePlayHelper;
    if-nez v0, :cond_0

    .line 25
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Cannot return null from a non-@Nullable @Provides method"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 27
    :cond_0
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/upsight/android/analytics/internal/BaseAnalyticsModule_ProvideGooglePlayHelperFactory;->get()Lcom/upsight/android/analytics/UpsightGooglePlayHelper;

    move-result-object v0

    return-object v0
.end method
