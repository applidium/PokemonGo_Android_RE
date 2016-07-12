.class public final Lcom/upsight/android/internal/UpsightContextModule;
.super Ljava/lang/Object;
.source "UpsightContextModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method provideUpsightContext(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/upsight/android/persistence/UpsightDataStore;Lcom/upsight/android/logger/UpsightLogger;)Lcom/upsight/android/UpsightContext;
    .locals 8
    .param p1, "baseContext"    # Landroid/content/Context;
    .param p2, "sdkPlugin"    # Ljava/lang/String;
        .annotation runtime Ljavax/inject/Named;
            value = "com.upsight.sdk_plugin"
        .end annotation
    .end param
    .param p3, "appToken"    # Ljava/lang/String;
        .annotation runtime Ljavax/inject/Named;
            value = "com.upsight.app_token"
        .end annotation
    .end param
    .param p4, "publicKey"    # Ljava/lang/String;
        .annotation runtime Ljavax/inject/Named;
            value = "com.upsight.public_key"
        .end annotation
    .end param
    .param p5, "dataStore"    # Lcom/upsight/android/persistence/UpsightDataStore;
    .param p6, "logger"    # Lcom/upsight/android/logger/UpsightLogger;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 31
    new-instance v0, Lcom/upsight/android/UpsightContext;

    invoke-static {p1}, Lcom/upsight/android/internal/util/SidHelper;->getSid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/upsight/android/UpsightContext;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/upsight/android/persistence/UpsightDataStore;Lcom/upsight/android/logger/UpsightLogger;)V

    return-object v0
.end method
