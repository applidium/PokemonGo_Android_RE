.class public final Lcom/upsight/android/analytics/internal/ConfigObjectMapperModule;
.super Ljava/lang/Object;
.source "ConfigObjectMapperModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# static fields
.field public static final MAPPER_CONFIG:Ljava/lang/String; = "config-mapper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provideConfigMapper(Lcom/upsight/android/UpsightContext;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 1
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "config-mapper"
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 25
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getCoreComponent()Lcom/upsight/android/UpsightCoreComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/upsight/android/UpsightCoreComponent;->objectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    return-object v0
.end method
