.class Lcom/upsight/android/internal/persistence/subscription/SubscriptionHandlerVisitor;
.super Ljava/lang/Object;
.source "SubscriptionHandlerVisitor.java"

# interfaces
.implements Lcom/upsight/android/internal/persistence/subscription/ClassSubscriptionVisitor;


# instance fields
.field private final mHandlers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/upsight/android/internal/persistence/subscription/SubscriptionHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mTarget:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/internal/persistence/subscription/SubscriptionHandlerVisitor;->mHandlers:Ljava/util/Set;

    .line 25
    iput-object p1, p0, Lcom/upsight/android/internal/persistence/subscription/SubscriptionHandlerVisitor;->mTarget:Ljava/lang/Object;

    .line 26
    return-void
.end method


# virtual methods
.method public getHandlers()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/upsight/android/internal/persistence/subscription/SubscriptionHandler;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/upsight/android/internal/persistence/subscription/SubscriptionHandlerVisitor;->mHandlers:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public visitCreatedSubscription(Ljava/lang/reflect/Method;Ljava/lang/Class;)V
    .locals 6
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Lcom/upsight/android/persistence/annotation/UpsightStorableType;

    invoke-virtual {p2, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/persistence/annotation/UpsightStorableType;

    .line 31
    .local v0, "storableType":Lcom/upsight/android/persistence/annotation/UpsightStorableType;
    if-eqz v0, :cond_0

    .line 32
    iget-object v1, p0, Lcom/upsight/android/internal/persistence/subscription/SubscriptionHandlerVisitor;->mHandlers:Ljava/util/Set;

    new-instance v2, Lcom/upsight/android/internal/persistence/subscription/SubscriptionHandler;

    iget-object v3, p0, Lcom/upsight/android/internal/persistence/subscription/SubscriptionHandlerVisitor;->mTarget:Ljava/lang/Object;

    sget-object v4, Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent$Action;->Created:Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent$Action;

    invoke-interface {v0}, Lcom/upsight/android/persistence/annotation/UpsightStorableType;->value()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, p1, v4, v5}, Lcom/upsight/android/internal/persistence/subscription/SubscriptionHandler;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent$Action;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_0
    return-void
.end method

.method public visitRemovedSubscription(Ljava/lang/reflect/Method;Ljava/lang/Class;)V
    .locals 6
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Lcom/upsight/android/persistence/annotation/UpsightStorableType;

    invoke-virtual {p2, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/persistence/annotation/UpsightStorableType;

    .line 47
    .local v0, "storableType":Lcom/upsight/android/persistence/annotation/UpsightStorableType;
    if-eqz v0, :cond_0

    .line 48
    iget-object v1, p0, Lcom/upsight/android/internal/persistence/subscription/SubscriptionHandlerVisitor;->mHandlers:Ljava/util/Set;

    new-instance v2, Lcom/upsight/android/internal/persistence/subscription/SubscriptionHandler;

    iget-object v3, p0, Lcom/upsight/android/internal/persistence/subscription/SubscriptionHandlerVisitor;->mTarget:Ljava/lang/Object;

    sget-object v4, Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent$Action;->Removed:Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent$Action;

    invoke-interface {v0}, Lcom/upsight/android/persistence/annotation/UpsightStorableType;->value()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, p1, v4, v5}, Lcom/upsight/android/internal/persistence/subscription/SubscriptionHandler;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent$Action;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_0
    return-void
.end method

.method public visitUpdatedSubscription(Ljava/lang/reflect/Method;Ljava/lang/Class;)V
    .locals 6
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Lcom/upsight/android/persistence/annotation/UpsightStorableType;

    invoke-virtual {p2, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/persistence/annotation/UpsightStorableType;

    .line 39
    .local v0, "storableType":Lcom/upsight/android/persistence/annotation/UpsightStorableType;
    if-eqz v0, :cond_0

    .line 40
    iget-object v1, p0, Lcom/upsight/android/internal/persistence/subscription/SubscriptionHandlerVisitor;->mHandlers:Ljava/util/Set;

    new-instance v2, Lcom/upsight/android/internal/persistence/subscription/SubscriptionHandler;

    iget-object v3, p0, Lcom/upsight/android/internal/persistence/subscription/SubscriptionHandlerVisitor;->mTarget:Ljava/lang/Object;

    sget-object v4, Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent$Action;->Updated:Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent$Action;

    invoke-interface {v0}, Lcom/upsight/android/persistence/annotation/UpsightStorableType;->value()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, p1, v4, v5}, Lcom/upsight/android/internal/persistence/subscription/SubscriptionHandler;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent$Action;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_0
    return-void
.end method
