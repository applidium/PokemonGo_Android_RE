.class public final Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule_ProvideQueueBuilderFactory;
.super Ljava/lang/Object;
.source "DeliveryModule_ProvideQueueBuilderFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory",
        "<",
        "Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final clockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/session/Clock;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule;

.field private final responseParserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser;",
            ">;"
        }
    .end annotation
.end field

.field private final retryExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lrx/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field private final sendExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lrx/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field private final signatureVerifierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/delivery/SignatureVerifier;",
            ">;"
        }
    .end annotation
.end field

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
    .line 10
    const-class v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule_ProvideQueueBuilderFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule_ProvideQueueBuilderFactory;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1
    .param p1, "module"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/UpsightContext;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/session/Clock;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lrx/Scheduler;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lrx/Scheduler;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/delivery/SignatureVerifier;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p2, "upsightProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/UpsightContext;>;"
    .local p3, "clockProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/session/Clock;>;"
    .local p4, "retryExecutorProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lrx/Scheduler;>;"
    .local p5, "sendExecutorProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lrx/Scheduler;>;"
    .local p6, "signatureVerifierProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/dispatcher/delivery/SignatureVerifier;>;"
    .local p7, "responseParserProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-boolean v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule_ProvideQueueBuilderFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 22
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule_ProvideQueueBuilderFactory;->module:Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule;

    .line 23
    sget-boolean v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule_ProvideQueueBuilderFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 24
    :cond_1
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule_ProvideQueueBuilderFactory;->upsightProvider:Ljavax/inject/Provider;

    .line 25
    sget-boolean v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule_ProvideQueueBuilderFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 26
    :cond_2
    iput-object p3, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule_ProvideQueueBuilderFactory;->clockProvider:Ljavax/inject/Provider;

    .line 27
    sget-boolean v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule_ProvideQueueBuilderFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 28
    :cond_3
    iput-object p4, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule_ProvideQueueBuilderFactory;->retryExecutorProvider:Ljavax/inject/Provider;

    .line 29
    sget-boolean v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule_ProvideQueueBuilderFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    if-nez p5, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 30
    :cond_4
    iput-object p5, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule_ProvideQueueBuilderFactory;->sendExecutorProvider:Ljavax/inject/Provider;

    .line 31
    sget-boolean v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule_ProvideQueueBuilderFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_5

    if-nez p6, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 32
    :cond_5
    iput-object p6, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule_ProvideQueueBuilderFactory;->signatureVerifierProvider:Ljavax/inject/Provider;

    .line 33
    sget-boolean v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule_ProvideQueueBuilderFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_6

    if-nez p7, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 34
    :cond_6
    iput-object p7, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule_ProvideQueueBuilderFactory;->responseParserProvider:Ljavax/inject/Provider;

    .line 35
    return-void
.end method

.method public static create(Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 8
    .param p0, "module"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/UpsightContext;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/session/Clock;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lrx/Scheduler;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lrx/Scheduler;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/delivery/SignatureVerifier;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser;",
            ">;)",
            "Ldagger/internal/Factory",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "upsightProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/UpsightContext;>;"
    .local p2, "clockProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/session/Clock;>;"
    .local p3, "retryExecutorProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lrx/Scheduler;>;"
    .local p4, "sendExecutorProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lrx/Scheduler;>;"
    .local p5, "signatureVerifierProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/dispatcher/delivery/SignatureVerifier;>;"
    .local p6, "responseParserProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser;>;"
    new-instance v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule_ProvideQueueBuilderFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule_ProvideQueueBuilderFactory;-><init>(Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;
    .locals 8

    .prologue
    .line 39
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule_ProvideQueueBuilderFactory;->module:Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule;

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule_ProvideQueueBuilderFactory;->upsightProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/UpsightContext;

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule_ProvideQueueBuilderFactory;->clockProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/upsight/android/analytics/internal/session/Clock;

    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule_ProvideQueueBuilderFactory;->retryExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrx/Scheduler;

    iget-object v4, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule_ProvideQueueBuilderFactory;->sendExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lrx/Scheduler;

    iget-object v5, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule_ProvideQueueBuilderFactory;->signatureVerifierProvider:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/upsight/android/analytics/internal/dispatcher/delivery/SignatureVerifier;

    iget-object v6, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule_ProvideQueueBuilderFactory;->responseParserProvider:Ljavax/inject/Provider;

    invoke-virtual/range {v0 .. v6}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule;->provideQueueBuilder(Lcom/upsight/android/UpsightContext;Lcom/upsight/android/analytics/internal/session/Clock;Lrx/Scheduler;Lrx/Scheduler;Lcom/upsight/android/analytics/internal/dispatcher/delivery/SignatureVerifier;Ljavax/inject/Provider;)Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;

    move-result-object v7

    .line 40
    .local v7, "provided":Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;
    if-nez v7, :cond_0

    .line 41
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    return-object v7
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule_ProvideQueueBuilderFactory;->get()Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;

    move-result-object v0

    return-object v0
.end method
