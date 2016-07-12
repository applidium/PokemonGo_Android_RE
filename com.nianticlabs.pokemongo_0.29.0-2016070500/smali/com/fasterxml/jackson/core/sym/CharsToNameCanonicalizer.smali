.class public final Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;
.super Ljava/lang/Object;
.source "CharsToNameCanonicalizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;
    }
.end annotation


# static fields
.field protected static final DEFAULT_T_SIZE:I = 0x40

.field public static final HASH_MULT:I = 0x21

.field static final MAX_COLL_CHAIN_LENGTH:I = 0x64

.field static final MAX_ENTRIES_FOR_REUSE:I = 0x2ee0

.field protected static final MAX_T_SIZE:I = 0x10000

.field static final sBootstrapSymbolTable:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;


# instance fields
.field protected _buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

.field protected _canonicalize:Z

.field protected _dirty:Z

.field protected final _flags:I

.field private final _hashSeed:I

.field protected _indexMask:I

.field protected _longestCollisionList:I

.field protected _overflows:Ljava/util/BitSet;

.field protected _parent:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

.field protected _size:I

.field protected _sizeThreshold:I

.field protected _symbols:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->sBootstrapSymbolTable:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput-boolean v2, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_canonicalize:Z

    .line 239
    const/4 v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_flags:I

    .line 241
    iput-boolean v2, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_dirty:Z

    .line 242
    iput v1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_hashSeed:I

    .line 243
    iput v1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_longestCollisionList:I

    .line 244
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->initTables(I)V

    .line 245
    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;I[Ljava/lang/String;[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;III)V
    .locals 2
    .param p1, "parent"    # Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;
    .param p2, "flags"    # I
    .param p3, "symbols"    # [Ljava/lang/String;
    .param p4, "buckets"    # [Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;
    .param p5, "size"    # I
    .param p6, "hashSeed"    # I
    .param p7, "longestColl"    # I

    .prologue
    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput-object p1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_parent:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    .line 268
    iput p2, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_flags:I

    .line 269
    sget-object v1, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->CANONICALIZE_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->enabledIn(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_canonicalize:Z

    .line 271
    iput-object p3, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    .line 272
    iput-object p4, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    .line 273
    iput p5, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_size:I

    .line 274
    iput p6, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_hashSeed:I

    .line 276
    array-length v0, p3

    .line 277
    .local v0, "arrayLen":I
    invoke-static {v0}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_thresholdSize(I)I

    move-result v1

    iput v1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_sizeThreshold:I

    .line 278
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_indexMask:I

    .line 279
    iput p7, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_longestCollisionList:I

    .line 282
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_dirty:Z

    .line 283
    return-void
.end method

.method private _addSymbol([CIIII)Ljava/lang/String;
    .locals 6
    .param p1, "buffer"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I
    .param p4, "h"    # I
    .param p5, "index"    # I

    .prologue
    .line 489
    iget-boolean v4, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_dirty:Z

    if-nez v4, :cond_2

    .line 490
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->copyArrays()V

    .line 491
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_dirty:Z

    .line 500
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 501
    .local v3, "newSymbol":Ljava/lang/String;
    sget-object v4, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->INTERN_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    iget v5, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_flags:I

    invoke-virtual {v4, v5}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->enabledIn(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 502
    sget-object v4, Lcom/fasterxml/jackson/core/util/InternCache;->instance:Lcom/fasterxml/jackson/core/util/InternCache;

    invoke-virtual {v4, v3}, Lcom/fasterxml/jackson/core/util/InternCache;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 504
    :cond_1
    iget v4, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_size:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_size:I

    .line 506
    iget-object v4, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    aget-object v4, v4, p5

    if-nez v4, :cond_3

    .line 507
    iget-object v4, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    aput-object v3, v4, p5

    .line 523
    :goto_1
    return-object v3

    .line 492
    .end local v3    # "newSymbol":Ljava/lang/String;
    :cond_2
    iget v4, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_size:I

    iget v5, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_sizeThreshold:I

    if-lt v4, v5, :cond_0

    .line 493
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->rehash()V

    .line 497
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->calcHash([CII)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_hashToIndex(I)I

    move-result p5

    goto :goto_0

    .line 509
    .restart local v3    # "newSymbol":Ljava/lang/String;
    :cond_3
    shr-int/lit8 v0, p5, 0x1

    .line 510
    .local v0, "bix":I
    new-instance v2, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    iget-object v4, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    aget-object v4, v4, v0

    invoke-direct {v2, v3, v4}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;)V

    .line 511
    .local v2, "newB":Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;
    iget v1, v2, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->length:I

    .line 512
    .local v1, "collLen":I
    const/16 v4, 0x64

    if-le v1, v4, :cond_4

    .line 516
    invoke-direct {p0, v0, v2}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_handleSpillOverflow(ILcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;)V

    goto :goto_1

    .line 518
    :cond_4
    iget-object v4, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    aput-object v2, v4, v0

    .line 519
    iget v4, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_longestCollisionList:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_longestCollisionList:I

    goto :goto_1
.end method

.method private _findSymbol2([CIILcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;)Ljava/lang/String;
    .locals 1
    .param p1, "buffer"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I
    .param p4, "b"    # Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    .prologue
    .line 477
    :goto_0
    if-eqz p4, :cond_1

    .line 478
    invoke-virtual {p4, p1, p2, p3}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->has([CII)Ljava/lang/String;

    move-result-object v0

    .line 479
    .local v0, "sym":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 484
    .end local v0    # "sym":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 482
    .restart local v0    # "sym":Ljava/lang/String;
    :cond_0
    iget-object p4, p4, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->next:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    .line 483
    goto :goto_0

    .line 484
    .end local v0    # "sym":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private _handleSpillOverflow(ILcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;)V
    .locals 3
    .param p1, "bindex"    # I
    .param p2, "newBucket"    # Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    .prologue
    .line 528
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_overflows:Ljava/util/BitSet;

    if-nez v0, :cond_0

    .line 529
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_overflows:Ljava/util/BitSet;

    .line 530
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_overflows:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    .line 544
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    add-int v1, p1, p1

    iget-object v2, p2, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->symbol:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 545
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 547
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_size:I

    iget v1, p2, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->length:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_size:I

    .line 549
    const/4 v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_longestCollisionList:I

    .line 550
    return-void

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_overflows:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 534
    sget-object v0, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->FAIL_ON_SYMBOL_HASH_OVERFLOW:Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    iget v1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_flags:I

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->enabledIn(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 535
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->reportTooManyCollisions(I)V

    .line 538
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_canonicalize:Z

    goto :goto_0

    .line 540
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_overflows:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0
.end method

.method private static _thresholdSize(I)I
    .locals 1
    .param p0, "hashAreaSize"    # I

    .prologue
    .line 259
    shr-int/lit8 v0, p0, 0x2

    sub-int v0, p0, v0

    return v0
.end method

.method private copyArrays()V
    .locals 3

    .prologue
    .line 605
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    .line 606
    .local v1, "oldSyms":[Ljava/lang/String;
    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    .line 607
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    .line 608
    .local v0, "oldBuckets":[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;
    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    iput-object v2, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    .line 609
    return-void
.end method

.method public static createRoot()Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;
    .locals 6

    .prologue
    .line 223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 225
    .local v0, "now":J
    long-to-int v3, v0

    const/16 v4, 0x20

    ushr-long v4, v0, v4

    long-to-int v4, v4

    add-int/2addr v3, v4

    or-int/lit8 v2, v3, 0x1

    .line 226
    .local v2, "seed":I
    invoke-static {v2}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->createRoot(I)Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    move-result-object v3

    return-object v3
.end method

.method protected static createRoot(I)Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;
    .locals 1
    .param p0, "hashSeed"    # I

    .prologue
    .line 230
    sget-object v0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->sBootstrapSymbolTable:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->makeOrphan(I)Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    move-result-object v0

    return-object v0
.end method

.method private initTables(I)V
    .locals 2
    .param p1, "initialSize"    # I

    .prologue
    const/4 v1, 0x0

    .line 249
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    .line 250
    shr-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    .line 252
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_indexMask:I

    .line 253
    iput v1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_size:I

    .line 254
    iput v1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_longestCollisionList:I

    .line 256
    invoke-static {p1}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_thresholdSize(I)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_sizeThreshold:I

    .line 257
    return-void
.end method

.method private makeOrphan(I)Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;
    .locals 8
    .param p1, "seed"    # I

    .prologue
    .line 320
    new-instance v0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    const/4 v1, 0x0

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    iget-object v4, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    iget v5, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_size:I

    iget v7, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_longestCollisionList:I

    move v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;-><init>(Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;I[Ljava/lang/String;[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;III)V

    return-object v0
.end method

.method private mergeChild(Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;)V
    .locals 2
    .param p1, "child"    # Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    .prologue
    .line 337
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->size()I

    move-result v0

    const/16 v1, 0x2ee0

    if-le v0, v1, :cond_1

    .line 341
    monitor-enter p0

    .line 342
    const/16 v0, 0x100

    :try_start_0
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->initTables(I)V

    .line 345
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_dirty:Z

    .line 346
    monitor-exit p0

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 346
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 350
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 354
    monitor-enter p0

    .line 355
    :try_start_1
    iget-object v0, p1, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    .line 356
    iget-object v0, p1, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    .line 357
    iget v0, p1, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_size:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_size:I

    .line 358
    iget v0, p1, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_sizeThreshold:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_sizeThreshold:I

    .line 359
    iget v0, p1, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_indexMask:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_indexMask:I

    .line 360
    iget v0, p1, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_longestCollisionList:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_longestCollisionList:I

    .line 363
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_dirty:Z

    .line 364
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method private rehash()V
    .locals 15

    .prologue
    const/4 v13, 0x0

    .line 619
    iget-object v12, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    array-length v10, v12

    .line 620
    .local v10, "size":I
    add-int v7, v10, v10

    .line 626
    .local v7, "newSize":I
    const/high16 v12, 0x10000

    if-le v7, v12, :cond_1

    .line 630
    iput v13, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_size:I

    .line 631
    iput-boolean v13, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_canonicalize:Z

    .line 633
    const/16 v12, 0x40

    new-array v12, v12, [Ljava/lang/String;

    iput-object v12, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    .line 634
    const/16 v12, 0x20

    new-array v12, v12, [Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    iput-object v12, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    .line 635
    const/16 v12, 0x3f

    iput v12, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_indexMask:I

    .line 636
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_dirty:Z

    .line 694
    :cond_0
    return-void

    .line 640
    :cond_1
    iget-object v9, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    .line 641
    .local v9, "oldSyms":[Ljava/lang/String;
    iget-object v8, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    .line 642
    .local v8, "oldBuckets":[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;
    new-array v12, v7, [Ljava/lang/String;

    iput-object v12, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    .line 643
    shr-int/lit8 v12, v7, 0x1

    new-array v12, v12, [Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    iput-object v12, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    .line 645
    add-int/lit8 v12, v7, -0x1

    iput v12, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_indexMask:I

    .line 646
    invoke-static {v7}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_thresholdSize(I)I

    move-result v12

    iput v12, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_sizeThreshold:I

    .line 648
    const/4 v2, 0x0

    .line 653
    .local v2, "count":I
    const/4 v5, 0x0

    .line 654
    .local v5, "maxColl":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v10, :cond_4

    .line 655
    aget-object v11, v9, v3

    .line 656
    .local v11, "symbol":Ljava/lang/String;
    if-eqz v11, :cond_2

    .line 657
    add-int/lit8 v2, v2, 0x1

    .line 658
    invoke-virtual {p0, v11}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->calcHash(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {p0, v12}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_hashToIndex(I)I

    move-result v4

    .line 659
    .local v4, "index":I
    iget-object v12, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    aget-object v12, v12, v4

    if-nez v12, :cond_3

    .line 660
    iget-object v12, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    aput-object v11, v12, v4

    .line 654
    .end local v4    # "index":I
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 662
    .restart local v4    # "index":I
    :cond_3
    shr-int/lit8 v1, v4, 0x1

    .line 663
    .local v1, "bix":I
    new-instance v6, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    iget-object v12, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    aget-object v12, v12, v1

    invoke-direct {v6, v11, v12}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;)V

    .line 664
    .local v6, "newB":Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;
    iget-object v12, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    aput-object v6, v12, v1

    .line 665
    iget v12, v6, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->length:I

    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    .line 670
    .end local v1    # "bix":I
    .end local v4    # "index":I
    .end local v6    # "newB":Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;
    .end local v11    # "symbol":Ljava/lang/String;
    :cond_4
    shr-int/lit8 v10, v10, 0x1

    .line 671
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v10, :cond_7

    .line 672
    aget-object v0, v8, v3

    .line 673
    .local v0, "b":Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;
    :goto_3
    if-eqz v0, :cond_6

    .line 674
    add-int/lit8 v2, v2, 0x1

    .line 675
    iget-object v11, v0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->symbol:Ljava/lang/String;

    .line 676
    .restart local v11    # "symbol":Ljava/lang/String;
    invoke-virtual {p0, v11}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->calcHash(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {p0, v12}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_hashToIndex(I)I

    move-result v4

    .line 677
    .restart local v4    # "index":I
    iget-object v12, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    aget-object v12, v12, v4

    if-nez v12, :cond_5

    .line 678
    iget-object v12, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    aput-object v11, v12, v4

    .line 685
    :goto_4
    iget-object v0, v0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->next:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    .line 686
    goto :goto_3

    .line 680
    :cond_5
    shr-int/lit8 v1, v4, 0x1

    .line 681
    .restart local v1    # "bix":I
    new-instance v6, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    iget-object v12, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    aget-object v12, v12, v1

    invoke-direct {v6, v11, v12}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;)V

    .line 682
    .restart local v6    # "newB":Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;
    iget-object v12, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    aput-object v6, v12, v1

    .line 683
    iget v12, v6, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->length:I

    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_4

    .line 671
    .end local v1    # "bix":I
    .end local v4    # "index":I
    .end local v6    # "newB":Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;
    .end local v11    # "symbol":Ljava/lang/String;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 688
    .end local v0    # "b":Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;
    :cond_7
    iput v5, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_longestCollisionList:I

    .line 689
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_overflows:Ljava/util/BitSet;

    .line 691
    iget v12, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_size:I

    if-eq v2, v12, :cond_0

    .line 692
    new-instance v12, Ljava/lang/Error;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Internal error on SymbolTable.rehash(): had "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_size:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " entries; now have "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v12
.end method


# virtual methods
.method public _hashToIndex(I)I
    .locals 1
    .param p1, "rawHash"    # I

    .prologue
    .line 558
    ushr-int/lit8 v0, p1, 0xf

    add-int/2addr p1, v0

    .line 559
    shl-int/lit8 v0, p1, 0x7

    xor-int/2addr p1, v0

    .line 560
    ushr-int/lit8 v0, p1, 0x3

    add-int/2addr p1, v0

    .line 561
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_indexMask:I

    and-int/2addr v0, p1

    return v0
.end method

.method public bucketCount()I
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public calcHash(Ljava/lang/String;)I
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 584
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 586
    .local v2, "len":I
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_hashSeed:I

    .line 587
    .local v0, "hash":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 588
    mul-int/lit8 v3, v0, 0x21

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int v0, v3, v4

    .line 587
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 591
    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x1

    .end local v0    # "hash":I
    :cond_1
    return v0
.end method

.method public calcHash([CII)I
    .locals 5
    .param p1, "buffer"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I

    .prologue
    .line 574
    iget v1, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_hashSeed:I

    .line 575
    .local v1, "hash":I
    move v2, p2

    .local v2, "i":I
    add-int v0, p2, p3

    .local v0, "end":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 576
    mul-int/lit8 v3, v1, 0x21

    aget-char v4, p1, v2

    add-int v1, v3, v4

    .line 575
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 579
    :cond_0
    if-nez v1, :cond_1

    const/4 v1, 0x1

    .end local v1    # "hash":I
    :cond_1
    return v1
.end method

.method public collisionCount()I
    .locals 6

    .prologue
    .line 407
    const/4 v2, 0x0

    .line 409
    .local v2, "count":I
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    .local v0, "arr$":[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 410
    .local v1, "bucket":Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;
    if-eqz v1, :cond_0

    .line 411
    iget v5, v1, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->length:I

    add-int/2addr v2, v5

    .line 409
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 414
    .end local v1    # "bucket":Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;
    :cond_1
    return v2
.end method

.method public findSymbol([CIII)Ljava/lang/String;
    .locals 9
    .param p1, "buffer"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I
    .param p4, "h"    # I

    .prologue
    .line 434
    const/4 v0, 0x1

    if-ge p3, v0, :cond_1

    .line 435
    const-string v8, ""

    .line 473
    :cond_0
    :goto_0
    return-object v8

    .line 437
    :cond_1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_canonicalize:Z

    if-nez v0, :cond_2

    .line 438
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    .line 446
    :cond_2
    invoke-virtual {p0, p4}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_hashToIndex(I)I

    move-result v5

    .line 447
    .local v5, "index":I
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    aget-object v8, v0, v5

    .line 450
    .local v8, "sym":Ljava/lang/String;
    if-eqz v8, :cond_5

    .line 452
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, p3, :cond_4

    .line 453
    const/4 v7, 0x0

    .line 454
    .local v7, "i":I
    :cond_3
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int v1, p2, v7

    aget-char v1, p1, v1

    if-ne v0, v1, :cond_4

    .line 456
    add-int/lit8 v7, v7, 0x1

    if-ne v7, p3, :cond_3

    goto :goto_0

    .line 461
    .end local v7    # "i":I
    :cond_4
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    shr-int/lit8 v1, v5, 0x1

    aget-object v6, v0, v1

    .line 462
    .local v6, "b":Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;
    if-eqz v6, :cond_5

    .line 463
    invoke-virtual {v6, p1, p2, p3}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->has([CII)Ljava/lang/String;

    move-result-object v8

    .line 464
    if-nez v8, :cond_0

    .line 467
    iget-object v0, v6, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;->next:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_findSymbol2([CIILcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;)Ljava/lang/String;

    move-result-object v8

    .line 468
    if-nez v8, :cond_0

    .end local v6    # "b":Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;
    :cond_5
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 473
    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_addSymbol([CIIII)Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method public hashSeed()I
    .locals 1

    .prologue
    .line 397
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_hashSeed:I

    return v0
.end method

.method public makeChild(I)Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;
    .locals 8
    .param p1, "flags"    # I

    .prologue
    .line 308
    monitor-enter p0

    .line 309
    :try_start_0
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_symbols:[Ljava/lang/String;

    .line 310
    .local v3, "symbols":[Ljava/lang/String;
    iget-object v4, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_buckets:[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;

    .line 311
    .local v4, "buckets":[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;
    iget v5, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_size:I

    .line 312
    .local v5, "size":I
    iget v6, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_hashSeed:I

    .line 313
    .local v6, "hashSeed":I
    iget v7, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_longestCollisionList:I

    .line 314
    .local v7, "longestCollisionList":I
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    new-instance v0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;-><init>(Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;I[Ljava/lang/String;[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;III)V

    return-object v0

    .line 314
    .end local v3    # "symbols":[Ljava/lang/String;
    .end local v4    # "buckets":[Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket;
    .end local v5    # "size":I
    .end local v6    # "hashSeed":I
    .end local v7    # "longestCollisionList":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public maxCollisionLength()I
    .locals 1

    .prologue
    .line 424
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_longestCollisionList:I

    return v0
.end method

.method public maybeDirty()Z
    .locals 1

    .prologue
    .line 396
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_dirty:Z

    return v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->maybeDirty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 371
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_parent:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_canonicalize:Z

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_parent:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->mergeChild(Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;)V

    .line 377
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_dirty:Z

    goto :goto_0
.end method

.method protected reportTooManyCollisions(I)V
    .locals 3
    .param p1, "maxLen"    # I

    .prologue
    .line 700
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Longest collision chain in symbol table (of size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") now exceeds maximum, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -- suspect a DoS attack based on hash collisions"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 387
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->_size:I

    return v0
.end method
