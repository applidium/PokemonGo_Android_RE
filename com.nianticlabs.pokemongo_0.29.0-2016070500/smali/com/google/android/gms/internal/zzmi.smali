.class public Lcom/google/android/gms/internal/zzmi;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static mBaseCache:[Ljava/lang/Object;

.field static mBaseCacheSize:I

.field static mTwiceBaseCache:[Ljava/lang/Object;

.field static mTwiceBaseCacheSize:I


# instance fields
.field mArray:[Ljava/lang/Object;

.field mHashes:[I

.field mSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/zzmf;->EMPTY_INTS:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    sget-object v0, Lcom/google/android/gms/internal/zzmf;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzmf;->EMPTY_INTS:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    sget-object v0, Lcom/google/android/gms/internal/zzmf;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzmi;->zzbO(I)V

    goto :goto_0
.end method

.method private static zza([I[Ljava/lang/Object;I)V
    .locals 4

    const/16 v2, 0xa

    const/4 v3, 0x2

    array-length v0, p0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    const-class v1, Lcom/google/android/gms/internal/zzme;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/google/android/gms/internal/zzmi;->mTwiceBaseCacheSize:I

    if-ge v0, v2, :cond_1

    const/4 v0, 0x0

    sget-object v2, Lcom/google/android/gms/internal/zzmi;->mTwiceBaseCache:[Ljava/lang/Object;

    aput-object v2, p1, v0

    const/4 v0, 0x1

    aput-object p0, p1, v0

    shl-int/lit8 v0, p2, 0x1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lt v0, v3, :cond_0

    const/4 v2, 0x0

    aput-object v2, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    sput-object p1, Lcom/google/android/gms/internal/zzmi;->mTwiceBaseCache:[Ljava/lang/Object;

    sget v0, Lcom/google/android/gms/internal/zzmi;->mTwiceBaseCacheSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/google/android/gms/internal/zzmi;->mTwiceBaseCacheSize:I

    :cond_1
    monitor-exit v1

    :cond_2
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const-class v1, Lcom/google/android/gms/internal/zzme;

    monitor-enter v1

    :try_start_1
    sget v0, Lcom/google/android/gms/internal/zzmi;->mBaseCacheSize:I

    if-ge v0, v2, :cond_5

    const/4 v0, 0x0

    sget-object v2, Lcom/google/android/gms/internal/zzmi;->mBaseCache:[Ljava/lang/Object;

    aput-object v2, p1, v0

    const/4 v0, 0x1

    aput-object p0, p1, v0

    shl-int/lit8 v0, p2, 0x1

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-lt v0, v3, :cond_4

    const/4 v2, 0x0

    aput-object v2, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    sput-object p1, Lcom/google/android/gms/internal/zzmi;->mBaseCache:[Ljava/lang/Object;

    sget v0, Lcom/google/android/gms/internal/zzmi;->mBaseCacheSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/google/android/gms/internal/zzmi;->mBaseCacheSize:I

    :cond_5
    monitor-exit v1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method private zzbO(I)V
    .locals 5

    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    const-class v1, Lcom/google/android/gms/internal/zzme;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzmi;->mTwiceBaseCache:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v2, Lcom/google/android/gms/internal/zzmi;->mTwiceBaseCache:[Ljava/lang/Object;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object v0, v2, v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    sput-object v0, Lcom/google/android/gms/internal/zzmi;->mTwiceBaseCache:[Ljava/lang/Object;

    const/4 v0, 0x1

    aget-object v0, v2, v0

    check-cast v0, [I

    check-cast v0, [I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v4, v2, v0

    sget v0, Lcom/google/android/gms/internal/zzmi;->mTwiceBaseCacheSize:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/google/android/gms/internal/zzmi;->mTwiceBaseCacheSize:I

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_1
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    shl-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const-class v1, Lcom/google/android/gms/internal/zzme;

    monitor-enter v1

    :try_start_2
    sget-object v0, Lcom/google/android/gms/internal/zzmi;->mBaseCache:[Ljava/lang/Object;

    if-eqz v0, :cond_3

    sget-object v2, Lcom/google/android/gms/internal/zzmi;->mBaseCache:[Ljava/lang/Object;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object v0, v2, v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    sput-object v0, Lcom/google/android/gms/internal/zzmi;->mBaseCache:[Ljava/lang/Object;

    const/4 v0, 0x1

    aget-object v0, v2, v0

    check-cast v0, [I

    check-cast v0, [I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v4, v2, v0

    sget v0, Lcom/google/android/gms/internal/zzmi;->mBaseCacheSize:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/google/android/gms/internal/zzmi;->mBaseCacheSize:I

    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzmi;->zza([I[Ljava/lang/Object;I)V

    sget-object v0, Lcom/google/android/gms/internal/zzmf;->EMPTY_INTS:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    sget-object v0, Lcom/google/android/gms/internal/zzmf;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/zzmi;, "Lcom/google/android/gms/internal/zzmi<TK;TV;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmi;->indexOfNull()I

    move-result v2

    if-ltz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/internal/zzmi;->indexOf(Ljava/lang/Object;I)I

    move-result v2

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/zzmi;, "Lcom/google/android/gms/internal/zzmi<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzmi;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ensureCapacity(I)V
    .locals 5
    .param p1, "minimumCapacity"    # I

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/zzmi;, "Lcom/google/android/gms/internal/zzmi<TK;TV;>;"
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    array-length v0, v0

    if-ge v0, p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzmi;->zzbO(I)V

    iget v2, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    iget v3, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    iget v3, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    shl-int/lit8 v3, v3, 0x1

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget v2, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzmi;->zza([I[Ljava/lang/Object;I)V

    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/zzmi;, "Lcom/google/android/gms/internal/zzmi<TK;TV;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    .end local p1    # "object":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Ljava/util/Map;

    if-eqz v2, :cond_6

    check-cast p1, Ljava/util/Map;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmi;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_1
    :try_start_0
    iget v3, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    if-ge v2, v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/zzmi;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/zzmi;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_4

    if-nez v5, :cond_3

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0

    .restart local p1    # "object":Ljava/lang/Object;
    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/zzmi;, "Lcom/google/android/gms/internal/zzmi<TK;TV;>;"
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmi;->indexOfNull()I

    move-result v0

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    aget-object v0, v1, v0

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzmi;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public hashCode()I
    .locals 9

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    iget-object v6, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    const/4 v0, 0x1

    iget v7, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    move v2, v0

    move v3, v1

    move v4, v1

    :goto_0
    if-ge v3, v7, :cond_1

    aget-object v0, v6, v2

    aget v8, v5, v3

    if-nez v0, :cond_0

    move v0, v1

    :goto_1
    xor-int/2addr v0, v8

    add-int/2addr v4, v0

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v2, 0x2

    move v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_1
    return v4
.end method

.method indexOf(Ljava/lang/Object;I)I
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/zzmi;, "Lcom/google/android/gms/internal/zzmi<TK;TV;>;"
    iget v2, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    if-nez v2, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    invoke-static {v0, v2, p2}, Lcom/google/android/gms/internal/zzmf;->binarySearch([III)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v3, v0, 0x1

    aget-object v1, v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    :goto_1
    if-ge v1, v2, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    aget v3, v3, v1

    if-ne v3, p2, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    aget v2, v2, v0

    if-ne v2, p2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    xor-int/lit8 v0, v1, -0x1

    goto :goto_0
.end method

.method indexOfNull()I
    .locals 5

    iget v2, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    if-nez v2, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/zzmf;->binarySearch([III)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v3, v0, 0x1

    aget-object v1, v1, v3

    if-eqz v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    :goto_1
    if-ge v1, v2, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    aget v3, v3, v1

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    if-nez v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    aget v2, v2, v0

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    xor-int/lit8 v0, v1, -0x1

    goto :goto_0
.end method

.method indexOfValue(Ljava/lang/Object;)I
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/zzmi;, "Lcom/google/android/gms/internal/zzmi<TK;TV;>;"
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    mul-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    if-nez p1, :cond_2

    :goto_0
    if-ge v0, v1, :cond_3

    aget-object v3, v2, v0

    if-nez v3, :cond_0

    shr-int/lit8 v0, v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x2

    :cond_2
    if-ge v0, v1, :cond_3

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    shr-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keyAt(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/zzmi;, "Lcom/google/android/gms/internal/zzmi<TK;TV;>;"
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/zzmi;, "Lcom/google/android/gms/internal/zzmi<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/16 v0, 0x8

    const/4 v1, 0x4

    const/4 v4, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmi;->indexOfNull()I

    move-result v2

    move v3, v4

    :goto_0
    if-ltz v2, :cond_1

    shl-int/lit8 v0, v2, 0x1

    add-int/lit8 v1, v0, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    aput-object p2, v2, v1

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Lcom/google/android/gms/internal/zzmi;->indexOf(Ljava/lang/Object;I)I

    move-result v2

    goto :goto_0

    :cond_1
    xor-int/lit8 v2, v2, -0x1

    iget v5, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    iget-object v6, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    array-length v6, v6

    if-lt v5, v6, :cond_4

    iget v5, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    if-lt v5, v0, :cond_6

    iget v0, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    iget v1, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    iget-object v5, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzmi;->zzbO(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    array-length v0, v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    array-length v6, v1

    invoke-static {v1, v4, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    array-length v6, v5

    invoke-static {v5, v4, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    invoke-static {v1, v5, v0}, Lcom/google/android/gms/internal/zzmi;->zza([I[Ljava/lang/Object;I)V

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    if-ge v2, v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    add-int/lit8 v4, v2, 0x1

    iget v5, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    sub-int/2addr v5, v2

    invoke-static {v0, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, v2, 0x1

    iget-object v4, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    add-int/lit8 v5, v2, 0x1

    shl-int/lit8 v5, v5, 0x1

    iget v6, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    sub-int/2addr v6, v2

    shl-int/lit8 v6, v6, 0x1

    invoke-static {v0, v1, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    aput v3, v0, v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, v2, 0x1

    aput-object p1, v0, v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    aput-object p2, v0, v1

    iget v0, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    iget v5, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    if-ge v5, v1, :cond_2

    move v0, v1

    goto :goto_2
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/zzmi;, "Lcom/google/android/gms/internal/zzmi<TK;TV;>;"
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmi;->indexOfNull()I

    move-result v0

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzmi;->removeAt(I)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzmi;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public removeAt(I)Ljava/lang/Object;
    .locals 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/zzmi;, "Lcom/google/android/gms/internal/zzmi<TK;TV;>;"
    const/4 v6, 0x0

    const/16 v0, 0x8

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v2, p1, 0x1

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    iget v2, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    iget v3, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/zzmi;->zza([I[Ljava/lang/Object;I)V

    sget-object v0, Lcom/google/android/gms/internal/zzmf;->EMPTY_INTS:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    sget-object v0, Lcom/google/android/gms/internal/zzmf;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    iput v5, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    array-length v2, v2

    if-le v2, v0, :cond_4

    iget v2, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    iget-object v3, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    array-length v3, v3

    div-int/lit8 v3, v3, 0x3

    if-ge v2, v3, :cond_4

    iget v2, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    if-le v2, v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    iget v2, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    iget-object v3, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzmi;->zzbO(I)V

    iget v0, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    if-lez p1, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    invoke-static {v2, v5, v0, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, p1, 0x1

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    if-ge p1, v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    iget-object v4, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    iget v5, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    sub-int/2addr v5, p1

    invoke-static {v2, v0, v4, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, p1, 0x1

    shl-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, p1, 0x1

    iget v5, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    sub-int/2addr v5, p1

    shl-int/lit8 v5, v5, 0x1

    invoke-static {v3, v0, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    iget v0, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    if-ge p1, v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzmi;->mHashes:[I

    iget v4, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    sub-int/2addr v4, p1

    invoke-static {v0, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    shl-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, p1, 0x1

    iget v5, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    sub-int/2addr v5, p1

    shl-int/lit8 v5, v5, 0x1

    invoke-static {v0, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    shl-int/lit8 v2, v2, 0x1

    aput-object v6, v0, v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    shl-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    aput-object v6, v0, v2

    goto/16 :goto_0
.end method

.method public setValueAt(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/zzmi;, "Lcom/google/android/gms/internal/zzmi<TK;TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    shl-int/lit8 v0, p1, 0x1

    add-int/lit8 p1, v0, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    aput-object p2, v1, p1

    return-object v0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmi;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "{}"

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    mul-int/lit8 v0, v0, 0x1c

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v0, 0x7b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lcom/google/android/gms/internal/zzmi;->mSize:I

    if-ge v0, v2, :cond_4

    if-lez v0, :cond_1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzmi;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p0, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_2
    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzmi;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p0, :cond_3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-string v2, "(this Map)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const-string v2, "(this Map)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/zzmi;, "Lcom/google/android/gms/internal/zzmi<TK;TV;>;"
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmi;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method
