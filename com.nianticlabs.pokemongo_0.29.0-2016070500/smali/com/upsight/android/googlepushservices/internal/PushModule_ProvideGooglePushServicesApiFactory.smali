.class public final Lcom/upsight/android/googlepushservices/internal/PushModule_ProvideGooglePushServicesApiFactory;
.super Ljava/lang/Object;
.source "PushModule_ProvideGooglePushServicesApiFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory",
        "<",
        "Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesApi;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final googlePushServicesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/googlepushservices/internal/GooglePushServices;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/upsight/android/googlepushservices/internal/PushModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/upsight/android/googlepushservices/internal/PushModule_ProvideGooglePushServicesApiFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/upsight/android/googlepushservices/internal/PushModule_ProvideGooglePushServicesApiFactory;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/upsight/android/googlepushservices/internal/PushModule;Ljavax/inject/Provider;)V
    .locals 1
    .param p1, "module"    # Lcom/upsight/android/googlepushservices/internal/PushModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/googlepushservices/internal/PushModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/googlepushservices/internal/GooglePushServices;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p2, "googlePushServicesProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/googlepushservices/internal/GooglePushServices;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-boolean v0, Lcom/upsight/android/googlepushservices/internal/PushModule_ProvideGooglePushServicesApiFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 15
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/googlepushservices/internal/PushModule_ProvideGooglePushServicesApiFactory;->module:Lcom/upsight/android/googlepushservices/internal/PushModule;

    .line 16
    sget-boolean v0, Lcom/upsight/android/googlepushservices/internal/PushModule_ProvideGooglePushServicesApiFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 17
    :cond_1
    iput-object p2, p0, Lcom/upsight/android/googlepushservices/internal/PushModule_ProvideGooglePushServicesApiFactory;->googlePushServicesProvider:Ljavax/inject/Provider;

    .line 18
    return-void
.end method

.method public static create(Lcom/upsight/android/googlepushservices/internal/PushModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 1
    .param p0, "module"    # Lcom/upsight/android/googlepushservices/internal/PushModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/googlepushservices/internal/PushModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/googlepushservices/internal/GooglePushServices;",
            ">;)",
            "Ldagger/internal/Factory",
            "<",
            "Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesApi;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "googlePushServicesProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/googlepushservices/internal/GooglePushServices;>;"
    new-instance v0, Lcom/upsight/android/googlepushservices/internal/PushModule_ProvideGooglePushServicesApiFactory;

    invoke-direct {v0, p0, p1}, Lcom/upsight/android/googlepushservices/internal/PushModule_ProvideGooglePushServicesApiFactory;-><init>(Lcom/upsight/android/googlepushservices/internal/PushModule;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesApi;
    .locals 3

    .prologue
    .line 22
    iget-object v2, p0, Lcom/upsight/android/googlepushservices/internal/PushModule_ProvideGooglePushServicesApiFactory;->module:Lcom/upsight/android/googlepushservices/internal/PushModule;

    iget-object v1, p0, Lcom/upsight/android/googlepushservices/internal/PushModule_ProvideGooglePushServicesApiFactory;->googlePushServicesProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    invoke-virtual {v2, v1}, Lcom/upsight/android/googlepushservices/internal/PushModule;->provideGooglePushServicesApi(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;)Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesApi;

    move-result-object v0

    .line 23
    .local v0, "provided":Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesApi;
    if-nez v0, :cond_0

    .line 24
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Cannot return null from a non-@Nullable @Provides method"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 26
    :cond_0
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/upsight/android/googlepushservices/internal/PushModule_ProvideGooglePushServicesApiFactory;->get()Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesApi;

    move-result-object v0

    return-object v0
.end method
