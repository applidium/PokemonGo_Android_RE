.class public final Lrx/internal/util/IndexedRingBuffer;
.super Ljava/lang/Object;
.source "IndexedRingBuffer.java"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/util/IndexedRingBuffer$IndexSection;,
        Lrx/internal/util/IndexedRingBuffer$ElementSection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Subscription;"
    }
.end annotation


# static fields
.field private static final POOL:Lrx/internal/util/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/util/ObjectPool",
            "<",
            "Lrx/internal/util/IndexedRingBuffer",
            "<*>;>;"
        }
    .end annotation
.end field

.field static final SIZE:I

.field static _size:I


# instance fields
.field private final elements:Lrx/internal/util/IndexedRingBuffer$ElementSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/util/IndexedRingBuffer$ElementSection",
            "<TE;>;"
        }
    .end annotation
.end field

.field final index:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final removed:Lrx/internal/util/IndexedRingBuffer$IndexSection;

.field final removedIndex:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 51
    new-instance v2, Lrx/internal/util/IndexedRingBuffer$1;

    invoke-direct {v2}, Lrx/internal/util/IndexedRingBuffer$1;-><init>()V

    sput-object v2, Lrx/internal/util/IndexedRingBuffer;->POOL:Lrx/internal/util/ObjectPool;

    .line 241
    const/16 v2, 0x100

    sput v2, Lrx/internal/util/IndexedRingBuffer;->_size:I

    .line 244
    invoke-static {}, Lrx/internal/util/PlatformDependent;->isAndroid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    const/16 v2, 0x8

    sput v2, Lrx/internal/util/IndexedRingBuffer;->_size:I

    .line 249
    :cond_0
    const-string v2, "rx.indexed-ring-buffer.size"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, "sizeFromProperty":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 252
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lrx/internal/util/IndexedRingBuffer;->_size:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :cond_1
    :goto_0
    sget v2, Lrx/internal/util/IndexedRingBuffer;->_size:I

    sput v2, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    return-void

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to set \'rx.indexed-ring-buffer.size\' with value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .local p0, "this":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    const/4 v1, 0x0

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lrx/internal/util/IndexedRingBuffer$ElementSection;

    invoke-direct {v0, v1}, Lrx/internal/util/IndexedRingBuffer$ElementSection;-><init>(Lrx/internal/util/IndexedRingBuffer$1;)V

    iput-object v0, p0, Lrx/internal/util/IndexedRingBuffer;->elements:Lrx/internal/util/IndexedRingBuffer$ElementSection;

    .line 66
    new-instance v0, Lrx/internal/util/IndexedRingBuffer$IndexSection;

    invoke-direct {v0, v1}, Lrx/internal/util/IndexedRingBuffer$IndexSection;-><init>(Lrx/internal/util/IndexedRingBuffer$1;)V

    iput-object v0, p0, Lrx/internal/util/IndexedRingBuffer;->removed:Lrx/internal/util/IndexedRingBuffer$IndexSection;

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/internal/util/IndexedRingBuffer;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/internal/util/IndexedRingBuffer;->removedIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 294
    return-void
.end method

.method synthetic constructor <init>(Lrx/internal/util/IndexedRingBuffer$1;)V
    .locals 0
    .param p1, "x0"    # Lrx/internal/util/IndexedRingBuffer$1;

    .prologue
    .line 49
    .local p0, "this":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    invoke-direct {p0}, Lrx/internal/util/IndexedRingBuffer;-><init>()V

    return-void
.end method

.method private forEach(Lrx/functions/Func1;II)I
    .locals 8
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TE;",
            "Ljava/lang/Boolean;",
            ">;II)I"
        }
    .end annotation

    .prologue
    .line 450
    .local p0, "this":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    .local p1, "action":Lrx/functions/Func1;, "Lrx/functions/Func1<-TE;Ljava/lang/Boolean;>;"
    move v3, p2

    .line 451
    .local v3, "lastIndex":I
    iget-object v7, p0, Lrx/internal/util/IndexedRingBuffer;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    .line 452
    .local v4, "maxIndex":I
    move v5, p2

    .line 453
    .local v5, "realIndex":I
    iget-object v6, p0, Lrx/internal/util/IndexedRingBuffer;->elements:Lrx/internal/util/IndexedRingBuffer$ElementSection;

    .line 455
    .local v6, "section":Lrx/internal/util/IndexedRingBuffer$ElementSection;, "Lrx/internal/util/IndexedRingBuffer$ElementSection<TE;>;"
    sget v7, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    if-lt p2, v7, :cond_0

    .line 457
    invoke-direct {p0, p2}, Lrx/internal/util/IndexedRingBuffer;->getElementSection(I)Lrx/internal/util/IndexedRingBuffer$ElementSection;

    move-result-object v6

    .line 458
    sget v7, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    rem-int/2addr p2, v7

    .line 461
    :cond_0
    :goto_0
    if-eqz v6, :cond_2

    .line 462
    move v2, p2

    .local v2, "i":I
    :goto_1
    sget v7, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    if-ge v2, v7, :cond_6

    .line 463
    if-ge v5, v4, :cond_1

    if-lt v5, p3, :cond_3

    .line 464
    :cond_1
    const/4 v6, 0x0

    .end local v2    # "i":I
    :cond_2
    move v7, v5

    .line 482
    :goto_2
    return v7

    .line 467
    .restart local v2    # "i":I
    :cond_3
    # getter for: Lrx/internal/util/IndexedRingBuffer$ElementSection;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    invoke-static {v6}, Lrx/internal/util/IndexedRingBuffer$ElementSection;->access$300(Lrx/internal/util/IndexedRingBuffer$ElementSection;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 468
    .local v1, "element":Ljava/lang/Object;, "TE;"
    if-nez v1, :cond_5

    .line 462
    :cond_4
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 471
    :cond_5
    move v3, v5

    .line 472
    invoke-interface {p1, v1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 473
    .local v0, "continueLoop":Z
    if-nez v0, :cond_4

    move v7, v3

    .line 474
    goto :goto_2

    .line 477
    .end local v0    # "continueLoop":Z
    .end local v1    # "element":Ljava/lang/Object;, "TE;"
    :cond_6
    # getter for: Lrx/internal/util/IndexedRingBuffer$ElementSection;->next:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v6}, Lrx/internal/util/IndexedRingBuffer$ElementSection;->access$400(Lrx/internal/util/IndexedRingBuffer$ElementSection;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "section":Lrx/internal/util/IndexedRingBuffer$ElementSection;, "Lrx/internal/util/IndexedRingBuffer$ElementSection<TE;>;"
    check-cast v6, Lrx/internal/util/IndexedRingBuffer$ElementSection;

    .line 478
    .restart local v6    # "section":Lrx/internal/util/IndexedRingBuffer$ElementSection;, "Lrx/internal/util/IndexedRingBuffer$ElementSection<TE;>;"
    const/4 p2, 0x0

    goto :goto_0
.end method

.method private getElementSection(I)Lrx/internal/util/IndexedRingBuffer$ElementSection;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/internal/util/IndexedRingBuffer$ElementSection",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 345
    .local p0, "this":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    sget v3, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    if-ge p1, v3, :cond_1

    .line 346
    iget-object v0, p0, Lrx/internal/util/IndexedRingBuffer;->elements:Lrx/internal/util/IndexedRingBuffer$ElementSection;

    .line 355
    :cond_0
    return-object v0

    .line 350
    :cond_1
    sget v3, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    div-int v2, p1, v3

    .line 351
    .local v2, "numSections":I
    iget-object v0, p0, Lrx/internal/util/IndexedRingBuffer;->elements:Lrx/internal/util/IndexedRingBuffer$ElementSection;

    .line 352
    .local v0, "a":Lrx/internal/util/IndexedRingBuffer$ElementSection;, "Lrx/internal/util/IndexedRingBuffer$ElementSection<TE;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 353
    invoke-virtual {v0}, Lrx/internal/util/IndexedRingBuffer$ElementSection;->getNext()Lrx/internal/util/IndexedRingBuffer$ElementSection;

    move-result-object v0

    .line 352
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private declared-synchronized getIndexForAdd()I
    .locals 5

    .prologue
    .line 363
    .local p0, "this":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lrx/internal/util/IndexedRingBuffer;->getIndexFromPreviouslyRemoved()I

    move-result v1

    .line 364
    .local v1, "ri":I
    if-ltz v1, :cond_2

    .line 365
    sget v3, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    if-ge v1, v3, :cond_1

    .line 367
    iget-object v3, p0, Lrx/internal/util/IndexedRingBuffer;->removed:Lrx/internal/util/IndexedRingBuffer$IndexSection;

    const/4 v4, -0x1

    invoke-virtual {v3, v1, v4}, Lrx/internal/util/IndexedRingBuffer$IndexSection;->getAndSet(II)I

    move-result v0

    .line 372
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lrx/internal/util/IndexedRingBuffer;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-ne v0, v3, :cond_0

    .line 374
    iget-object v3, p0, Lrx/internal/util/IndexedRingBuffer;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    :cond_0
    :goto_1
    monitor-exit p0

    return v0

    .line 369
    .end local v0    # "i":I
    :cond_1
    :try_start_1
    sget v3, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    rem-int v2, v1, v3

    .line 370
    .local v2, "sectionIndex":I
    invoke-direct {p0, v1}, Lrx/internal/util/IndexedRingBuffer;->getIndexSection(I)Lrx/internal/util/IndexedRingBuffer$IndexSection;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v2, v4}, Lrx/internal/util/IndexedRingBuffer$IndexSection;->getAndSet(II)I

    move-result v0

    .restart local v0    # "i":I
    goto :goto_0

    .line 377
    .end local v0    # "i":I
    .end local v2    # "sectionIndex":I
    :cond_2
    iget-object v3, p0, Lrx/internal/util/IndexedRingBuffer;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .restart local v0    # "i":I
    goto :goto_1

    .line 363
    .end local v0    # "i":I
    .end local v1    # "ri":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized getIndexFromPreviouslyRemoved()I
    .locals 3

    .prologue
    .line 394
    .local p0, "this":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    monitor-enter p0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lrx/internal/util/IndexedRingBuffer;->removedIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 395
    .local v0, "currentRi":I
    if-lez v0, :cond_1

    .line 397
    iget-object v1, p0, Lrx/internal/util/IndexedRingBuffer;->removedIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 398
    add-int/lit8 v1, v0, -0x1

    .line 402
    :goto_0
    monitor-exit p0

    return v1

    :cond_1
    const/4 v1, -0x1

    goto :goto_0

    .line 394
    .end local v0    # "currentRi":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getIndexSection(I)Lrx/internal/util/IndexedRingBuffer$IndexSection;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 330
    .local p0, "this":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    sget v3, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    if-ge p1, v3, :cond_1

    .line 331
    iget-object v0, p0, Lrx/internal/util/IndexedRingBuffer;->removed:Lrx/internal/util/IndexedRingBuffer$IndexSection;

    .line 340
    :cond_0
    return-object v0

    .line 335
    :cond_1
    sget v3, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    div-int v2, p1, v3

    .line 336
    .local v2, "numSections":I
    iget-object v0, p0, Lrx/internal/util/IndexedRingBuffer;->removed:Lrx/internal/util/IndexedRingBuffer$IndexSection;

    .line 337
    .local v0, "a":Lrx/internal/util/IndexedRingBuffer$IndexSection;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 338
    invoke-virtual {v0}, Lrx/internal/util/IndexedRingBuffer$IndexSection;->getNext()Lrx/internal/util/IndexedRingBuffer$IndexSection;

    move-result-object v0

    .line 337
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static final getInstance()Lrx/internal/util/IndexedRingBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/internal/util/IndexedRingBuffer",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 62
    sget-object v0, Lrx/internal/util/IndexedRingBuffer;->POOL:Lrx/internal/util/ObjectPool;

    invoke-virtual {v0}, Lrx/internal/util/ObjectPool;->borrowObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/util/IndexedRingBuffer;

    return-object v0
.end method

.method private declared-synchronized pushRemovedIndex(I)V
    .locals 3
    .param p1, "elementIndex"    # I

    .prologue
    .line 412
    .local p0, "this":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lrx/internal/util/IndexedRingBuffer;->removedIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 413
    .local v0, "i":I
    sget v2, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    if-ge v0, v2, :cond_0

    .line 415
    iget-object v2, p0, Lrx/internal/util/IndexedRingBuffer;->removed:Lrx/internal/util/IndexedRingBuffer$IndexSection;

    invoke-virtual {v2, v0, p1}, Lrx/internal/util/IndexedRingBuffer$IndexSection;->set(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    :goto_0
    monitor-exit p0

    return-void

    .line 417
    :cond_0
    :try_start_1
    sget v2, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    rem-int v1, v0, v2

    .line 418
    .local v1, "sectionIndex":I
    invoke-direct {p0, v0}, Lrx/internal/util/IndexedRingBuffer;->getIndexSection(I)Lrx/internal/util/IndexedRingBuffer$IndexSection;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Lrx/internal/util/IndexedRingBuffer$IndexSection;->set(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 412
    .end local v0    # "i":I
    .end local v1    # "sectionIndex":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public add(Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .prologue
    .line 303
    .local p0, "this":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Lrx/internal/util/IndexedRingBuffer;->getIndexForAdd()I

    move-result v0

    .line 304
    .local v0, "i":I
    sget v2, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    if-ge v0, v2, :cond_0

    .line 306
    iget-object v2, p0, Lrx/internal/util/IndexedRingBuffer;->elements:Lrx/internal/util/IndexedRingBuffer$ElementSection;

    # getter for: Lrx/internal/util/IndexedRingBuffer$ElementSection;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    invoke-static {v2}, Lrx/internal/util/IndexedRingBuffer$ElementSection;->access$300(Lrx/internal/util/IndexedRingBuffer$ElementSection;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 311
    :goto_0
    return v0

    .line 309
    :cond_0
    sget v2, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    rem-int v1, v0, v2

    .line 310
    .local v1, "sectionIndex":I
    invoke-direct {p0, v0}, Lrx/internal/util/IndexedRingBuffer;->getElementSection(I)Lrx/internal/util/IndexedRingBuffer$ElementSection;

    move-result-object v2

    # getter for: Lrx/internal/util/IndexedRingBuffer$ElementSection;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    invoke-static {v2}, Lrx/internal/util/IndexedRingBuffer$ElementSection;->access$300(Lrx/internal/util/IndexedRingBuffer$ElementSection;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public forEach(Lrx/functions/Func1;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TE;",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 428
    .local p0, "this":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    .local p1, "action":Lrx/functions/Func1;, "Lrx/functions/Func1<-TE;Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lrx/internal/util/IndexedRingBuffer;->forEach(Lrx/functions/Func1;I)I

    move-result v0

    return v0
.end method

.method public forEach(Lrx/functions/Func1;I)I
    .locals 2
    .param p2, "startIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TE;",
            "Ljava/lang/Boolean;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 438
    .local p0, "this":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    .local p1, "action":Lrx/functions/Func1;, "Lrx/functions/Func1<-TE;Ljava/lang/Boolean;>;"
    iget-object v1, p0, Lrx/internal/util/IndexedRingBuffer;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Lrx/internal/util/IndexedRingBuffer;->forEach(Lrx/functions/Func1;II)I

    move-result v0

    .line 439
    .local v0, "endedAt":I
    if-lez p2, :cond_1

    iget-object v1, p0, Lrx/internal/util/IndexedRingBuffer;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 441
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, p2}, Lrx/internal/util/IndexedRingBuffer;->forEach(Lrx/functions/Func1;II)I

    move-result v0

    .line 446
    :cond_0
    :goto_0
    return v0

    .line 442
    :cond_1
    iget-object v1, p0, Lrx/internal/util/IndexedRingBuffer;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 444
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 424
    .local p0, "this":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public releaseToPool()V
    .locals 7

    .prologue
    .local p0, "this":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    const/4 v6, 0x0

    .line 267
    iget-object v4, p0, Lrx/internal/util/IndexedRingBuffer;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 268
    .local v1, "maxIndex":I
    const/4 v2, 0x0

    .line 269
    .local v2, "realIndex":I
    iget-object v3, p0, Lrx/internal/util/IndexedRingBuffer;->elements:Lrx/internal/util/IndexedRingBuffer$ElementSection;

    .line 270
    .local v3, "section":Lrx/internal/util/IndexedRingBuffer$ElementSection;, "Lrx/internal/util/IndexedRingBuffer$ElementSection<TE;>;"
    :goto_0
    if-eqz v3, :cond_0

    .line 271
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget v4, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    if-ge v0, v4, :cond_2

    .line 272
    if-lt v2, v1, :cond_1

    .line 273
    const/4 v3, 0x0

    .line 283
    .end local v0    # "i":I
    :cond_0
    iget-object v4, p0, Lrx/internal/util/IndexedRingBuffer;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 284
    iget-object v4, p0, Lrx/internal/util/IndexedRingBuffer;->removedIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 285
    sget-object v4, Lrx/internal/util/IndexedRingBuffer;->POOL:Lrx/internal/util/ObjectPool;

    invoke-virtual {v4, p0}, Lrx/internal/util/ObjectPool;->returnObject(Ljava/lang/Object;)V

    .line 286
    return-void

    .line 278
    .restart local v0    # "i":I
    :cond_1
    # getter for: Lrx/internal/util/IndexedRingBuffer$ElementSection;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    invoke-static {v3}, Lrx/internal/util/IndexedRingBuffer$ElementSection;->access$300(Lrx/internal/util/IndexedRingBuffer$ElementSection;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 271
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 280
    :cond_2
    # getter for: Lrx/internal/util/IndexedRingBuffer$ElementSection;->next:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v3}, Lrx/internal/util/IndexedRingBuffer$ElementSection;->access$400(Lrx/internal/util/IndexedRingBuffer$ElementSection;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "section":Lrx/internal/util/IndexedRingBuffer$ElementSection;, "Lrx/internal/util/IndexedRingBuffer$ElementSection<TE;>;"
    check-cast v3, Lrx/internal/util/IndexedRingBuffer$ElementSection;

    .restart local v3    # "section":Lrx/internal/util/IndexedRingBuffer$ElementSection;, "Lrx/internal/util/IndexedRingBuffer$ElementSection<TE;>;"
    goto :goto_0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    const/4 v3, 0x0

    .line 317
    sget v2, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    if-ge p1, v2, :cond_0

    .line 319
    iget-object v2, p0, Lrx/internal/util/IndexedRingBuffer;->elements:Lrx/internal/util/IndexedRingBuffer$ElementSection;

    # getter for: Lrx/internal/util/IndexedRingBuffer$ElementSection;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    invoke-static {v2}, Lrx/internal/util/IndexedRingBuffer$ElementSection;->access$300(Lrx/internal/util/IndexedRingBuffer$ElementSection;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v2

    invoke-virtual {v2, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 324
    .local v0, "e":Ljava/lang/Object;, "TE;"
    :goto_0
    invoke-direct {p0, p1}, Lrx/internal/util/IndexedRingBuffer;->pushRemovedIndex(I)V

    .line 325
    return-object v0

    .line 321
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_0
    sget v2, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    rem-int v1, p1, v2

    .line 322
    .local v1, "sectionIndex":I
    invoke-direct {p0, p1}, Lrx/internal/util/IndexedRingBuffer;->getElementSection(I)Lrx/internal/util/IndexedRingBuffer$ElementSection;

    move-result-object v2

    # getter for: Lrx/internal/util/IndexedRingBuffer$ElementSection;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    invoke-static {v2}, Lrx/internal/util/IndexedRingBuffer$ElementSection;->access$300(Lrx/internal/util/IndexedRingBuffer$ElementSection;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v2

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .restart local v0    # "e":Ljava/lang/Object;, "TE;"
    goto :goto_0
.end method

.method public unsubscribe()V
    .locals 0

    .prologue
    .line 290
    .local p0, "this":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    invoke-virtual {p0}, Lrx/internal/util/IndexedRingBuffer;->releaseToPool()V

    .line 291
    return-void
.end method
