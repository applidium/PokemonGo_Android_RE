.class public final Lcom/upsight/android/internal/logger/LoggerModule;
.super Ljava/lang/Object;
.source "LoggerModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method provideUpsightLogger(Lcom/upsight/android/persistence/UpsightDataStore;Lcom/upsight/android/internal/logger/LogWriter;)Lcom/upsight/android/logger/UpsightLogger;
    .locals 1
    .param p1, "dataStore"    # Lcom/upsight/android/persistence/UpsightDataStore;
    .param p2, "writer"    # Lcom/upsight/android/internal/logger/LogWriter;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 22
    invoke-static {p1, p2}, Lcom/upsight/android/internal/logger/Logger;->create(Lcom/upsight/android/persistence/UpsightDataStore;Lcom/upsight/android/internal/logger/LogWriter;)Lcom/upsight/android/internal/logger/Logger;

    move-result-object v0

    return-object v0
.end method
