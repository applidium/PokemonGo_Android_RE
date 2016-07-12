.class public final Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule;
.super Ljava/lang/Object;
.source "DeliveryModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provideQueueBuilder(Lcom/upsight/android/UpsightContext;Lcom/upsight/android/analytics/internal/session/Clock;Lrx/Scheduler;Lrx/Scheduler;Lcom/upsight/android/analytics/internal/dispatcher/delivery/SignatureVerifier;Ljavax/inject/Provider;)Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;
    .locals 9
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p2, "clock"    # Lcom/upsight/android/analytics/internal/session/Clock;
    .param p3, "retryExecutor"    # Lrx/Scheduler;
        .annotation runtime Ljavax/inject/Named;
            value = "dispatcher-threadpool"
        .end annotation
    .end param
    .param p4, "sendExecutor"    # Lrx/Scheduler;
        .annotation runtime Ljavax/inject/Named;
            value = "dispatcher-batching"
        .end annotation
    .end param
    .param p5, "signatureVerifier"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/SignatureVerifier;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/UpsightContext;",
            "Lcom/upsight/android/analytics/internal/session/Clock;",
            "Lrx/Scheduler;",
            "Lrx/Scheduler;",
            "Lcom/upsight/android/analytics/internal/dispatcher/delivery/SignatureVerifier;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser;",
            ">;)",
            "Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 32
    .local p6, "responseParserProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser;>;"
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getCoreComponent()Lcom/upsight/android/UpsightCoreComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/upsight/android/UpsightCoreComponent;->objectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v2

    .line 33
    .local v2, "objectMapper":Lcom/fasterxml/jackson/databind/ObjectMapper;
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v4

    .line 35
    .local v4, "logger":Lcom/upsight/android/logger/UpsightLogger;
    new-instance v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;-><init>(Lcom/upsight/android/UpsightContext;Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/upsight/android/analytics/internal/session/Clock;Lcom/upsight/android/logger/UpsightLogger;Lrx/Scheduler;Lrx/Scheduler;Lcom/upsight/android/analytics/internal/dispatcher/delivery/SignatureVerifier;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public provideResponseVerifier(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/analytics/internal/dispatcher/delivery/SignatureVerifier;
    .locals 1
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 42
    new-instance v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BouncySignatureVerifier;

    invoke-direct {v0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BouncySignatureVerifier;-><init>(Lcom/upsight/android/UpsightContext;)V

    return-object v0
.end method
