.class public final Lcom/upsight/android/internal/CoreModule;
.super Ljava/lang/Object;
.source "CoreModule.java"


# annotations
.annotation runtime Ldagger/Module;
    includes = {
        Lcom/upsight/android/internal/UpsightContextModule;,
        Lcom/upsight/android/internal/ContextModule;,
        Lcom/upsight/android/internal/PropertiesModule;,
        Lcom/upsight/android/internal/ObjectMapperModule;,
        Lcom/upsight/android/internal/SchedulersModule;,
        Lcom/upsight/android/internal/persistence/storable/StorableModule;,
        Lcom/upsight/android/internal/persistence/PersistenceModule;,
        Lcom/upsight/android/internal/logger/LoggerModule;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
