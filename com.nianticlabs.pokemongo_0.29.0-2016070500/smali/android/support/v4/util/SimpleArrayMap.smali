.class public Landroid/support/v4/util/SimpleArrayMap;
.super Ljava/lang/Object;
.source "SimpleArrayMap.java"


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
.field private static final BASE_SIZE:I = 0x4

.field private static final CACHE_SIZE:I = 0xa

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ArrayMap"

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

    .prologue
    .line 208
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    sget-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 210
    sget-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 211
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 212
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 217
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    if-nez p1, :cond_0

    .line 219
    sget-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 220
    sget-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 224
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 225
    return-void

    .line 222
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->allocArrays(I)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/support/v4/util/SimpleArrayMap;)V
    .locals 0
    .param p1, "map"    # Landroid/support/v4/util/SimpleArrayMap;

    .prologue
    .line 231
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-direct {p0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    .line 232
    if-eqz p1, :cond_0

    .line 233
    invoke-virtual {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->putAll(Landroid/support/v4/util/SimpleArrayMap;)V

    .line 235
    :cond_0
    return-void
.end method

.method private allocArrays(I)V
    .locals 5
    .param p1, "size"    # I

    .prologue
    .line 138
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    const/16 v1, 0x8

    if-ne p1, v1, :cond_2

    .line 139
    const-class v2, Landroid/support/v4/util/ArrayMap;

    monitor-enter v2

    .line 140
    :try_start_0
    sget-object v1, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 141
    sget-object v0, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 142
    .local v0, "array":[Ljava/lang/Object;
    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 143
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    sput-object v1, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 144
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, [I

    check-cast v1, [I

    iput-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 145
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v0, v3

    aput-object v4, v0, v1

    .line 146
    sget v1, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCacheSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCacheSize:I

    .line 149
    monitor-exit v2

    .line 170
    .end local v0    # "array":[Ljava/lang/Object;
    :goto_0
    return-void

    .line 151
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :cond_1
    :goto_1
    new-array v1, p1, [I

    iput-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 169
    shl-int/lit8 v1, p1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    goto :goto_0

    .line 151
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 152
    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 153
    const-class v2, Landroid/support/v4/util/ArrayMap;

    monitor-enter v2

    .line 154
    :try_start_2
    sget-object v1, Landroid/support/v4/util/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 155
    sget-object v0, Landroid/support/v4/util/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    .line 156
    .restart local v0    # "array":[Ljava/lang/Object;
    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 157
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    sput-object v1, Landroid/support/v4/util/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    .line 158
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, [I

    check-cast v1, [I

    iput-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 159
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v0, v3

    aput-object v4, v0, v1

    .line 160
    sget v1, Landroid/support/v4/util/SimpleArrayMap;->mBaseCacheSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Landroid/support/v4/util/SimpleArrayMap;->mBaseCacheSize:I

    .line 163
    monitor-exit v2

    goto :goto_0

    .line 165
    .end local v0    # "array":[Ljava/lang/Object;
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_3
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1
.end method

.method private static freeArrays([I[Ljava/lang/Object;I)V
    .locals 5
    .param p0, "hashes"    # [I
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "size"    # I

    .prologue
    const/16 v3, 0xa

    const/4 v4, 0x2

    .line 173
    array-length v1, p0

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 174
    const-class v2, Landroid/support/v4/util/ArrayMap;

    monitor-enter v2

    .line 175
    :try_start_0
    sget v1, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCacheSize:I

    if-ge v1, v3, :cond_1

    .line 176
    const/4 v1, 0x0

    sget-object v3, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    aput-object v3, p1, v1

    .line 177
    const/4 v1, 0x1

    aput-object p0, p1, v1

    .line 178
    shl-int/lit8 v1, p2, 0x1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, v4, :cond_0

    .line 179
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 178
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 181
    :cond_0
    sput-object p1, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 182
    sget v1, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCacheSize:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCacheSize:I

    .line 186
    .end local v0    # "i":I
    :cond_1
    monitor-exit v2

    .line 202
    :cond_2
    :goto_1
    return-void

    .line 186
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 187
    :cond_3
    array-length v1, p0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 188
    const-class v2, Landroid/support/v4/util/ArrayMap;

    monitor-enter v2

    .line 189
    :try_start_1
    sget v1, Landroid/support/v4/util/SimpleArrayMap;->mBaseCacheSize:I

    if-ge v1, v3, :cond_5

    .line 190
    const/4 v1, 0x0

    sget-object v3, Landroid/support/v4/util/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    aput-object v3, p1, v1

    .line 191
    const/4 v1, 0x1

    aput-object p0, p1, v1

    .line 192
    shl-int/lit8 v1, p2, 0x1

    add-int/lit8 v0, v1, -0x1

    .restart local v0    # "i":I
    :goto_2
    if-lt v0, v4, :cond_4

    .line 193
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 192
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 195
    :cond_4
    sput-object p1, Landroid/support/v4/util/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    .line 196
    sget v1, Landroid/support/v4/util/SimpleArrayMap;->mBaseCacheSize:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/support/v4/util/SimpleArrayMap;->mBaseCacheSize:I

    .line 200
    .end local v0    # "i":I
    :cond_5
    monitor-exit v2

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 241
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    iget v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/util/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 243
    sget-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 244
    sget-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 245
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 247
    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 273
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 313
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->indexOfValue(Ljava/lang/Object;)I

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
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    const/4 v4, 0x0

    .line 254
    iget-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    array-length v2, v2

    if-ge v2, p1, :cond_1

    .line 255
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 256
    .local v1, "ohashes":[I
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 257
    .local v0, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->allocArrays(I)V

    .line 258
    iget v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-lez v2, :cond_0

    .line 259
    iget-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    iget v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 260
    iget-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    iget v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    shl-int/lit8 v3, v3, 0x1

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 262
    :cond_0
    iget v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    invoke-static {v1, v0, v2}, Landroid/support/v4/util/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 264
    .end local v0    # "oarray":[Ljava/lang/Object;
    .end local v1    # "ohashes":[I
    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 532
    if-ne p0, p1, :cond_1

    .line 561
    :cond_0
    :goto_0
    return v6

    .line 535
    :cond_1
    instance-of v8, p1, Ljava/util/Map;

    if-eqz v8, :cond_6

    move-object v3, p1

    .line 536
    check-cast v3, Ljava/util/Map;

    .line 537
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-virtual {p0}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v8

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v9

    if-eq v8, v9, :cond_2

    move v6, v7

    .line 538
    goto :goto_0

    .line 542
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_0
    iget v8, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-ge v0, v8, :cond_0

    .line 543
    invoke-virtual {p0, v0}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 544
    .local v2, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v0}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 545
    .local v4, "mine":Ljava/lang/Object;, "TV;"
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 546
    .local v5, "theirs":Ljava/lang/Object;
    if-nez v4, :cond_4

    .line 547
    if-nez v5, :cond_3

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    :cond_3
    move v6, v7

    .line 548
    goto :goto_0

    .line 550
    :cond_4
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    if-nez v8, :cond_5

    move v6, v7

    .line 551
    goto :goto_0

    .line 542
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 554
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v4    # "mine":Ljava/lang/Object;, "TV;"
    .end local v5    # "theirs":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .local v1, "ignored":Ljava/lang/NullPointerException;
    move v6, v7

    .line 555
    goto :goto_0

    .line 556
    .end local v1    # "ignored":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .local v1, "ignored":Ljava/lang/ClassCastException;
    move v6, v7

    .line 557
    goto :goto_0

    .end local v0    # "i":I
    .end local v1    # "ignored":Ljava/lang/ClassCastException;
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :cond_6
    move v6, v7

    .line 561
    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 323
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 324
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v2, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    .line 569
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 570
    .local v1, "hashes":[I
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 571
    .local v0, "array":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 572
    .local v3, "result":I
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v5, 0x1

    .local v5, "v":I
    iget v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .local v4, "s":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 573
    aget-object v6, v0, v5

    .line 574
    .local v6, "value":Ljava/lang/Object;
    aget v8, v1, v2

    if-nez v6, :cond_0

    const/4 v7, 0x0

    :goto_1
    xor-int/2addr v7, v8

    add-int/2addr v3, v7

    .line 572
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 574
    :cond_0
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_1

    .line 576
    .end local v6    # "value":Ljava/lang/Object;
    :cond_1
    return v3
.end method

.method indexOf(Ljava/lang/Object;I)I
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I

    .prologue
    .line 62
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 65
    .local v0, "N":I
    if-nez v0, :cond_1

    .line 66
    const/4 v3, -0x1

    .line 96
    :cond_0
    :goto_0
    return v3

    .line 69
    :cond_1
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    invoke-static {v4, v0, p2}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([III)I

    move-result v3

    .line 72
    .local v3, "index":I
    if-ltz v3, :cond_0

    .line 77
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v3, 0x1

    aget-object v4, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 83
    add-int/lit8 v1, v3, 0x1

    .local v1, "end":I
    :goto_1
    if-ge v1, v0, :cond_3

    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    aget v4, v4, v1

    if-ne v4, p2, :cond_3

    .line 84
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v1, 0x1

    aget-object v4, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v3, v1

    goto :goto_0

    .line 83
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 88
    :cond_3
    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_2
    if-ltz v2, :cond_5

    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    aget v4, v4, v2

    if-ne v4, p2, :cond_5

    .line 89
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v3, v2

    goto :goto_0

    .line 88
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 96
    :cond_5
    xor-int/lit8 v3, v1, -0x1

    goto :goto_0
.end method

.method public indexOfKey(Ljava/lang/Object;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 283
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/util/SimpleArrayMap;->indexOfNull()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/util/SimpleArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_0
.end method

.method indexOfNull()I
    .locals 6

    .prologue
    .line 100
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 103
    .local v0, "N":I
    if-nez v0, :cond_1

    .line 104
    const/4 v3, -0x1

    .line 134
    :cond_0
    :goto_0
    return v3

    .line 107
    :cond_1
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    const/4 v5, 0x0

    invoke-static {v4, v0, v5}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([III)I

    move-result v3

    .line 110
    .local v3, "index":I
    if-ltz v3, :cond_0

    .line 115
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v3, 0x1

    aget-object v4, v4, v5

    if-eqz v4, :cond_0

    .line 121
    add-int/lit8 v1, v3, 0x1

    .local v1, "end":I
    :goto_1
    if-ge v1, v0, :cond_3

    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    aget v4, v4, v1

    if-nez v4, :cond_3

    .line 122
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v1, 0x1

    aget-object v4, v4, v5

    if-nez v4, :cond_2

    move v3, v1

    goto :goto_0

    .line 121
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 126
    :cond_3
    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_2
    if-ltz v2, :cond_5

    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    aget v4, v4, v2

    if-nez v4, :cond_5

    .line 127
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    if-nez v4, :cond_4

    move v3, v2

    goto :goto_0

    .line 126
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 134
    :cond_5
    xor-int/lit8 v3, v1, -0x1

    goto :goto_0
.end method

.method indexOfValue(Ljava/lang/Object;)I
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 287
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    mul-int/lit8 v0, v3, 0x2

    .line 288
    .local v0, "N":I
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 289
    .local v1, "array":[Ljava/lang/Object;
    if-nez p1, :cond_1

    .line 290
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 291
    aget-object v3, v1, v2

    if-nez v3, :cond_0

    .line 292
    shr-int/lit8 v3, v2, 0x1

    .line 302
    :goto_1
    return v3

    .line 290
    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 296
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 297
    aget-object v3, v1, v2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 298
    shr-int/lit8 v3, v2, 0x1

    goto :goto_1

    .line 296
    :cond_2
    add-int/lit8 v2, v2, 0x2

    goto :goto_2

    .line 302
    :cond_3
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 362
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

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
    .line 333
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/16 v2, 0x8

    const/4 v6, 0x4

    const/4 v9, 0x0

    .line 376
    if-nez p1, :cond_0

    .line 377
    const/4 v0, 0x0

    .line 378
    .local v0, "hash":I
    invoke-virtual {p0}, Landroid/support/v4/util/SimpleArrayMap;->indexOfNull()I

    move-result v1

    .line 383
    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_1

    .line 384
    shl-int/lit8 v6, v1, 0x1

    add-int/lit8 v1, v6, 0x1

    .line 385
    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    aget-object v5, v6, v1

    .line 386
    .local v5, "old":Ljava/lang/Object;, "TV;"
    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    aput-object p2, v6, v1

    .line 421
    .end local v5    # "old":Ljava/lang/Object;, "TV;"
    :goto_1
    return-object v5

    .line 380
    .end local v0    # "hash":I
    .end local v1    # "index":I
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 381
    .restart local v0    # "hash":I
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/util/SimpleArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result v1

    .restart local v1    # "index":I
    goto :goto_0

    .line 390
    :cond_1
    xor-int/lit8 v1, v1, -0x1

    .line 391
    iget v7, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    iget-object v8, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    array-length v8, v8

    if-lt v7, v8, :cond_4

    .line 392
    iget v7, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-lt v7, v2, :cond_6

    iget v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    iget v7, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    shr-int/lit8 v7, v7, 0x1

    add-int v2, v6, v7

    .line 397
    .local v2, "n":I
    :cond_2
    :goto_2
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 398
    .local v4, "ohashes":[I
    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 399
    .local v3, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v2}, Landroid/support/v4/util/SimpleArrayMap;->allocArrays(I)V

    .line 401
    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    array-length v6, v6

    if-lez v6, :cond_3

    .line 403
    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    array-length v7, v4

    invoke-static {v4, v9, v6, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 404
    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    array-length v7, v3

    invoke-static {v3, v9, v6, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 407
    :cond_3
    iget v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    invoke-static {v4, v3, v6}, Landroid/support/v4/util/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 410
    .end local v2    # "n":I
    .end local v3    # "oarray":[Ljava/lang/Object;
    .end local v4    # "ohashes":[I
    :cond_4
    iget v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-ge v1, v6, :cond_5

    .line 413
    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    iget-object v7, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    add-int/lit8 v8, v1, 0x1

    iget v9, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    sub-int/2addr v9, v1

    invoke-static {v6, v1, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 414
    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v7, v1, 0x1

    iget-object v8, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    add-int/lit8 v9, v1, 0x1

    shl-int/lit8 v9, v9, 0x1

    iget v10, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    sub-int/2addr v10, v1

    shl-int/lit8 v10, v10, 0x1

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 417
    :cond_5
    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    aput v0, v6, v1

    .line 418
    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v7, v1, 0x1

    aput-object p1, v6, v7

    .line 419
    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v7, v1, 0x1

    add-int/lit8 v7, v7, 0x1

    aput-object p2, v6, v7

    .line 420
    iget v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 421
    const/4 v5, 0x0

    goto :goto_1

    .line 392
    :cond_6
    iget v7, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-ge v7, v6, :cond_2

    move v2, v6

    goto :goto_2
.end method

.method public putAll(Landroid/support/v4/util/SimpleArrayMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/SimpleArrayMap",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    .local p1, "array":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<+TK;+TV;>;"
    const/4 v5, 0x0

    .line 429
    iget v0, p1, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 430
    .local v0, "N":I
    iget v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Landroid/support/v4/util/SimpleArrayMap;->ensureCapacity(I)V

    .line 431
    iget v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-nez v2, :cond_1

    .line 432
    if-lez v0, :cond_0

    .line 433
    iget-object v2, p1, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    invoke-static {v2, v5, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 434
    iget-object v2, p1, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v0, 0x1

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 435
    iput v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 442
    :cond_0
    return-void

    .line 438
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 439
    invoke-virtual {p1, v1}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
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
    .line 451
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 452
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 453
    invoke-virtual {p0, v0}, Landroid/support/v4/util/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 456
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeAt(I)Ljava/lang/Object;
    .locals 10
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    const/4 v9, 0x0

    const/16 v0, 0x8

    const/4 v7, 0x0

    .line 465
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, p1, 0x1

    add-int/lit8 v5, v5, 0x1

    aget-object v3, v4, v5

    .line 466
    .local v3, "old":Ljava/lang/Object;
    iget v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    const/4 v5, 0x1

    if-gt v4, v5, :cond_1

    .line 469
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    iget-object v5, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    iget v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    invoke-static {v4, v5, v6}, Landroid/support/v4/util/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 470
    sget-object v4, Landroid/support/v4/util/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 471
    sget-object v4, Landroid/support/v4/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 472
    iput v7, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 512
    :cond_0
    :goto_0
    return-object v3

    .line 474
    :cond_1
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    array-length v4, v4

    if-le v4, v0, :cond_4

    iget v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    iget-object v5, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    array-length v5, v5

    div-int/lit8 v5, v5, 0x3

    if-ge v4, v5, :cond_4

    .line 478
    iget v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-le v4, v0, :cond_2

    iget v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    iget v5, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    shr-int/lit8 v5, v5, 0x1

    add-int v0, v4, v5

    .line 482
    .local v0, "n":I
    :cond_2
    iget-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 483
    .local v2, "ohashes":[I
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 484
    .local v1, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v0}, Landroid/support/v4/util/SimpleArrayMap;->allocArrays(I)V

    .line 486
    iget v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 487
    if-lez p1, :cond_3

    .line 489
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    invoke-static {v2, v7, v4, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 490
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, p1, 0x1

    invoke-static {v1, v7, v4, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 492
    :cond_3
    iget v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-ge p1, v4, :cond_0

    .line 495
    add-int/lit8 v4, p1, 0x1

    iget-object v5, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    iget v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    sub-int/2addr v6, p1

    invoke-static {v2, v4, v5, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 496
    add-int/lit8 v4, p1, 0x1

    shl-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v6, p1, 0x1

    iget v7, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    sub-int/2addr v7, p1

    shl-int/lit8 v7, v7, 0x1

    invoke-static {v1, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 500
    .end local v0    # "n":I
    .end local v1    # "oarray":[Ljava/lang/Object;
    .end local v2    # "ohashes":[I
    :cond_4
    iget v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 501
    iget v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-ge p1, v4, :cond_5

    .line 504
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    iget v7, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    sub-int/2addr v7, p1

    invoke-static {v4, v5, v6, p1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 505
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    add-int/lit8 v5, p1, 0x1

    shl-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v7, p1, 0x1

    iget v8, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    sub-int/2addr v8, p1

    shl-int/lit8 v8, v8, 0x1

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 508
    :cond_5
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    iget v5, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    shl-int/lit8 v5, v5, 0x1

    aput-object v9, v4, v5

    .line 509
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    iget v5, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    shl-int/lit8 v5, v5, 0x1

    add-int/lit8 v5, v5, 0x1

    aput-object v9, v4, v5

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
    .line 352
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 p1, v1, 0x1

    .line 353
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    aget-object v0, v1, p1

    .line 354
    .local v0, "old":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    aput-object p2, v1, p1

    .line 355
    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 519
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 588
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-virtual {p0}, Landroid/support/v4/util/SimpleArrayMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 589
    const-string v4, "{}"

    .line 613
    :goto_0
    return-object v4

    .line 592
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    mul-int/lit8 v4, v4, 0x1c

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 593
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v4, 0x7b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 594
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-ge v1, v4, :cond_4

    .line 595
    if-lez v1, :cond_1

    .line 596
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    :cond_1
    invoke-virtual {p0, v1}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 599
    .local v2, "key":Ljava/lang/Object;
    if-eq v2, p0, :cond_2

    .line 600
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 604
    :goto_2
    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 605
    invoke-virtual {p0, v1}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 606
    .local v3, "value":Ljava/lang/Object;
    if-eq v3, p0, :cond_3

    .line 607
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 594
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 602
    .end local v3    # "value":Ljava/lang/Object;
    :cond_2
    const-string v4, "(this Map)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 609
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_3
    const-string v4, "(this Map)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 612
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_4
    const/16 v4, 0x7d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 613
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

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
    .line 342
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method
