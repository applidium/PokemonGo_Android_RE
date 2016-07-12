.class Lcom/upsight/android/internal/persistence/subscription/SubscriptionHandler;
.super Ljava/lang/Object;
.source "SubscriptionHandler.java"


# instance fields
.field private final mAction:Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent$Action;

.field private final mMethod:Ljava/lang/reflect/Method;

.field private final mTarget:Ljava/lang/Object;

.field private final mType:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Method;Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent$Action;Ljava/lang/String;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "action"    # Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent$Action;
    .param p4, "type"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/upsight/android/internal/persistence/subscription/SubscriptionHandler;->mTarget:Ljava/lang/Object;

    .line 33
    iput-object p2, p0, Lcom/upsight/android/internal/persistence/subscription/SubscriptionHandler;->mMethod:Ljava/lang/reflect/Method;

    .line 34
    iput-object p3, p0, Lcom/upsight/android/internal/persistence/subscription/SubscriptionHandler;->mAction:Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent$Action;

    .line 35
    iput-object p4, p0, Lcom/upsight/android/internal/persistence/subscription/SubscriptionHandler;->mType:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public handle(Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent;)V
    .locals 8
    .param p1, "event"    # Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/upsight/android/UpsightException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 44
    :try_start_0
    iget-object v1, p0, Lcom/upsight/android/internal/persistence/subscription/SubscriptionHandler;->mMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/upsight/android/internal/persistence/subscription/SubscriptionHandler;->mTarget:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent;->source:Ljava/lang/Object;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    new-instance v1, Lcom/upsight/android/UpsightException;

    const-string v2, "Failed to invoke subscription method %s.%s: "

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/upsight/android/internal/persistence/subscription/SubscriptionHandler;->mTarget:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/upsight/android/internal/persistence/subscription/SubscriptionHandler;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-direct {v1, v0, v2, v3}, Lcom/upsight/android/UpsightException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 45
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public matches(Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent$Action;Ljava/lang/String;)Z
    .locals 1
    .param p1, "action"    # Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent$Action;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/upsight/android/internal/persistence/subscription/SubscriptionHandler;->mAction:Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent$Action;

    invoke-virtual {v0, p1}, Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent$Action;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/upsight/android/internal/persistence/subscription/SubscriptionHandler;->mType:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
