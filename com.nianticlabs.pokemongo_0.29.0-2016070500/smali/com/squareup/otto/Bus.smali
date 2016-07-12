.class public Lcom/squareup/otto/Bus;
.super Ljava/lang/Object;
.source "Bus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/otto/Bus$EventWithHandler;
    }
.end annotation


# static fields
.field public static final DEFAULT_IDENTIFIER:Ljava/lang/String; = "default"


# instance fields
.field private final enforcer:Lcom/squareup/otto/ThreadEnforcer;

.field private final eventsToDispatch:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/squareup/otto/Bus$EventWithHandler;",
            ">;>;"
        }
    .end annotation
.end field

.field private final flattenHierarchyCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final handlerFinder:Lcom/squareup/otto/HandlerFinder;

.field private final handlersByType:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Set",
            "<",
            "Lcom/squareup/otto/EventHandler;",
            ">;>;"
        }
    .end annotation
.end field

.field private final identifier:Ljava/lang/String;

.field private final isDispatching:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final producersByType:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/squareup/otto/EventProducer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 124
    const-string v0, "default"

    invoke-direct {p0, v0}, Lcom/squareup/otto/Bus;-><init>(Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Lcom/squareup/otto/ThreadEnforcer;)V
    .locals 1
    .param p1, "enforcer"    # Lcom/squareup/otto/ThreadEnforcer;

    .prologue
    .line 142
    const-string v0, "default"

    invoke-direct {p0, p1, v0}, Lcom/squareup/otto/Bus;-><init>(Lcom/squareup/otto/ThreadEnforcer;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public constructor <init>(Lcom/squareup/otto/ThreadEnforcer;Ljava/lang/String;)V
    .locals 1
    .param p1, "enforcer"    # Lcom/squareup/otto/ThreadEnforcer;
    .param p2, "identifier"    # Ljava/lang/String;

    .prologue
    .line 152
    sget-object v0, Lcom/squareup/otto/HandlerFinder;->ANNOTATED:Lcom/squareup/otto/HandlerFinder;

    invoke-direct {p0, p1, p2, v0}, Lcom/squareup/otto/Bus;-><init>(Lcom/squareup/otto/ThreadEnforcer;Ljava/lang/String;Lcom/squareup/otto/HandlerFinder;)V

    .line 153
    return-void
.end method

.method constructor <init>(Lcom/squareup/otto/ThreadEnforcer;Ljava/lang/String;Lcom/squareup/otto/HandlerFinder;)V
    .locals 1
    .param p1, "enforcer"    # Lcom/squareup/otto/ThreadEnforcer;
    .param p2, "identifier"    # Ljava/lang/String;
    .param p3, "handlerFinder"    # Lcom/squareup/otto/HandlerFinder;

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/otto/Bus;->handlersByType:Ljava/util/concurrent/ConcurrentMap;

    .line 95
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/otto/Bus;->producersByType:Ljava/util/concurrent/ConcurrentMap;

    .line 108
    new-instance v0, Lcom/squareup/otto/Bus$1;

    invoke-direct {v0, p0}, Lcom/squareup/otto/Bus$1;-><init>(Lcom/squareup/otto/Bus;)V

    iput-object v0, p0, Lcom/squareup/otto/Bus;->eventsToDispatch:Ljava/lang/ThreadLocal;

    .line 116
    new-instance v0, Lcom/squareup/otto/Bus$2;

    invoke-direct {v0, p0}, Lcom/squareup/otto/Bus$2;-><init>(Lcom/squareup/otto/Bus;)V

    iput-object v0, p0, Lcom/squareup/otto/Bus;->isDispatching:Ljava/lang/ThreadLocal;

    .line 466
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/otto/Bus;->flattenHierarchyCache:Ljava/util/concurrent/ConcurrentMap;

    .line 163
    iput-object p1, p0, Lcom/squareup/otto/Bus;->enforcer:Lcom/squareup/otto/ThreadEnforcer;

    .line 164
    iput-object p2, p0, Lcom/squareup/otto/Bus;->identifier:Ljava/lang/String;

    .line 165
    iput-object p3, p0, Lcom/squareup/otto/Bus;->handlerFinder:Lcom/squareup/otto/HandlerFinder;

    .line 166
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 133
    sget-object v0, Lcom/squareup/otto/ThreadEnforcer;->MAIN:Lcom/squareup/otto/ThreadEnforcer;

    invoke-direct {p0, v0, p1}, Lcom/squareup/otto/Bus;-><init>(Lcom/squareup/otto/ThreadEnforcer;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method private dispatchProducerResultToHandler(Lcom/squareup/otto/EventHandler;Lcom/squareup/otto/EventProducer;)V
    .locals 4
    .param p1, "handler"    # Lcom/squareup/otto/EventHandler;
    .param p2, "producer"    # Lcom/squareup/otto/EventProducer;

    .prologue
    .line 244
    const/4 v1, 0x0

    .line 246
    .local v1, "event":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p2}, Lcom/squareup/otto/EventProducer;->produceEvent()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 250
    .end local v1    # "event":Ljava/lang/Object;
    :goto_0
    if-nez v1, :cond_0

    .line 254
    :goto_1
    return-void

    .line 247
    .restart local v1    # "event":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Producer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " threw an exception."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/squareup/otto/Bus;->throwRuntimeException(Ljava/lang/String;Ljava/lang/reflect/InvocationTargetException;)V

    goto :goto_0

    .line 253
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v1    # "event":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/squareup/otto/Bus;->dispatch(Ljava/lang/Object;Lcom/squareup/otto/EventHandler;)V

    goto :goto_1
.end method

.method private getClassesFor(Ljava/lang/Class;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 435
    .local p1, "concreteClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 436
    .local v3, "parents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 438
    .local v0, "classes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 441
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 442
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 444
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    .line 445
    .local v2, "parent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_0

    .line 446
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 449
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "parent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    return-object v0
.end method

.method private static throwRuntimeException(Ljava/lang/String;Ljava/lang/reflect/InvocationTargetException;)V
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/reflect/InvocationTargetException;

    .prologue
    .line 458
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 459
    .local v0, "cause":Ljava/lang/Throwable;
    if-eqz v0, :cond_0

    .line 460
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 462
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected dispatch(Ljava/lang/Object;Lcom/squareup/otto/EventHandler;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/Object;
    .param p2, "wrapper"    # Lcom/squareup/otto/EventHandler;

    .prologue
    .line 385
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/squareup/otto/EventHandler;->handleEvent(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    :goto_0
    return-void

    .line 386
    :catch_0
    move-exception v0

    .line 387
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not dispatch event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 388
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to handler "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 387
    invoke-static {v1, v0}, Lcom/squareup/otto/Bus;->throwRuntimeException(Ljava/lang/String;Ljava/lang/reflect/InvocationTargetException;)V

    goto :goto_0
.end method

.method protected dispatchQueuedEvents()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 355
    iget-object v1, p0, Lcom/squareup/otto/Bus;->isDispatching:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 374
    :goto_0
    return-void

    .line 359
    :cond_0
    iget-object v1, p0, Lcom/squareup/otto/Bus;->isDispatching:Ljava/lang/ThreadLocal;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 362
    :cond_1
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/squareup/otto/Bus;->eventsToDispatch:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/otto/Bus$EventWithHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    .local v0, "eventWithHandler":Lcom/squareup/otto/Bus$EventWithHandler;
    if-nez v0, :cond_2

    .line 372
    iget-object v1, p0, Lcom/squareup/otto/Bus;->isDispatching:Ljava/lang/ThreadLocal;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 367
    :cond_2
    :try_start_1
    iget-object v1, v0, Lcom/squareup/otto/Bus$EventWithHandler;->handler:Lcom/squareup/otto/EventHandler;

    invoke-virtual {v1}, Lcom/squareup/otto/EventHandler;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 368
    iget-object v1, v0, Lcom/squareup/otto/Bus$EventWithHandler;->event:Ljava/lang/Object;

    iget-object v2, v0, Lcom/squareup/otto/Bus$EventWithHandler;->handler:Lcom/squareup/otto/EventHandler;

    invoke-virtual {p0, v1, v2}, Lcom/squareup/otto/Bus;->dispatch(Ljava/lang/Object;Lcom/squareup/otto/EventHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 372
    .end local v0    # "eventWithHandler":Lcom/squareup/otto/Bus$EventWithHandler;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/squareup/otto/Bus;->isDispatching:Ljava/lang/ThreadLocal;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw v1
.end method

.method protected enqueueEvent(Ljava/lang/Object;Lcom/squareup/otto/EventHandler;)V
    .locals 2
    .param p1, "event"    # Ljava/lang/Object;
    .param p2, "handler"    # Lcom/squareup/otto/EventHandler;

    .prologue
    .line 345
    iget-object v0, p0, Lcom/squareup/otto/Bus;->eventsToDispatch:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/squareup/otto/Bus$EventWithHandler;

    invoke-direct {v1, p1, p2}, Lcom/squareup/otto/Bus$EventWithHandler;-><init>(Ljava/lang/Object;Lcom/squareup/otto/EventHandler;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 346
    return-void
.end method

.method flattenHierarchy(Ljava/lang/Class;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 422
    .local p1, "concreteClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Lcom/squareup/otto/Bus;->flattenHierarchyCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 423
    .local v0, "classes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    if-nez v0, :cond_0

    .line 424
    invoke-direct {p0, p1}, Lcom/squareup/otto/Bus;->getClassesFor(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v1

    .line 425
    .local v1, "classesCreation":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    iget-object v2, p0, Lcom/squareup/otto/Bus;->flattenHierarchyCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "classes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    check-cast v0, Ljava/util/Set;

    .line 426
    .restart local v0    # "classes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    if-nez v0, :cond_0

    .line 427
    move-object v0, v1

    .line 431
    .end local v1    # "classesCreation":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    :cond_0
    return-object v0
.end method

.method getHandlersForEventType(Ljava/lang/Class;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Set",
            "<",
            "Lcom/squareup/otto/EventHandler;",
            ">;"
        }
    .end annotation

    .prologue
    .line 411
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/squareup/otto/Bus;->handlersByType:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method getProducerForEventType(Ljava/lang/Class;)Lcom/squareup/otto/EventProducer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/squareup/otto/EventProducer;"
        }
    .end annotation

    .prologue
    .line 400
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/squareup/otto/Bus;->producersByType:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/otto/EventProducer;

    return-object v0
.end method

.method public post(Ljava/lang/Object;)V
    .locals 8
    .param p1, "event"    # Ljava/lang/Object;

    .prologue
    .line 314
    if-nez p1, :cond_0

    .line 315
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "Event to post must not be null."

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 317
    :cond_0
    iget-object v5, p0, Lcom/squareup/otto/Bus;->enforcer:Lcom/squareup/otto/ThreadEnforcer;

    invoke-interface {v5, p0}, Lcom/squareup/otto/ThreadEnforcer;->enforce(Lcom/squareup/otto/Bus;)V

    .line 319
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/squareup/otto/Bus;->flattenHierarchy(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    .line 321
    .local v0, "dispatchTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    const/4 v1, 0x0

    .line 322
    .local v1, "dispatched":Z
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 323
    .local v2, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, v2}, Lcom/squareup/otto/Bus;->getHandlersForEventType(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v4

    .line 325
    .local v4, "wrappers":Ljava/util/Set;, "Ljava/util/Set<Lcom/squareup/otto/EventHandler;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 326
    const/4 v1, 0x1

    .line 327
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/squareup/otto/EventHandler;

    .line 328
    .local v3, "wrapper":Lcom/squareup/otto/EventHandler;
    invoke-virtual {p0, p1, v3}, Lcom/squareup/otto/Bus;->enqueueEvent(Ljava/lang/Object;Lcom/squareup/otto/EventHandler;)V

    goto :goto_0

    .line 333
    .end local v2    # "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "wrapper":Lcom/squareup/otto/EventHandler;
    .end local v4    # "wrappers":Ljava/util/Set;, "Ljava/util/Set<Lcom/squareup/otto/EventHandler;>;"
    :cond_2
    if-nez v1, :cond_3

    instance-of v5, p1, Lcom/squareup/otto/DeadEvent;

    if-nez v5, :cond_3

    .line 334
    new-instance v5, Lcom/squareup/otto/DeadEvent;

    invoke-direct {v5, p0, p1}, Lcom/squareup/otto/DeadEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v5}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 337
    :cond_3
    invoke-virtual {p0}, Lcom/squareup/otto/Bus;->dispatchQueuedEvents()V

    .line 338
    return-void
.end method

.method public register(Ljava/lang/Object;)V
    .locals 14
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 185
    if-nez p1, :cond_0

    .line 186
    new-instance v11, Ljava/lang/NullPointerException;

    const-string v12, "Object to register must not be null."

    invoke-direct {v11, v12}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 188
    :cond_0
    iget-object v11, p0, Lcom/squareup/otto/Bus;->enforcer:Lcom/squareup/otto/ThreadEnforcer;

    invoke-interface {v11, p0}, Lcom/squareup/otto/ThreadEnforcer;->enforce(Lcom/squareup/otto/Bus;)V

    .line 190
    iget-object v11, p0, Lcom/squareup/otto/Bus;->handlerFinder:Lcom/squareup/otto/HandlerFinder;

    invoke-interface {v11, p1}, Lcom/squareup/otto/HandlerFinder;->findAllProducers(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    .line 191
    .local v4, "foundProducers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Lcom/squareup/otto/EventProducer;>;"
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Class;

    .line 193
    .local v10, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/squareup/otto/EventProducer;

    .line 194
    .local v9, "producer":Lcom/squareup/otto/EventProducer;
    iget-object v12, p0, Lcom/squareup/otto/Bus;->producersByType:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v12, v10, v9}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/squareup/otto/EventProducer;

    .line 196
    .local v8, "previousProducer":Lcom/squareup/otto/EventProducer;
    if-eqz v8, :cond_2

    .line 197
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Producer method for type "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " found on type "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v9, Lcom/squareup/otto/EventProducer;->target:Ljava/lang/Object;

    .line 198
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", but already registered by type "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v8, Lcom/squareup/otto/EventProducer;->target:Ljava/lang/Object;

    .line 199
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 201
    :cond_2
    iget-object v12, p0, Lcom/squareup/otto/Bus;->handlersByType:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v12, v10}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 202
    .local v6, "handlers":Ljava/util/Set;, "Ljava/util/Set<Lcom/squareup/otto/EventHandler;>;"
    if-eqz v6, :cond_1

    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1

    .line 203
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/squareup/otto/EventHandler;

    .line 204
    .local v5, "handler":Lcom/squareup/otto/EventHandler;
    invoke-direct {p0, v5, v9}, Lcom/squareup/otto/Bus;->dispatchProducerResultToHandler(Lcom/squareup/otto/EventHandler;Lcom/squareup/otto/EventProducer;)V

    goto :goto_0

    .line 209
    .end local v5    # "handler":Lcom/squareup/otto/EventHandler;
    .end local v6    # "handlers":Ljava/util/Set;, "Ljava/util/Set<Lcom/squareup/otto/EventHandler;>;"
    .end local v8    # "previousProducer":Lcom/squareup/otto/EventProducer;
    .end local v9    # "producer":Lcom/squareup/otto/EventProducer;
    .end local v10    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    iget-object v11, p0, Lcom/squareup/otto/Bus;->handlerFinder:Lcom/squareup/otto/HandlerFinder;

    invoke-interface {v11, p1}, Lcom/squareup/otto/HandlerFinder;->findAllSubscribers(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    .line 210
    .local v3, "foundHandlersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/util/Set<Lcom/squareup/otto/EventHandler;>;>;"
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Class;

    .line 211
    .restart local v10    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v12, p0, Lcom/squareup/otto/Bus;->handlersByType:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v12, v10}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 212
    .restart local v6    # "handlers":Ljava/util/Set;, "Ljava/util/Set<Lcom/squareup/otto/EventHandler;>;"
    if-nez v6, :cond_5

    .line 214
    new-instance v7, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v7}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 215
    .local v7, "handlersCreation":Ljava/util/Set;, "Ljava/util/Set<Lcom/squareup/otto/EventHandler;>;"
    iget-object v12, p0, Lcom/squareup/otto/Bus;->handlersByType:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v12, v10, v7}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "handlers":Ljava/util/Set;, "Ljava/util/Set<Lcom/squareup/otto/EventHandler;>;"
    check-cast v6, Ljava/util/Set;

    .line 216
    .restart local v6    # "handlers":Ljava/util/Set;, "Ljava/util/Set<Lcom/squareup/otto/EventHandler;>;"
    if-nez v6, :cond_5

    .line 217
    move-object v6, v7

    .line 220
    .end local v7    # "handlersCreation":Ljava/util/Set;, "Ljava/util/Set<Lcom/squareup/otto/EventHandler;>;"
    :cond_5
    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 221
    .local v2, "foundHandlers":Ljava/util/Set;, "Ljava/util/Set<Lcom/squareup/otto/EventHandler;>;"
    invoke-interface {v6, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 222
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Object already registered."

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 226
    .end local v2    # "foundHandlers":Ljava/util/Set;, "Ljava/util/Set<Lcom/squareup/otto/EventHandler;>;"
    .end local v6    # "handlers":Ljava/util/Set;, "Ljava/util/Set<Lcom/squareup/otto/EventHandler;>;"
    .end local v10    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 227
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/util/Set<Lcom/squareup/otto/EventHandler;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Class;

    .line 228
    .restart local v10    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v12, p0, Lcom/squareup/otto/Bus;->producersByType:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v12, v10}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/squareup/otto/EventProducer;

    .line 229
    .restart local v9    # "producer":Lcom/squareup/otto/EventProducer;
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Lcom/squareup/otto/EventProducer;->isValid()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 230
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 231
    .restart local v2    # "foundHandlers":Ljava/util/Set;, "Ljava/util/Set<Lcom/squareup/otto/EventHandler;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_8
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/otto/EventHandler;

    .line 232
    .local v1, "foundHandler":Lcom/squareup/otto/EventHandler;
    invoke-virtual {v9}, Lcom/squareup/otto/EventProducer;->isValid()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 235
    invoke-virtual {v1}, Lcom/squareup/otto/EventHandler;->isValid()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 236
    invoke-direct {p0, v1, v9}, Lcom/squareup/otto/Bus;->dispatchProducerResultToHandler(Lcom/squareup/otto/EventHandler;Lcom/squareup/otto/EventProducer;)V

    goto :goto_1

    .line 241
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/util/Set<Lcom/squareup/otto/EventHandler;>;>;"
    .end local v1    # "foundHandler":Lcom/squareup/otto/EventHandler;
    .end local v2    # "foundHandlers":Ljava/util/Set;, "Ljava/util/Set<Lcom/squareup/otto/EventHandler;>;"
    .end local v9    # "producer":Lcom/squareup/otto/EventProducer;
    .end local v10    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_9
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Bus \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/otto/Bus;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregister(Ljava/lang/Object;)V
    .locals 13
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 264
    if-nez p1, :cond_0

    .line 265
    new-instance v10, Ljava/lang/NullPointerException;

    const-string v11, "Object to unregister must not be null."

    invoke-direct {v10, v11}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 267
    :cond_0
    iget-object v10, p0, Lcom/squareup/otto/Bus;->enforcer:Lcom/squareup/otto/ThreadEnforcer;

    invoke-interface {v10, p0}, Lcom/squareup/otto/ThreadEnforcer;->enforce(Lcom/squareup/otto/Bus;)V

    .line 269
    iget-object v10, p0, Lcom/squareup/otto/Bus;->handlerFinder:Lcom/squareup/otto/HandlerFinder;

    invoke-interface {v10, p1}, Lcom/squareup/otto/HandlerFinder;->findAllProducers(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v8

    .line 270
    .local v8, "producersInListener":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Lcom/squareup/otto/EventProducer;>;"
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 271
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Lcom/squareup/otto/EventProducer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    .line 272
    .local v6, "key":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, v6}, Lcom/squareup/otto/Bus;->getProducerForEventType(Ljava/lang/Class;)Lcom/squareup/otto/EventProducer;

    move-result-object v7

    .line 273
    .local v7, "producer":Lcom/squareup/otto/EventProducer;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/squareup/otto/EventProducer;

    .line 275
    .local v9, "value":Lcom/squareup/otto/EventProducer;
    if-eqz v9, :cond_1

    invoke-virtual {v9, v7}, Lcom/squareup/otto/EventProducer;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 276
    :cond_1
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Missing event producer for an annotated method. Is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 277
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " registered?"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 280
    :cond_2
    iget-object v10, p0, Lcom/squareup/otto/Bus;->producersByType:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v10, v6}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/squareup/otto/EventProducer;

    invoke-virtual {v10}, Lcom/squareup/otto/EventProducer;->invalidate()V

    goto :goto_0

    .line 283
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Lcom/squareup/otto/EventProducer;>;"
    .end local v6    # "key":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "producer":Lcom/squareup/otto/EventProducer;
    .end local v9    # "value":Lcom/squareup/otto/EventProducer;
    :cond_3
    iget-object v10, p0, Lcom/squareup/otto/Bus;->handlerFinder:Lcom/squareup/otto/HandlerFinder;

    invoke-interface {v10, p1}, Lcom/squareup/otto/HandlerFinder;->findAllSubscribers(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    .line 284
    .local v5, "handlersInListener":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/util/Set<Lcom/squareup/otto/EventHandler;>;>;"
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 285
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/util/Set<Lcom/squareup/otto/EventHandler;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Class;

    invoke-virtual {p0, v10}, Lcom/squareup/otto/Bus;->getHandlersForEventType(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    .line 286
    .local v0, "currentHandlers":Ljava/util/Set;, "Ljava/util/Set<Lcom/squareup/otto/EventHandler;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 288
    .local v3, "eventMethodsInListener":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/squareup/otto/EventHandler;>;"
    if-eqz v0, :cond_4

    invoke-interface {v0, v3}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 289
    :cond_4
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Missing event handler for an annotated method. Is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 290
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " registered?"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 294
    :cond_5
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_6
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/squareup/otto/EventHandler;

    .line 295
    .local v4, "handler":Lcom/squareup/otto/EventHandler;
    invoke-interface {v3, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 296
    invoke-virtual {v4}, Lcom/squareup/otto/EventHandler;->invalidate()V

    goto :goto_2

    .line 299
    .end local v4    # "handler":Lcom/squareup/otto/EventHandler;
    :cond_7
    invoke-interface {v0, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 301
    .end local v0    # "currentHandlers":Ljava/util/Set;, "Ljava/util/Set<Lcom/squareup/otto/EventHandler;>;"
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/util/Set<Lcom/squareup/otto/EventHandler;>;>;"
    .end local v3    # "eventMethodsInListener":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/squareup/otto/EventHandler;>;"
    :cond_8
    return-void
.end method
