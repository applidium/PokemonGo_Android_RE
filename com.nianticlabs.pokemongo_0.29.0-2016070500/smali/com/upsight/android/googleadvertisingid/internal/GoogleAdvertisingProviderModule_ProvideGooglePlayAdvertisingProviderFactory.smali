.class public final Lcom/upsight/android/googleadvertisingid/internal/GoogleAdvertisingProviderModule_ProvideGooglePlayAdvertisingProviderFactory;
.super Ljava/lang/Object;
.source "GoogleAdvertisingProviderModule_ProvideGooglePlayAdvertisingProviderFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory",
        "<",
        "Lcom/upsight/android/googleadvertisingid/internal/GooglePlayAdvertisingProvider;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final module:Lcom/upsight/android/googleadvertisingid/internal/GoogleAdvertisingProviderModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/upsight/android/googleadvertisingid/internal/GoogleAdvertisingProviderModule_ProvideGooglePlayAdvertisingProviderFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/upsight/android/googleadvertisingid/internal/GoogleAdvertisingProviderModule_ProvideGooglePlayAdvertisingProviderFactory;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/upsight/android/googleadvertisingid/internal/GoogleAdvertisingProviderModule;)V
    .locals 1
    .param p1, "module"    # Lcom/upsight/android/googleadvertisingid/internal/GoogleAdvertisingProviderModule;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget-boolean v0, Lcom/upsight/android/googleadvertisingid/internal/GoogleAdvertisingProviderModule_ProvideGooglePlayAdvertisingProviderFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 12
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/googleadvertisingid/internal/GoogleAdvertisingProviderModule_ProvideGooglePlayAdvertisingProviderFactory;->module:Lcom/upsight/android/googleadvertisingid/internal/GoogleAdvertisingProviderModule;

    .line 13
    return-void
.end method

.method public static create(Lcom/upsight/android/googleadvertisingid/internal/GoogleAdvertisingProviderModule;)Ldagger/internal/Factory;
    .locals 1
    .param p0, "module"    # Lcom/upsight/android/googleadvertisingid/internal/GoogleAdvertisingProviderModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/googleadvertisingid/internal/GoogleAdvertisingProviderModule;",
            ")",
            "Ldagger/internal/Factory",
            "<",
            "Lcom/upsight/android/googleadvertisingid/internal/GooglePlayAdvertisingProvider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    new-instance v0, Lcom/upsight/android/googleadvertisingid/internal/GoogleAdvertisingProviderModule_ProvideGooglePlayAdvertisingProviderFactory;

    invoke-direct {v0, p0}, Lcom/upsight/android/googleadvertisingid/internal/GoogleAdvertisingProviderModule_ProvideGooglePlayAdvertisingProviderFactory;-><init>(Lcom/upsight/android/googleadvertisingid/internal/GoogleAdvertisingProviderModule;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/upsight/android/googleadvertisingid/internal/GooglePlayAdvertisingProvider;
    .locals 3

    .prologue
    .line 17
    iget-object v1, p0, Lcom/upsight/android/googleadvertisingid/internal/GoogleAdvertisingProviderModule_ProvideGooglePlayAdvertisingProviderFactory;->module:Lcom/upsight/android/googleadvertisingid/internal/GoogleAdvertisingProviderModule;

    invoke-virtual {v1}, Lcom/upsight/android/googleadvertisingid/internal/GoogleAdvertisingProviderModule;->provideGooglePlayAdvertisingProvider()Lcom/upsight/android/googleadvertisingid/internal/GooglePlayAdvertisingProvider;

    move-result-object v0

    .line 18
    .local v0, "provided":Lcom/upsight/android/googleadvertisingid/internal/GooglePlayAdvertisingProvider;
    if-nez v0, :cond_0

    .line 19
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Cannot return null from a non-@Nullable @Provides method"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 21
    :cond_0
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0}, Lcom/upsight/android/googleadvertisingid/internal/GoogleAdvertisingProviderModule_ProvideGooglePlayAdvertisingProviderFactory;->get()Lcom/upsight/android/googleadvertisingid/internal/GooglePlayAdvertisingProvider;

    move-result-object v0

    return-object v0
.end method
