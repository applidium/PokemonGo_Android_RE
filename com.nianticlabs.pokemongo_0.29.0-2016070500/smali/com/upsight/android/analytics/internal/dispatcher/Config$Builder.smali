.class public Lcom/upsight/android/analytics/internal/dispatcher/Config$Builder;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/internal/dispatcher/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mIdentifierConfig:Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;

.field private mRoutingConfig:Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/upsight/android/analytics/internal/dispatcher/Config$Builder;)Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/Config$Builder;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Config$Builder;->mRoutingConfig:Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig;

    return-object v0
.end method

.method static synthetic access$200(Lcom/upsight/android/analytics/internal/dispatcher/Config$Builder;)Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/Config$Builder;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Config$Builder;->mIdentifierConfig:Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/upsight/android/analytics/internal/dispatcher/Config;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Lcom/upsight/android/analytics/internal/dispatcher/Config;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/upsight/android/analytics/internal/dispatcher/Config;-><init>(Lcom/upsight/android/analytics/internal/dispatcher/Config$Builder;Lcom/upsight/android/analytics/internal/dispatcher/Config$1;)V

    return-object v0
.end method

.method public setIdentifierConfig(Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;)Lcom/upsight/android/analytics/internal/dispatcher/Config$Builder;
    .locals 0
    .param p1, "config"    # Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Config$Builder;->mIdentifierConfig:Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;

    .line 40
    return-object p0
.end method

.method public setRoutingConfig(Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig;)Lcom/upsight/android/analytics/internal/dispatcher/Config$Builder;
    .locals 0
    .param p1, "config"    # Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Config$Builder;->mRoutingConfig:Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig;

    .line 30
    return-object p0
.end method
