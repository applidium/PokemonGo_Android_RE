.class public Lcom/crittercism/app/Crittercism;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static _logCrashException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "stack"    # Ljava/lang/String;

    .prologue
    .line 492
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 493
    :cond_0
    :try_start_0
    const-string v0, "Unable to handle application crash. Missing parameters"

    invoke-static {v0}, Lcrittercism/android/dx;->b(Ljava/lang/String;)V

    .line 502
    :goto_0
    return-void

    .line 496
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_logCrashException(msg, stack) called: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcrittercism/android/dx;->b()V

    .line 497
    new-instance v0, Lcom/crittercism/integrations/PluginException;

    invoke-direct {v0, p0, p1}, Lcom/crittercism/integrations/PluginException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->_logCrashException(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 499
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static _logCrashException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "stack"    # Ljava/lang/String;

    .prologue
    .line 478
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 479
    :cond_0
    :try_start_0
    const-string v0, "Unable to handle application crash. Missing parameters"

    invoke-static {v0}, Lcrittercism/android/dx;->b(Ljava/lang/String;)V

    .line 488
    :goto_0
    return-void

    .line 482
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_logCrashException(name, msg, stack) called: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcrittercism/android/dx;->b()V

    .line 483
    new-instance v0, Lcom/crittercism/integrations/PluginException;

    invoke-direct {v0, p0, p1, p2}, Lcom/crittercism/integrations/PluginException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->_logCrashException(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 485
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static _logCrashException(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I)V
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "classStackElems"    # [Ljava/lang/String;
    .param p3, "methodStackElems"    # [Ljava/lang/String;
    .param p4, "fileStackElems"    # [Ljava/lang/String;
    .param p5, "lineNumberStackElems"    # [I

    .prologue
    .line 511
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_logCrashException(String, String, String[], String[], String[], int[]) called: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcrittercism/android/dx;->b()V

    .line 512
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-nez p5, :cond_1

    .line 515
    :cond_0
    const-string v0, "Unable to handle application crash. Missing parameters"

    invoke-static {v0}, Lcrittercism/android/dx;->b(Ljava/lang/String;)V

    .line 531
    :goto_0
    return-void

    .line 519
    :cond_1
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    const/4 v1, 0x3

    aput-object p5, v0, v1

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->a([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 521
    const-string v0, "Unable to handle application crash. Missing stack elements"

    invoke-static {v0}, Lcrittercism/android/dx;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 528
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 525
    :cond_2
    :try_start_1
    new-instance v0, Lcom/crittercism/integrations/PluginException;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/crittercism/integrations/PluginException;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I)V

    .line 527
    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->_logCrashException(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static _logCrashException(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "exception"    # Ljava/lang/Throwable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 462
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_logCrashException(Throwable) called with throwable: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcrittercism/android/dx;->b()V

    .line 463
    invoke-static {}, Lcrittercism/android/az;->A()Lcrittercism/android/az;

    move-result-object v0

    iget-boolean v0, v0, Lcrittercism/android/az;->b:Z

    if-nez v0, :cond_0

    const-string v0, "_logCrashException"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->b(Ljava/lang/String;)V

    .line 469
    :goto_0
    return-void

    .line 463
    :cond_0
    invoke-static {}, Lcrittercism/android/az;->A()Lcrittercism/android/az;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcrittercism/android/az;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 464
    :catch_0
    move-exception v0

    throw v0

    .line 466
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static _logHandledException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "stack"    # Ljava/lang/String;

    .prologue
    .line 245
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_logHandledException(name, msg, stack) called: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcrittercism/android/dx;->b()V

    .line 246
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 247
    :cond_0
    const-string v0, "Calling logHandledException with null parameter(s). Nothing will be reported to Crittercism"

    invoke-static {v0}, Lcrittercism/android/dx;->c(Ljava/lang/String;)V

    .line 257
    :goto_0
    return-void

    .line 250
    :cond_1
    new-instance v0, Lcom/crittercism/integrations/PluginException;

    invoke-direct {v0, p0, p1, p2}, Lcom/crittercism/integrations/PluginException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->logHandledException(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 252
    :catch_0
    move-exception v0

    throw v0

    .line 254
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static _logHandledException(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I)V
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "classStackElems"    # [Ljava/lang/String;
    .param p3, "methodStackElems"    # [Ljava/lang/String;
    .param p4, "fileStackElems"    # [Ljava/lang/String;
    .param p5, "lineNumberStackElems"    # [I

    .prologue
    .line 266
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_logHandledException(name, msg, classes, methods, files, lines) called: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcrittercism/android/dx;->b()V

    .line 267
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 268
    :cond_0
    const-string v0, "Calling logHandledException with null parameter(s). Nothing will be reported to Crittercism"

    invoke-static {v0}, Lcrittercism/android/dx;->c(Ljava/lang/String;)V

    .line 278
    :goto_0
    return-void

    .line 271
    :cond_1
    new-instance v0, Lcom/crittercism/integrations/PluginException;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/crittercism/integrations/PluginException;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I)V

    .line 272
    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->logHandledException(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 273
    :catch_0
    move-exception v0

    throw v0

    .line 275
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 167
    const-string v0, "Crittercism cannot be initialized"

    new-instance v1, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcrittercism/android/dx;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 168
    return-void
.end method

.method private static varargs a([Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 537
    array-length v0, p0

    if-lez v0, :cond_0

    aget-object v0, p0, v2

    if-nez v0, :cond_2

    :cond_0
    move v1, v2

    .line 550
    :cond_1
    :goto_0
    return v1

    .line 540
    :cond_2
    aget-object v0, p0, v2

    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    move v0, v1

    .line 541
    :goto_1
    array-length v4, p0

    if-ge v0, v4, :cond_1

    .line 542
    aget-object v4, p0, v0

    if-nez v4, :cond_3

    move v1, v2

    .line 543
    goto :goto_0

    .line 545
    :cond_3
    aget-object v4, p0, v0

    invoke-static {v4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    .line 546
    if-eq v4, v3, :cond_4

    move v1, v2

    .line 547
    goto :goto_0

    .line 541
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 802
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Must initialize Crittercism before calling "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/crittercism/app/Crittercism;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "().  Request is being ignored..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 803
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0, v1}, Lcrittercism/android/dx;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 804
    return-void
.end method

.method public static beginTransaction(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 702
    :try_start_0
    invoke-static {}, Lcrittercism/android/az;->A()Lcrittercism/android/az;

    move-result-object v1

    iget-boolean v0, v1, Lcrittercism/android/az;->t:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Transactions are not supported for services. Ignoring Crittercism.beginTransaction() call for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcrittercism/android/dx;->c(Ljava/lang/String;)V

    .line 708
    :cond_0
    :goto_0
    return-void

    .line 702
    :cond_1
    invoke-static {p0}, Lcom/crittercism/app/Transaction;->a(Ljava/lang/String;)Lcom/crittercism/app/Transaction;

    move-result-object v2

    instance-of v0, v2, Lcrittercism/android/bg;

    if-eqz v0, :cond_0

    iget-object v3, v1, Lcrittercism/android/az;->z:Ljava/util/Map;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, v1, Lcrittercism/android/az;->z:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crittercism/app/Transaction;

    if-eqz v0, :cond_2

    check-cast v0, Lcrittercism/android/bg;

    invoke-virtual {v0}, Lcrittercism/android/bg;->h()V

    :cond_2
    iget-object v0, v1, Lcrittercism/android/az;->z:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v4, 0x32

    if-le v0, v4, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Crittercism only supports a maximum of 50 concurrent transactions. Ignoring Crittercism.beginTransaction() call for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcrittercism/android/dx;->c(Ljava/lang/String;)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3

    throw v0
    :try_end_2
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 703
    :catch_0
    move-exception v0

    throw v0

    .line 702
    :cond_3
    :try_start_3
    iget-object v0, v1, Lcrittercism/android/az;->z:Ljava/util/Map;

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/crittercism/app/Transaction;->a()V

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 705
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static didCrashOnLastLoad()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 426
    :try_start_0
    invoke-static {}, Lcrittercism/android/az;->A()Lcrittercism/android/az;

    move-result-object v1

    iget-boolean v2, v1, Lcrittercism/android/az;->b:Z

    if-nez v2, :cond_1

    const-string v1, "didCrashOnLoad"

    invoke-static {v1}, Lcom/crittercism/app/Crittercism;->b(Ljava/lang/String;)V

    .line 432
    :cond_0
    :goto_0
    return v0

    .line 426
    :cond_1
    invoke-virtual {v1}, Lcrittercism/android/az;->B()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, v1, Lcrittercism/android/az;->e:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V

    sget-boolean v0, Lcrittercism/android/dq;->a:Z
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 427
    :catch_0
    move-exception v0

    throw v0

    .line 429
    :catch_1
    move-exception v1

    invoke-static {v1}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static endTransaction(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 717
    :try_start_0
    invoke-static {}, Lcrittercism/android/az;->A()Lcrittercism/android/az;

    move-result-object v0

    iget-boolean v1, v0, Lcrittercism/android/az;->t:Z

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Transactions are not supported for services. Ignoring Crittercism.endTransaction() call for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcrittercism/android/dx;->c(Ljava/lang/String;)V

    .line 723
    :cond_0
    :goto_0
    return-void

    .line 717
    :cond_1
    iget-object v1, v0, Lcrittercism/android/az;->z:Ljava/util/Map;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, v0, Lcrittercism/android/az;->z:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crittercism/app/Transaction;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Lcom/crittercism/app/Transaction;->b()V
    :try_end_2
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 718
    :catch_0
    move-exception v0

    throw v0

    .line 717
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catch Ljava/lang/ThreadDeath; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 720
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static failTransaction(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 731
    :try_start_0
    invoke-static {}, Lcrittercism/android/az;->A()Lcrittercism/android/az;

    move-result-object v0

    iget-boolean v1, v0, Lcrittercism/android/az;->t:Z

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Transactions are not supported for services. Ignoring Crittercism.failTransaction() call for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcrittercism/android/dx;->c(Ljava/lang/String;)V

    .line 737
    :cond_0
    :goto_0
    return-void

    .line 731
    :cond_1
    iget-object v1, v0, Lcrittercism/android/az;->z:Ljava/util/Map;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, v0, Lcrittercism/android/az;->z:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crittercism/app/Transaction;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Lcom/crittercism/app/Transaction;->c()V
    :try_end_2
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 732
    :catch_0
    move-exception v0

    throw v0

    .line 731
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catch Ljava/lang/ThreadDeath; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 734
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static generateRateMyAppAlertDialog(Landroid/content/Context;)Landroid/app/AlertDialog;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 125
    :try_start_0
    invoke-static {}, Lcrittercism/android/az;->A()Lcrittercism/android/az;

    move-result-object v3

    iget-object v1, v3, Lcrittercism/android/az;->A:Lcrittercism/android/dt;

    iget-object v1, v3, Lcrittercism/android/az;->A:Lcrittercism/android/dt;

    if-eqz v1, :cond_0

    iget-object v1, v3, Lcrittercism/android/az;->A:Lcrittercism/android/dt;

    invoke-virtual {v1}, Lcrittercism/android/dt;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v3, Lcrittercism/android/az;->A:Lcrittercism/android/dt;

    invoke-virtual {v1}, Lcrittercism/android/dt;->c()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, p0, v1, v2}, Lcrittercism/android/az;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 132
    :goto_1
    return-object v0

    .line 126
    :catch_0
    move-exception v0

    throw v0

    .line 128
    :catch_1
    move-exception v1

    invoke-static {v1}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    move-object v1, v0

    move-object v2, v0

    goto :goto_0
.end method

.method public static generateRateMyAppAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 82
    :try_start_0
    invoke-static {}, Lcrittercism/android/az;->A()Lcrittercism/android/az;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcrittercism/android/az;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 89
    :goto_0
    return-object v0

    .line 83
    :catch_0
    move-exception v0

    throw v0

    .line 85
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    .line 89
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getOptOutStatus()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 571
    :try_start_0
    invoke-static {}, Lcrittercism/android/az;->A()Lcrittercism/android/az;

    move-result-object v1

    iget-boolean v2, v1, Lcrittercism/android/az;->b:Z

    if-nez v2, :cond_0

    const-string v1, "getOptOutStatus"

    invoke-static {v1}, Lcom/crittercism/app/Crittercism;->b(Ljava/lang/String;)V

    .line 577
    :goto_0
    return v0

    .line 571
    :cond_0
    invoke-virtual {v1}, Lcrittercism/android/az;->B()Z
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_0

    .line 572
    :catch_0
    move-exception v0

    throw v0

    .line 574
    :catch_1
    move-exception v1

    invoke-static {v1}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getTransactionValue(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 759
    :try_start_0
    invoke-static {}, Lcrittercism/android/az;->A()Lcrittercism/android/az;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcrittercism/android/az;->b(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 764
    :goto_0
    return v0

    .line 760
    :catch_0
    move-exception v0

    throw v0

    .line 762
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    .line 764
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appID"    # Ljava/lang/String;

    .prologue
    .line 163
    const-class v1, Lcom/crittercism/app/Crittercism;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/crittercism/app/CrittercismConfig;

    invoke-direct {v0}, Lcom/crittercism/app/CrittercismConfig;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/crittercism/app/Crittercism;->initialize(Landroid/content/Context;Ljava/lang/String;Lcom/crittercism/app/CrittercismConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    monitor-exit v1

    return-void

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;Ljava/lang/String;Lcom/crittercism/app/CrittercismConfig;)V
    .locals 6

    .prologue
    .line 152
    const-class v1, Lcom/crittercism/app/Crittercism;

    monitor-enter v1

    if-nez p1, :cond_1

    :try_start_0
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lcrittercism/android/bn$a; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 152
    :cond_1
    if-nez p0, :cond_2

    :try_start_1
    const-class v0, Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Lcrittercism/android/bn$a; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    :try_start_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Crittercism cannot be initialized. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcrittercism/android/bn$a;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    if-nez p2, :cond_3

    :try_start_3
    const-class v0, Lcom/crittercism/app/CrittercismConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Lcrittercism/android/bn$a; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/ThreadDeath; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 155
    :catch_1
    move-exception v0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 152
    :cond_3
    :try_start_5
    invoke-static {}, Lcrittercism/android/az;->A()Lcrittercism/android/az;

    move-result-object v0

    iget-boolean v0, v0, Lcrittercism/android/az;->b:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {}, Lcrittercism/android/az;->A()Lcrittercism/android/az;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcrittercism/android/az;->a(Landroid/content/Context;Ljava/lang/String;Lcom/crittercism/app/CrittercismConfig;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Crittercism finished initializing in "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcrittercism/android/dx;->b()V
    :try_end_5
    .catch Lcrittercism/android/bn$a; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/ThreadDeath; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 157
    :catch_2
    move-exception v0

    :try_start_6
    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0
.end method

.method public static leaveBreadcrumb(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 678
    :try_start_0
    invoke-static {}, Lcrittercism/android/az;->A()Lcrittercism/android/az;

    move-result-object v0

    iget-boolean v0, v0, Lcrittercism/android/az;->b:Z

    if-nez v0, :cond_1

    const-string v0, "leaveBreadcrumb"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->b(Ljava/lang/String;)V

    .line 684
    :cond_0
    :goto_0
    return-void

    .line 678
    :cond_1
    if-nez p0, :cond_2

    const-string v0, "Cannot leave null breadcrumb"

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v0, v1}, Lcrittercism/android/dx;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 679
    :catch_0
    move-exception v0

    throw v0

    .line 678
    :cond_2
    :try_start_1
    invoke-static {}, Lcrittercism/android/az;->A()Lcrittercism/android/az;

    move-result-object v0

    iget-object v1, v0, Lcrittercism/android/az;->f:Lcrittercism/android/dw;

    invoke-virtual {v1}, Lcrittercism/android/dw;->b()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcrittercism/android/cf;

    sget-object v2, Lcrittercism/android/cf$a;->a:Lcrittercism/android/cf$a;

    invoke-direct {v1, p0, v2}, Lcrittercism/android/cf;-><init>(Ljava/lang/String;Lcrittercism/android/cf$a;)V

    new-instance v2, Lcrittercism/android/az$7;

    invoke-direct {v2, v0, v1}, Lcrittercism/android/az$7;-><init>(Lcrittercism/android/az;Lcrittercism/android/cf;)V

    iget-object v1, v0, Lcrittercism/android/az;->q:Lcrittercism/android/dg;

    invoke-virtual {v1, v2}, Lcrittercism/android/dg;->a(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "SENDING "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " TO EXECUTOR"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcrittercism/android/dx;->b()V

    iget-object v0, v0, Lcrittercism/android/az;->s:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 681
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static logHandledException(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 232
    :try_start_0
    invoke-static {}, Lcrittercism/android/az;->A()Lcrittercism/android/az;

    move-result-object v0

    iget-boolean v0, v0, Lcrittercism/android/az;->b:Z

    if-nez v0, :cond_1

    const-string v0, "logHandledException"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->b(Ljava/lang/String;)V

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    invoke-static {}, Lcrittercism/android/az;->A()Lcrittercism/android/az;

    move-result-object v0

    iget-object v0, v0, Lcrittercism/android/az;->f:Lcrittercism/android/dw;

    invoke-virtual {v0}, Lcrittercism/android/dw;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcrittercism/android/az;->A()Lcrittercism/android/az;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcrittercism/android/az;->b(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 233
    :catch_0
    move-exception v0

    throw v0

    .line 235
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static logNetworkRequest(Ljava/lang/String;Ljava/net/URL;JJJILjava/lang/Exception;)V
    .locals 14
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "responseTime"    # J
    .param p4, "bytesRead"    # J
    .param p6, "bytesSent"    # J
    .param p8, "responseCode"    # I
    .param p9, "error"    # Ljava/lang/Exception;

    .prologue
    .line 340
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v12, v0, p2

    invoke-static {}, Lcrittercism/android/az;->A()Lcrittercism/android/az;

    move-result-object v0

    iget-boolean v0, v0, Lcrittercism/android/az;->b:Z

    if-nez v0, :cond_1

    const-string v0, "logEndpoint"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->b(Ljava/lang/String;)V

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    invoke-static {}, Lcrittercism/android/az;->A()Lcrittercism/android/az;

    move-result-object v0

    iget-object v0, v0, Lcrittercism/android/az;->f:Lcrittercism/android/dw;

    invoke-virtual {v0}, Lcrittercism/android/dw;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcrittercism/android/az;->A()Lcrittercism/android/az;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move/from16 v10, p8

    move-object/from16 v11, p9

    invoke-virtual/range {v1 .. v13}, Lcrittercism/android/az;->a(Ljava/lang/String;Ljava/net/URL;JJJILjava/lang/Exception;J)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 343
    :catch_0
    move-exception v0

    throw v0

    .line 345
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static performRateMyAppButtonAction(Lcom/crittercism/app/CritterRateMyAppButtons;)V
    .locals 4

    .prologue
    .line 37
    :try_start_0
    invoke-static {}, Lcrittercism/android/az;->A()Lcrittercism/android/az;

    move-result-object v0

    iget-object v0, v0, Lcrittercism/android/az;->f:Lcrittercism/android/dw;

    invoke-virtual {v0}, Lcrittercism/android/dw;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "User has opted out of crittercism.  performRateMyAppButtonAction exiting."

    invoke-static {v0}, Lcrittercism/android/dx;->c(Ljava/lang/String;)V

    .line 43
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-static {}, Lcrittercism/android/az;->A()Lcrittercism/android/az;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    const-string v0, "Rate my app not supported below api level 5"

    invoke-static {v0}, Lcrittercism/android/dx;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    throw v0

    .line 37
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcrittercism/android/az;->D()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v0, "Cannot create proper URI to open app market.  Returning null."

    invoke-static {v0}, Lcrittercism/android/dx;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 40
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 37
    :cond_2
    :try_start_2
    sget-object v2, Lcrittercism/android/az$4;->a:[I

    invoke-virtual {p0}, Lcom/crittercism/app/CritterRateMyAppButtons;->ordinal()I

    move-result v3

    aget v2, v2, v3
    :try_end_2
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    :try_start_3
    invoke-virtual {v0, v1}, Lcrittercism/android/az;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/ThreadDeath; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_4
    const-string v0, "performRateMyAppButtonAction(CritterRateMyAppButtons.YES) failed.  Email support@crittercism.com."

    invoke-static {v0}, Lcrittercism/android/dx;->c(Ljava/lang/String;)V

    invoke-static {}, Lcrittercism/android/dx;->c()V
    :try_end_4
    .catch Ljava/lang/ThreadDeath; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :pswitch_1
    :try_start_5
    invoke-virtual {v0}, Lcrittercism/android/az;->C()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/ThreadDeath; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :catch_3
    move-exception v0

    :try_start_6
    const-string v0, "performRateMyAppButtonAction(CritterRateMyAppButtons.NO) failed.  Email support@crittercism.com."

    invoke-static {v0}, Lcrittercism/android/dx;->c(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/ThreadDeath; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static sendAppLoadData()V
    .locals 3

    .prologue
    .line 196
    :try_start_0
    invoke-static {}, Lcrittercism/android/az;->A()Lcrittercism/android/az;

    move-result-object v0

    iget-object v0, v0, Lcrittercism/android/az;->u:Lcrittercism/android/bb;

    if-nez v0, :cond_1

    const-string v0, "sendAppLoadData"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->b(Ljava/lang/String;)V

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    invoke-virtual {v0}, Lcom/crittercism/app/CrittercismConfig;->delaySendingAppLoad()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcrittercism/android/az;->A()Lcrittercism/android/az;

    move-result-object v0

    iget-object v0, v0, Lcrittercism/android/az;->f:Lcrittercism/android/dw;

    invoke-virtual {v0}, Lcrittercism/android/dw;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcrittercism/android/az;->A()Lcrittercism/android/az;

    move-result-object v0

    iget-object v1, v0, Lcrittercism/android/az;->u:Lcrittercism/android/bb;

    invoke-virtual {v1}, Lcrittercism/android/bb;->delaySendingAppLoad()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v0, "CrittercismConfig instance not set to delay sending app loads."

    invoke-static {v0}, Lcrittercism/android/dx;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    throw v0

    .line 196
    :cond_2
    :try_start_1
    iget-boolean v1, v0, Lcrittercism/android/az;->t:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcrittercism/android/az;->C:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcrittercism/android/az;->C:Z

    new-instance v1, Lcrittercism/android/az$1;

    invoke-direct {v1, v0}, Lcrittercism/android/az$1;-><init>(Lcrittercism/android/az;)V

    iget-object v2, v0, Lcrittercism/android/az;->q:Lcrittercism/android/dg;

    invoke-virtual {v2, v1}, Lcrittercism/android/dg;->a(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, v0, Lcrittercism/android/az;->s:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 199
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 196
    :cond_3
    :try_start_2
    const-string v0, "sendAppLoadData() will only send data to Crittercism if \"delaySendingAppLoad\" is set to true in the configuration settings you include in the init call."

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method public static setMetadata(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 619
    :try_start_0
    invoke-static {}, Lcrittercism/android/az;->A()Lcrittercism/android/az;

    move-result-object v0

    iget-boolean v0, v0, Lcrittercism/android/az;->b:Z

    if-nez v0, :cond_0

    const-string v0, "setMetadata"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->b(Ljava/lang/String;)V

    .line 625
    :goto_0
    return-void

    .line 619
    :cond_0
    invoke-static {}, Lcrittercism/android/az;->A()Lcrittercism/android/az;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcrittercism/android/az;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 620
    :catch_0
    move-exception v0

    throw v0

    .line 622
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setOptOutStatus(Z)V
    .locals 3

    .prologue
    .line 599
    :try_start_0
    invoke-static {}, Lcrittercism/android/az;->A()Lcrittercism/android/az;

    move-result-object v0

    iget-boolean v0, v0, Lcrittercism/android/az;->b:Z

    if-nez v0, :cond_1

    const-string v0, "setOptOutStatus"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->b(Ljava/lang/String;)V

    .line 605
    :cond_0
    :goto_0
    return-void

    .line 599
    :cond_1
    invoke-static {}, Lcrittercism/android/az;->A()Lcrittercism/android/az;

    move-result-object v0

    new-instance v1, Lcrittercism/android/dk;

    iget-object v2, v0, Lcrittercism/android/az;->c:Landroid/content/Context;

    invoke-direct {v1, v2, v0, p0}, Lcrittercism/android/dk;-><init>(Landroid/content/Context;Lcrittercism/android/ax;Z)V

    iget-object v2, v0, Lcrittercism/android/az;->q:Lcrittercism/android/dg;

    invoke-virtual {v2, v1}, Lcrittercism/android/dg;->a(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, v0, Lcrittercism/android/az;->s:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 600
    :catch_0
    move-exception v0

    throw v0

    .line 602
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setTransactionValue(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 745
    :try_start_0
    invoke-static {}, Lcrittercism/android/az;->A()Lcrittercism/android/az;

    move-result-object v0

    iget-boolean v1, v0, Lcrittercism/android/az;->t:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Transactions are not supported for services. Ignoring Crittercism.setTransactionValue() call for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcrittercism/android/dx;->c(Ljava/lang/String;)V

    .line 751
    :goto_0
    return-void

    .line 745
    :cond_0
    iget-object v1, v0, Lcrittercism/android/az;->z:Ljava/util/Map;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, v0, Lcrittercism/android/az;->z:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crittercism/app/Transaction;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/crittercism/app/Transaction;->a(I)V

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 750
    :catch_0
    move-exception v0

    throw v0

    .line 748
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setUsername(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 638
    :try_start_0
    invoke-static {}, Lcrittercism/android/az;->A()Lcrittercism/android/az;

    move-result-object v0

    iget-boolean v0, v0, Lcrittercism/android/az;->b:Z

    if-nez v0, :cond_0

    const-string v0, "setUsername"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->b(Ljava/lang/String;)V

    .line 644
    :goto_0
    return-void

    .line 638
    :cond_0
    if-nez p0, :cond_1

    const-string v0, "Crittercism.setUsername() given invalid parameter: null"

    invoke-static {v0}, Lcrittercism/android/dx;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 639
    :catch_0
    move-exception v0

    throw v0

    .line 638
    :cond_1
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v1, "username"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-static {}, Lcrittercism/android/az;->A()Lcrittercism/android/az;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcrittercism/android/az;->a(Lorg/json/JSONObject;)V
    :try_end_3
    .catch Ljava/lang/ThreadDeath; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 641
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 638
    :catch_2
    move-exception v0

    :try_start_4
    const-string v1, "Crittercism.setUsername()"

    invoke-static {v1, v0}, Lcrittercism/android/dx;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/ThreadDeath; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0
.end method

.method public static updateLocation(Landroid/location/Location;)V
    .locals 2
    .param p0, "curLocation"    # Landroid/location/Location;

    .prologue
    .line 781
    invoke-static {}, Lcrittercism/android/az;->A()Lcrittercism/android/az;

    move-result-object v0

    iget-boolean v0, v0, Lcrittercism/android/az;->b:Z

    if-nez v0, :cond_0

    .line 782
    const-string v0, "updateLocation"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->b(Ljava/lang/String;)V

    .line 792
    :goto_0
    return-void

    .line 786
    :cond_0
    if-nez p0, :cond_1

    .line 787
    const-string v0, "Cannot leave null location"

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v0, v1}, Lcrittercism/android/dx;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 791
    :cond_1
    invoke-static {p0}, Lcrittercism/android/bc;->a(Landroid/location/Location;)V

    goto :goto_0
.end method
