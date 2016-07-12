.class public final Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent$Builder;
.super Ljava/lang/Object;
.source "DaggerGoogleAdvertisingProviderComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private googleAdvertisingProviderModule:Lcom/upsight/android/googleadvertisingid/internal/GoogleAdvertisingProviderModule;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method synthetic constructor <init>(Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent$1;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent$Builder;)Lcom/upsight/android/googleadvertisingid/internal/GoogleAdvertisingProviderModule;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent$Builder;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent$Builder;->googleAdvertisingProviderModule:Lcom/upsight/android/googleadvertisingid/internal/GoogleAdvertisingProviderModule;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/upsight/android/googleadvertisingid/internal/GoogleAdvertisingProviderComponent;
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent$Builder;->googleAdvertisingProviderModule:Lcom/upsight/android/googleadvertisingid/internal/GoogleAdvertisingProviderModule;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "googleAdvertisingProviderModule must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    new-instance v0, Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent;-><init>(Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent$Builder;Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent$1;)V

    return-object v0
.end method

.method public googleAdvertisingProviderModule(Lcom/upsight/android/googleadvertisingid/internal/GoogleAdvertisingProviderModule;)Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent$Builder;
    .locals 2
    .param p1, "googleAdvertisingProviderModule"    # Lcom/upsight/android/googleadvertisingid/internal/GoogleAdvertisingProviderModule;

    .prologue
    .line 49
    if-nez p1, :cond_0

    .line 50
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "googleAdvertisingProviderModule"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent$Builder;->googleAdvertisingProviderModule:Lcom/upsight/android/googleadvertisingid/internal/GoogleAdvertisingProviderModule;

    .line 53
    return-object p0
.end method
