.class public final Lcrittercism/android/bg;
.super Lcom/crittercism/app/Transaction;

# interfaces
.implements Lcrittercism/android/ch;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcrittercism/android/bg$a;
    }
.end annotation


# static fields
.field private static b:Ljava/util/concurrent/ExecutorService;

.field private static c:Ljava/util/concurrent/ScheduledExecutorService;

.field private static o:Ljava/util/List;

.field private static volatile p:J

.field private static volatile q:J

.field private static final r:[I

.field private static s:Lcrittercism/android/bg;

.field private static t:Lcrittercism/android/bh;


# instance fields
.field private d:Ljava/lang/String;

.field private e:J

.field private f:I

.field private g:J

.field private h:J

.field private i:J

.field private j:Lcrittercism/android/bg$a;

.field private k:Ljava/util/Map;

.field private l:Ljava/lang/String;

.field private m:J

.field private n:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 52
    new-instance v0, Lcrittercism/android/dz;

    invoke-direct {v0}, Lcrittercism/android/dz;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcrittercism/android/bg;->b:Ljava/util/concurrent/ExecutorService;

    .line 64
    const/4 v0, 0x1

    new-instance v1, Lcrittercism/android/dz;

    invoke-direct {v1}, Lcrittercism/android/dz;-><init>()V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcrittercism/android/bg;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 95
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcrittercism/android/bg;->o:Ljava/util/List;

    .line 96
    sput-wide v2, Lcrittercism/android/bg;->p:J

    .line 97
    sput-wide v2, Lcrittercism/android/bg;->q:J

    .line 110
    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcrittercism/android/bg;->r:[I

    .line 137
    const/4 v0, 0x0

    sput-object v0, Lcrittercism/android/bg;->s:Lcrittercism/android/bg;

    .line 139
    new-instance v0, Lcrittercism/android/bh;

    invoke-direct {v0}, Lcrittercism/android/bh;-><init>()V

    sput-object v0, Lcrittercism/android/bg;->t:Lcrittercism/android/bh;

    return-void

    .line 110
    :array_0
    .array-data 4
        0x20
        0x220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
    .end array-data
.end method

.method public constructor <init>(Lcrittercism/android/az;Ljava/lang/String;)V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/16 v2, 0xff

    const/4 v0, -0x1

    .line 153
    invoke-direct {p0}, Lcom/crittercism/app/Transaction;-><init>()V

    .line 71
    iput-wide v4, p0, Lcrittercism/android/bg;->e:J

    .line 72
    iput v0, p0, Lcrittercism/android/bg;->f:I

    .line 93
    const/4 v1, 0x0

    iput-object v1, p0, Lcrittercism/android/bg;->n:Ljava/util/concurrent/ScheduledFuture;

    .line 154
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_1

    .line 155
    const-string v1, "Transaction name exceeds 255 characters! Truncating to first 255 characters."

    invoke-static {v1}, Lcrittercism/android/dx;->c(Ljava/lang/String;)V

    .line 158
    const/4 v1, 0x0

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcrittercism/android/bg;->d:Ljava/lang/String;

    .line 162
    :goto_0
    sget-object v1, Lcrittercism/android/bg$a;->a:Lcrittercism/android/bg$a;

    iput-object v1, p0, Lcrittercism/android/bg;->j:Lcrittercism/android/bg$a;

    .line 163
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcrittercism/android/bg;->k:Ljava/util/Map;

    .line 164
    iput-object p1, p0, Lcrittercism/android/bg;->a:Lcrittercism/android/az;

    .line 165
    sget-object v1, Lcrittercism/android/cg;->a:Lcrittercism/android/cg;

    invoke-virtual {v1}, Lcrittercism/android/cg;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcrittercism/android/bg;->l:Ljava/lang/String;

    .line 171
    iput-wide v4, p0, Lcrittercism/android/bg;->e:J

    .line 175
    sget-object v1, Lcrittercism/android/bg;->t:Lcrittercism/android/bh;

    iget-object v1, v1, Lcrittercism/android/bh;->d:Lorg/json/JSONObject;

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "value"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    :cond_0
    iput v0, p0, Lcrittercism/android/bg;->f:I

    .line 180
    return-void

    .line 160
    :cond_1
    iput-object p2, p0, Lcrittercism/android/bg;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method private constructor <init>(Lcrittercism/android/bg;)V
    .locals 2

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/crittercism/app/Transaction;-><init>()V

    .line 71
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcrittercism/android/bg;->e:J

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lcrittercism/android/bg;->f:I

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcrittercism/android/bg;->n:Ljava/util/concurrent/ScheduledFuture;

    .line 183
    iget-object v0, p1, Lcrittercism/android/bg;->d:Ljava/lang/String;

    iput-object v0, p0, Lcrittercism/android/bg;->d:Ljava/lang/String;

    .line 184
    iget-wide v0, p1, Lcrittercism/android/bg;->e:J

    iput-wide v0, p0, Lcrittercism/android/bg;->e:J

    .line 185
    iget v0, p1, Lcrittercism/android/bg;->f:I

    iput v0, p0, Lcrittercism/android/bg;->f:I

    .line 186
    iget-wide v0, p1, Lcrittercism/android/bg;->g:J

    iput-wide v0, p0, Lcrittercism/android/bg;->g:J

    .line 187
    iget-wide v0, p1, Lcrittercism/android/bg;->h:J

    iput-wide v0, p0, Lcrittercism/android/bg;->h:J

    .line 188
    iget-object v0, p1, Lcrittercism/android/bg;->j:Lcrittercism/android/bg$a;

    iput-object v0, p0, Lcrittercism/android/bg;->j:Lcrittercism/android/bg$a;

    .line 189
    iget-object v0, p1, Lcrittercism/android/bg;->k:Ljava/util/Map;

    iput-object v0, p0, Lcrittercism/android/bg;->k:Ljava/util/Map;

    .line 190
    iget-object v0, p1, Lcrittercism/android/bg;->l:Ljava/lang/String;

    iput-object v0, p0, Lcrittercism/android/bg;->l:Ljava/lang/String;

    .line 191
    iget-wide v0, p1, Lcrittercism/android/bg;->i:J

    iput-wide v0, p0, Lcrittercism/android/bg;->i:J

    .line 192
    iget-wide v0, p1, Lcrittercism/android/bg;->m:J

    iput-wide v0, p0, Lcrittercism/android/bg;->m:J

    .line 193
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONArray;)V
    .locals 6

    .prologue
    const/4 v4, -0x1

    .line 200
    invoke-direct {p0}, Lcom/crittercism/app/Transaction;-><init>()V

    .line 71
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcrittercism/android/bg;->e:J

    .line 72
    iput v4, p0, Lcrittercism/android/bg;->f:I

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcrittercism/android/bg;->n:Ljava/util/concurrent/ScheduledFuture;

    .line 201
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/bg;->d:Ljava/lang/String;

    .line 202
    invoke-static {}, Lcrittercism/android/bg$a;->values()[Lcrittercism/android/bg$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcrittercism/android/bg;->j:Lcrittercism/android/bg$a;

    .line 203
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcrittercism/android/bg;->e:J

    .line 204
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONArray;->optInt(II)I

    move-result v0

    iput v0, p0, Lcrittercism/android/bg;->f:I

    .line 205
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcrittercism/android/bg;->k:Ljava/util/Map;

    .line 206
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 207
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 208
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 210
    iget-object v3, p0, Lcrittercism/android/bg;->k:Ljava/util/Map;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 212
    :cond_0
    sget-object v0, Lcrittercism/android/ed;->a:Lcrittercism/android/ed;

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcrittercism/android/ed;->a(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcrittercism/android/bg;->g:J

    .line 213
    sget-object v0, Lcrittercism/android/ed;->a:Lcrittercism/android/ed;

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcrittercism/android/ed;->a(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcrittercism/android/bg;->h:J

    .line 215
    const/4 v0, 0x7

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    const-wide/high16 v4, 0x4022000000000000L    # 9.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lcrittercism/android/bg;->i:J

    .line 217
    sget-object v0, Lcrittercism/android/cg;->a:Lcrittercism/android/cg;

    invoke-virtual {v0}, Lcrittercism/android/cg;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/bg;->l:Ljava/lang/String;

    .line 218
    return-void
.end method

.method static synthetic a(Lcrittercism/android/bg;)Lcrittercism/android/bg$a;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcrittercism/android/bg;->j:Lcrittercism/android/bg$a;

    return-object v0
.end method

.method public static a(Lcrittercism/android/az;Z)Ljava/util/List;
    .locals 12

    .prologue
    .line 342
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 343
    sget-object v1, Lcrittercism/android/bg;->o:Ljava/util/List;

    monitor-enter v1

    .line 344
    :try_start_0
    sget-object v0, Lcrittercism/android/bg;->o:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 345
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 348
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 350
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 351
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/bg;

    .line 352
    monitor-enter v0

    .line 353
    :try_start_1
    iget-object v3, v0, Lcrittercism/android/bg;->j:Lcrittercism/android/bg$a;

    sget-object v8, Lcrittercism/android/bg$a;->b:Lcrittercism/android/bg$a;

    if-ne v3, v8, :cond_1

    .line 354
    iput-wide v4, v0, Lcrittercism/android/bg;->h:J

    .line 356
    sget-object v3, Lcrittercism/android/bg$a;->g:Lcrittercism/android/bg$a;

    iput-object v3, v0, Lcrittercism/android/bg;->j:Lcrittercism/android/bg$a;

    .line 359
    invoke-static {}, Lcrittercism/android/bg;->l()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 360
    sget-wide v8, Lcrittercism/android/bg;->p:J

    iget-wide v10, v0, Lcrittercism/android/bg;->m:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 362
    iget-wide v10, v0, Lcrittercism/android/bg;->i:J

    sub-long v8, v6, v8

    add-long/2addr v8, v10

    iput-wide v8, v0, Lcrittercism/android/bg;->i:J

    .line 367
    :cond_0
    :goto_1
    invoke-direct {v0}, Lcrittercism/android/bg;->r()V

    .line 368
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 350
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 345
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 365
    :cond_1
    :try_start_2
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 368
    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1

    .line 378
    :cond_2
    new-instance v0, Lcrittercism/android/bg$2;

    invoke-direct {v0, p0}, Lcrittercism/android/bg$2;-><init>(Lcrittercism/android/az;)V

    .line 389
    new-instance v1, Ljava/util/concurrent/FutureTask;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 390
    sget-object v3, Lcrittercism/android/bg;->b:Ljava/util/concurrent/ExecutorService;

    monitor-enter v3

    .line 391
    :try_start_3
    sget-object v0, Lcrittercism/android/bg;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 392
    if-nez p1, :cond_3

    .line 393
    sget-object v0, Lcrittercism/android/bg;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 397
    :goto_2
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 401
    :try_start_4
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_1

    .line 408
    :goto_3
    return-object v2

    .line 395
    :cond_3
    :try_start_5
    iget-object v0, p0, Lcrittercism/android/az;->z:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    .line 397
    :catchall_2
    move-exception v0

    monitor-exit v3

    throw v0

    .line 402
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 404
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private a(J)V
    .locals 3

    .prologue
    .line 702
    invoke-static {}, Lcrittercism/android/bg;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 703
    sget-object v0, Lcrittercism/android/bg;->c:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcrittercism/android/bg$5;

    invoke-direct {v1, p0}, Lcrittercism/android/bg$5;-><init>(Lcrittercism/android/bg;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/bg;->n:Ljava/util/concurrent/ScheduledFuture;

    .line 713
    :cond_0
    return-void
.end method

.method public static a(Lcrittercism/android/aw;)V
    .locals 6

    .prologue
    .line 424
    :try_start_0
    invoke-interface {p0}, Lcrittercism/android/aw;->w()Lcrittercism/android/bs;

    move-result-object v1

    .line 425
    invoke-virtual {v1}, Lcrittercism/android/bs;->c()Ljava/util/List;

    move-result-object v0

    .line 426
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 427
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/bq;

    .line 428
    check-cast v0, Lcrittercism/android/bz;

    .line 429
    invoke-virtual {v0}, Lcrittercism/android/bz;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    .line 430
    if-eqz v0, :cond_0

    .line 433
    :try_start_1
    new-instance v5, Lcrittercism/android/bg;

    invoke-direct {v5, v0}, Lcrittercism/android/bg;-><init>(Lorg/json/JSONArray;)V

    .line 434
    iput-wide v2, v5, Lcrittercism/android/bg;->h:J

    .line 435
    sget-object v0, Lcrittercism/android/bg$a;->h:Lcrittercism/android/bg$a;

    iput-object v0, v5, Lcrittercism/android/bg;->j:Lcrittercism/android/bg$a;

    .line 436
    invoke-interface {p0}, Lcrittercism/android/aw;->x()Lcrittercism/android/bs;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcrittercism/android/bs;->a(Lcrittercism/android/ch;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 437
    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 448
    :catch_1
    move-exception v0

    throw v0

    .line 440
    :catch_2
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/ThreadDeath; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 450
    :catch_3
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    .line 453
    :goto_1
    return-void

    .line 447
    :cond_1
    :try_start_4
    invoke-virtual {v1}, Lcrittercism/android/bs;->a()V
    :try_end_4
    .catch Ljava/lang/ThreadDeath; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1
.end method

.method public static a(Lcrittercism/android/az;)V
    .locals 10

    .prologue
    .line 273
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lcrittercism/android/bg;->q:J

    .line 274
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 275
    sget-object v2, Lcrittercism/android/bg;->o:Ljava/util/List;

    monitor-enter v2

    .line 276
    :try_start_0
    sget-object v0, Lcrittercism/android/bg;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 277
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 279
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/bg;

    .line 280
    monitor-enter v0

    .line 281
    :try_start_1
    iget-object v3, v0, Lcrittercism/android/bg;->j:Lcrittercism/android/bg$a;

    sget-object v4, Lcrittercism/android/bg$a;->b:Lcrittercism/android/bg$a;

    if-ne v3, v4, :cond_0

    .line 282
    iget-wide v4, v0, Lcrittercism/android/bg;->m:J

    sget-wide v6, Lcrittercism/android/bg;->p:J

    cmp-long v3, v4, v6

    if-ltz v3, :cond_1

    .line 291
    iget-wide v4, v0, Lcrittercism/android/bg;->m:J

    sget-wide v6, Lcrittercism/android/bg;->q:J

    cmp-long v3, v4, v6

    if-gtz v3, :cond_0

    .line 292
    iget-wide v4, v0, Lcrittercism/android/bg;->i:J

    sget-wide v6, Lcrittercism/android/bg;->q:J

    iget-wide v8, v0, Lcrittercism/android/bg;->m:J

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcrittercism/android/bg;->i:J

    .line 300
    :cond_0
    :goto_1
    invoke-direct {v0}, Lcrittercism/android/bg;->r()V

    .line 301
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 277
    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    .line 297
    :cond_1
    :try_start_2
    iget-wide v4, v0, Lcrittercism/android/bg;->i:J

    sget-wide v6, Lcrittercism/android/bg;->q:J

    sget-wide v8, Lcrittercism/android/bg;->p:J

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcrittercism/android/bg;->i:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 302
    :cond_2
    new-instance v0, Lcrittercism/android/bg$1;

    invoke-direct {v0, v1, p0}, Lcrittercism/android/bg$1;-><init>(Ljava/util/List;Lcrittercism/android/az;)V

    .line 319
    new-instance v1, Ljava/util/concurrent/FutureTask;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 320
    sget-object v2, Lcrittercism/android/bg;->b:Ljava/util/concurrent/ExecutorService;

    monitor-enter v2

    .line 321
    :try_start_3
    sget-object v0, Lcrittercism/android/bg;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 322
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 330
    :try_start_4
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_1

    .line 336
    :goto_2
    return-void

    .line 322
    :catchall_2
    move-exception v0

    monitor-exit v2

    throw v0

    .line 331
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 333
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private a(Lcrittercism/android/bg$a;)V
    .locals 3

    .prologue
    .line 662
    sget-object v0, Lcrittercism/android/bg$a;->c:Lcrittercism/android/bg$a;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcrittercism/android/bg$a;->e:Lcrittercism/android/bg$a;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcrittercism/android/bg$a;->i:Lcrittercism/android/bg$a;

    .line 665
    :cond_0
    iget-object v0, p0, Lcrittercism/android/bg;->j:Lcrittercism/android/bg$a;

    sget-object v1, Lcrittercism/android/bg$a;->b:Lcrittercism/android/bg$a;

    if-ne v0, v1, :cond_2

    .line 666
    invoke-direct {p0}, Lcrittercism/android/bg;->r()V

    .line 667
    invoke-direct {p0, p1}, Lcrittercism/android/bg;->b(Lcrittercism/android/bg$a;)V

    .line 672
    :cond_1
    :goto_0
    return-void

    .line 668
    :cond_2
    iget-object v0, p0, Lcrittercism/android/bg;->j:Lcrittercism/android/bg$a;

    sget-object v1, Lcrittercism/android/bg$a;->f:Lcrittercism/android/bg$a;

    if-eq v0, v1, :cond_1

    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Transaction "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcrittercism/android/bg;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not running. Either it has not been started or it has been stopped."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Transaction is not running"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcrittercism/android/dx;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Lcrittercism/android/bh;)V
    .locals 0

    .prologue
    .line 142
    sput-object p0, Lcrittercism/android/bg;->t:Lcrittercism/android/bh;

    .line 144
    return-void
.end method

.method private declared-synchronized b(I)V
    .locals 3

    .prologue
    .line 793
    monitor-enter p0

    if-gez p1, :cond_0

    .line 794
    :try_start_0
    const-string v0, "Ignoring Transaction.setValue(int) call. Negative parameter provided."

    invoke-static {v0}, Lcrittercism/android/dx;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 821
    :goto_0
    monitor-exit p0

    return-void

    .line 798
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcrittercism/android/bg;->j:Lcrittercism/android/bg$a;

    sget-object v1, Lcrittercism/android/bg$a;->a:Lcrittercism/android/bg$a;

    if-ne v0, v1, :cond_1

    .line 799
    iput p1, p0, Lcrittercism/android/bg;->f:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 793
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 800
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcrittercism/android/bg;->j:Lcrittercism/android/bg$a;

    sget-object v1, Lcrittercism/android/bg$a;->b:Lcrittercism/android/bg$a;

    if-ne v0, v1, :cond_2

    .line 801
    iput p1, p0, Lcrittercism/android/bg;->f:I

    .line 802
    new-instance v0, Lcrittercism/android/bg;

    invoke-direct {v0, p0}, Lcrittercism/android/bg;-><init>(Lcrittercism/android/bg;)V

    .line 805
    new-instance v1, Lcrittercism/android/bg$7;

    invoke-direct {v1, p0, v0}, Lcrittercism/android/bg$7;-><init>(Lcrittercism/android/bg;Lcrittercism/android/bg;)V

    .line 813
    sget-object v2, Lcrittercism/android/bg;->b:Ljava/util/concurrent/ExecutorService;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 814
    :try_start_3
    sget-object v0, Lcrittercism/android/bg;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 815
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v2

    throw v0

    .line 816
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Transaction "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcrittercism/android/bg;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " no longer in progress. Ignoring setValue(int) call."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Transaction no longer in progress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcrittercism/android/dx;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public static b(Lcrittercism/android/az;)V
    .locals 8

    .prologue
    .line 457
    :try_start_0
    new-instance v1, Lcrittercism/android/bg;

    const-string v0, "App Load"

    invoke-direct {v1, p0, v0}, Lcrittercism/android/bg;-><init>(Lcrittercism/android/az;Ljava/lang/String;)V

    sput-object v1, Lcrittercism/android/bg;->s:Lcrittercism/android/bg;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {}, Lcrittercism/android/bg;->m()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    sget-object v0, Lcrittercism/android/bg;->s:Lcrittercism/android/bg;

    sget-object v4, Lcrittercism/android/bg$a;->b:Lcrittercism/android/bg$a;

    iput-object v4, v0, Lcrittercism/android/bg;->j:Lcrittercism/android/bg$a;

    sget-object v0, Lcrittercism/android/bg;->s:Lcrittercism/android/bg;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v2

    sub-long v4, v6, v4

    iput-wide v4, v0, Lcrittercism/android/bg;->g:J

    sget-object v0, Lcrittercism/android/bg;->s:Lcrittercism/android/bg;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v2, v3, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v2, v4, v2

    sub-long v2, v6, v2

    iput-wide v2, v0, Lcrittercism/android/bg;->m:J

    sget-object v0, Lcrittercism/android/bg;->s:Lcrittercism/android/bg;

    sget-object v2, Lcrittercism/android/bg;->t:Lcrittercism/android/bh;

    sget-object v3, Lcrittercism/android/bg;->s:Lcrittercism/android/bg;

    iget-object v3, v3, Lcrittercism/android/bg;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcrittercism/android/bh;->a(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcrittercism/android/bg;->e:J

    sget-object v2, Lcrittercism/android/bg;->o:Ljava/util/List;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v0, Lcrittercism/android/bg;->o:Ljava/util/List;

    sget-object v3, Lcrittercism/android/bg;->s:Lcrittercism/android/bg;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v0, Lcrittercism/android/bg;

    sget-object v2, Lcrittercism/android/bg;->s:Lcrittercism/android/bg;

    invoke-direct {v0, v2}, Lcrittercism/android/bg;-><init>(Lcrittercism/android/bg;)V

    new-instance v2, Lcrittercism/android/bg$3;

    invoke-direct {v2, p0, v0}, Lcrittercism/android/bg$3;-><init>(Lcrittercism/android/az;Lcrittercism/android/bg;)V

    sget-object v3, Lcrittercism/android/bg;->b:Ljava/util/concurrent/ExecutorService;

    monitor-enter v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    sget-object v0, Lcrittercism/android/bg;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    sget-object v0, Lcrittercism/android/bg;->s:Lcrittercism/android/bg;

    sget-object v2, Lcrittercism/android/bg;->s:Lcrittercism/android/bg;

    iget-wide v4, v2, Lcrittercism/android/bg;->e:J

    invoke-direct {v0, v4, v5}, Lcrittercism/android/bg;->a(J)V

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_0
    :try_start_5
    monitor-exit v1

    .line 463
    :goto_0
    return-void

    .line 457
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v1

    throw v0
    :try_end_6
    .catch Ljava/lang/ThreadDeath; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    .line 462
    :catch_0
    move-exception v0

    throw v0

    .line 457
    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v3

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 460
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private b(Lcrittercism/android/bg$a;)V
    .locals 6

    .prologue
    .line 732
    iput-object p1, p0, Lcrittercism/android/bg;->j:Lcrittercism/android/bg$a;

    .line 733
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcrittercism/android/bg;->h:J

    .line 734
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 737
    invoke-static {}, Lcrittercism/android/bg;->l()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 738
    sget-wide v2, Lcrittercism/android/bg;->p:J

    iget-wide v4, p0, Lcrittercism/android/bg;->m:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 739
    iget-wide v4, p0, Lcrittercism/android/bg;->i:J

    sub-long/2addr v0, v2

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcrittercism/android/bg;->i:J

    .line 742
    :cond_0
    sget-object v1, Lcrittercism/android/bg;->o:Ljava/util/List;

    monitor-enter v1

    .line 743
    :try_start_0
    sget-object v0, Lcrittercism/android/bg;->o:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 744
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 745
    new-instance v0, Lcrittercism/android/bg;

    invoke-direct {v0, p0}, Lcrittercism/android/bg;-><init>(Lcrittercism/android/bg;)V

    .line 746
    new-instance v1, Lcrittercism/android/bg$6;

    invoke-direct {v1, p0, v0}, Lcrittercism/android/bg$6;-><init>(Lcrittercism/android/bg;Lcrittercism/android/bg;)V

    .line 776
    sget-object v2, Lcrittercism/android/bg;->b:Ljava/util/concurrent/ExecutorService;

    monitor-enter v2

    .line 777
    :try_start_1
    sget-object v0, Lcrittercism/android/bg;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 778
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .line 744
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 778
    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method static synthetic b(Lcrittercism/android/bg;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcrittercism/android/bg;->s()V

    return-void
.end method

.method static synthetic c(Lcrittercism/android/bg;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcrittercism/android/bg;->l:Ljava/lang/String;

    return-object v0
.end method

.method public static f()V
    .locals 10

    .prologue
    .line 221
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lcrittercism/android/bg;->p:J

    .line 222
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 223
    sget-object v1, Lcrittercism/android/bg;->o:Ljava/util/List;

    monitor-enter v1

    .line 224
    :try_start_0
    sget-object v2, Lcrittercism/android/bg;->o:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 225
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 237
    sget-object v1, Lcrittercism/android/bg;->s:Lcrittercism/android/bg;

    if-eqz v1, :cond_0

    .line 238
    sget-wide v2, Lcrittercism/android/bg;->q:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 239
    sget-object v1, Lcrittercism/android/bg;->s:Lcrittercism/android/bg;

    monitor-enter v1

    .line 240
    :try_start_1
    sget-object v2, Lcrittercism/android/bg;->s:Lcrittercism/android/bg;

    iget-wide v4, v2, Lcrittercism/android/bg;->i:J

    sget-wide v6, Lcrittercism/android/bg;->p:J

    sget-object v3, Lcrittercism/android/bg;->s:Lcrittercism/android/bg;

    iget-wide v8, v3, Lcrittercism/android/bg;->m:J

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcrittercism/android/bg;->i:J

    .line 241
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 246
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/bg;

    .line 247
    monitor-enter v0

    .line 248
    :try_start_2
    iget-object v2, v0, Lcrittercism/android/bg;->j:Lcrittercism/android/bg$a;

    sget-object v3, Lcrittercism/android/bg$a;->b:Lcrittercism/android/bg$a;

    if-ne v2, v3, :cond_1

    .line 249
    iget-object v2, v0, Lcrittercism/android/bg;->n:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcrittercism/android/bg;->n:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v2}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 252
    iget-wide v2, v0, Lcrittercism/android/bg;->e:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v6, v0, Lcrittercism/android/bg;->i:J

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Lcrittercism/android/bg;->a(J)V

    .line 262
    :cond_1
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 225
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 241
    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0

    .line 256
    :cond_2
    :try_start_3
    iget-object v2, v0, Lcrittercism/android/bg;->n:Ljava/util/concurrent/ScheduledFuture;

    if-nez v2, :cond_1

    .line 259
    iget-wide v2, v0, Lcrittercism/android/bg;->e:J

    invoke-direct {v0, v2, v3}, Lcrittercism/android/bg;->a(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 263
    :cond_3
    return-void
.end method

.method public static g()V
    .locals 1

    .prologue
    .line 554
    :try_start_0
    sget-object v0, Lcrittercism/android/bg;->s:Lcrittercism/android/bg;

    if-eqz v0, :cond_0

    sget-object v0, Lcrittercism/android/bg;->s:Lcrittercism/android/bg;

    invoke-virtual {v0}, Lcrittercism/android/bg;->b()V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 560
    :cond_0
    :goto_0
    return-void

    .line 555
    :catch_0
    move-exception v0

    throw v0

    .line 557
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static i()V
    .locals 4

    .prologue
    .line 678
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 679
    sget-object v1, Lcrittercism/android/bg;->o:Ljava/util/List;

    monitor-enter v1

    .line 680
    :try_start_0
    sget-object v2, Lcrittercism/android/bg;->o:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 681
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 683
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/bg;

    .line 684
    monitor-enter v0

    .line 685
    :try_start_1
    iget-object v2, v0, Lcrittercism/android/bg;->j:Lcrittercism/android/bg$a;

    sget-object v3, Lcrittercism/android/bg$a;->b:Lcrittercism/android/bg$a;

    if-ne v2, v3, :cond_0

    .line 686
    sget-object v2, Lcrittercism/android/bg;->t:Lcrittercism/android/bh;

    iget-object v3, v0, Lcrittercism/android/bg;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcrittercism/android/bh;->a(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcrittercism/android/bg;->e:J

    .line 687
    invoke-direct {v0}, Lcrittercism/android/bg;->r()V

    .line 691
    iget-wide v2, v0, Lcrittercism/android/bg;->e:J

    invoke-direct {v0, v2, v3}, Lcrittercism/android/bg;->a(J)V

    .line 693
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 681
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 694
    :cond_1
    return-void
.end method

.method private static l()Z
    .locals 4

    .prologue
    .line 267
    sget-wide v0, Lcrittercism/android/bg;->p:J

    sget-wide v2, Lcrittercism/android/bg;->q:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static m()J
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v9, 0x0

    const-wide/16 v2, -0x1

    .line 519
    new-array v1, v0, [J

    .line 521
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 522
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/proc/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/stat"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 524
    :try_start_0
    const-class v4, Landroid/os/Process;

    .line 527
    const-string v5, "readProcFile"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, [I

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-class v8, [Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-class v8, [J

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-class v8, [F

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 529
    const/4 v5, 0x0

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    sget-object v7, Lcrittercism/android/bg;->r:[I

    aput-object v7, v6, v0

    const/4 v0, 0x2

    const/4 v7, 0x0

    aput-object v7, v6, v0

    const/4 v0, 0x3

    aput-object v1, v6, v0

    const/4 v0, 0x4

    const/4 v7, 0x0

    aput-object v7, v6, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 531
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v0

    if-nez v0, :cond_0

    move-wide v0, v2

    .line 549
    :goto_0
    return-wide v0

    .line 534
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    move-wide v0, v2

    .line 536
    goto :goto_0

    .line 537
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    move-wide v0, v2

    .line 539
    goto :goto_0

    .line 540
    :catch_2
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    move-wide v0, v2

    .line 542
    goto :goto_0

    .line 543
    :catch_3
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    move-wide v0, v2

    .line 545
    goto :goto_0

    .line 549
    :cond_0
    aget-wide v0, v1, v9

    const-wide/16 v2, 0xa

    mul-long/2addr v0, v2

    goto :goto_0
.end method

.method private declared-synchronized n()V
    .locals 3

    .prologue
    .line 581
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcrittercism/android/bg;->j:Lcrittercism/android/bg$a;

    sget-object v1, Lcrittercism/android/bg$a;->a:Lcrittercism/android/bg$a;

    if-ne v0, v1, :cond_0

    .line 582
    sget-object v0, Lcrittercism/android/bg$a;->b:Lcrittercism/android/bg$a;

    iput-object v0, p0, Lcrittercism/android/bg;->j:Lcrittercism/android/bg$a;

    .line 583
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcrittercism/android/bg;->g:J

    .line 584
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcrittercism/android/bg;->m:J

    .line 585
    sget-object v0, Lcrittercism/android/bg;->t:Lcrittercism/android/bh;

    iget-object v1, p0, Lcrittercism/android/bg;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcrittercism/android/bh;->a(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcrittercism/android/bg;->e:J

    .line 586
    sget-object v1, Lcrittercism/android/bg;->o:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 587
    :try_start_1
    sget-object v0, Lcrittercism/android/bg;->o:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 588
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 590
    :try_start_2
    new-instance v0, Lcrittercism/android/bg;

    invoke-direct {v0, p0}, Lcrittercism/android/bg;-><init>(Lcrittercism/android/bg;)V

    .line 591
    new-instance v1, Lcrittercism/android/bg$4;

    invoke-direct {v1, p0, v0}, Lcrittercism/android/bg$4;-><init>(Lcrittercism/android/bg;Lcrittercism/android/bg;)V

    .line 599
    sget-object v2, Lcrittercism/android/bg;->b:Ljava/util/concurrent/ExecutorService;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 600
    :try_start_3
    sget-object v0, Lcrittercism/android/bg;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 608
    iget-wide v0, p0, Lcrittercism/android/bg;->e:J

    invoke-direct {p0, v0, v1}, Lcrittercism/android/bg;->a(J)V

    .line 609
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 615
    :goto_0
    monitor-exit p0

    return-void

    .line 588
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 581
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 609
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v2

    throw v0

    .line 610
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Transaction "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcrittercism/android/bg;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has already been started."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Transaction has already started"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcrittercism/android/dx;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0
.end method

.method private declared-synchronized o()V
    .locals 1

    .prologue
    .line 629
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcrittercism/android/bg$a;->c:Lcrittercism/android/bg$a;

    invoke-direct {p0, v0}, Lcrittercism/android/bg;->a(Lcrittercism/android/bg$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 630
    monitor-exit p0

    return-void

    .line 629
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized p()V
    .locals 1

    .prologue
    .line 644
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcrittercism/android/bg$a;->e:Lcrittercism/android/bg$a;

    invoke-direct {p0, v0}, Lcrittercism/android/bg;->a(Lcrittercism/android/bg$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 645
    monitor-exit p0

    return-void

    .line 644
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized q()V
    .locals 1

    .prologue
    .line 658
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcrittercism/android/bg$a;->i:Lcrittercism/android/bg$a;

    invoke-direct {p0, v0}, Lcrittercism/android/bg;->a(Lcrittercism/android/bg$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 659
    monitor-exit p0

    return-void

    .line 658
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized r()V
    .locals 2

    .prologue
    .line 719
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcrittercism/android/bg;->n:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcrittercism/android/bg;->n:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 723
    :cond_0
    monitor-exit p0

    return-void

    .line 719
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized s()V
    .locals 2

    .prologue
    .line 726
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcrittercism/android/bg;->j:Lcrittercism/android/bg$a;

    sget-object v1, Lcrittercism/android/bg$a;->b:Lcrittercism/android/bg$a;

    if-ne v0, v1, :cond_0

    .line 727
    sget-object v0, Lcrittercism/android/bg$a;->f:Lcrittercism/android/bg$a;

    invoke-direct {p0, v0}, Lcrittercism/android/bg;->b(Lcrittercism/android/bg$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 729
    :cond_0
    monitor-exit p0

    return-void

    .line 726
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized t()I
    .locals 1

    .prologue
    .line 836
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcrittercism/android/bg;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 572
    :try_start_0
    invoke-direct {p0}, Lcrittercism/android/bg;->n()V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 578
    :goto_0
    return-void

    .line 573
    :catch_0
    move-exception v0

    throw v0

    .line 575
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 784
    :try_start_0
    invoke-direct {p0, p1}, Lcrittercism/android/bg;->b(I)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 790
    :goto_0
    return-void

    .line 785
    :catch_0
    move-exception v0

    throw v0

    .line 787
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Ljava/io/OutputStream;)V
    .locals 2

    .prologue
    .line 900
    const/4 v0, 0x0

    .line 902
    :try_start_0
    invoke-virtual {p0}, Lcrittercism/android/bg;->j()Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 906
    :goto_0
    if-eqz v0, :cond_0

    .line 907
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 908
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 910
    :cond_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 620
    :try_start_0
    invoke-direct {p0}, Lcrittercism/android/bg;->o()V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 626
    :goto_0
    return-void

    .line 621
    :catch_0
    move-exception v0

    throw v0

    .line 623
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 635
    :try_start_0
    invoke-direct {p0}, Lcrittercism/android/bg;->p()V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 641
    :goto_0
    return-void

    .line 636
    :catch_0
    move-exception v0

    throw v0

    .line 638
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 826
    :try_start_0
    invoke-direct {p0}, Lcrittercism/android/bg;->t()I
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 831
    :goto_0
    return v0

    .line 827
    :catch_0
    move-exception v0

    throw v0

    .line 829
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    .line 831
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 895
    iget-object v0, p0, Lcrittercism/android/bg;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 649
    :try_start_0
    invoke-direct {p0}, Lcrittercism/android/bg;->q()V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 655
    :goto_0
    return-void

    .line 650
    :catch_0
    move-exception v0

    throw v0

    .line 652
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final j()Lorg/json/JSONArray;
    .locals 10

    .prologue
    const-wide v8, 0x408f400000000000L    # 1000.0

    .line 877
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, p0, Lcrittercism/android/bg;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    iget-object v1, p0, Lcrittercism/android/bg;->j:Lcrittercism/android/bg$a;

    invoke-virtual {v1}, Lcrittercism/android/bg$a;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v0

    iget-wide v2, p0, Lcrittercism/android/bg;->e:J

    long-to-double v2, v2

    div-double/2addr v2, v8

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    move-result-object v1

    iget v0, p0, Lcrittercism/android/bg;->f:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_0
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcrittercism/android/bg;->k:Ljava/util/Map;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcrittercism/android/ed;->a:Lcrittercism/android/ed;

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcrittercism/android/bg;->g:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Lcrittercism/android/ed;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcrittercism/android/ed;->a:Lcrittercism/android/ed;

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcrittercism/android/bg;->h:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Lcrittercism/android/ed;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    .line 885
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1

    .line 886
    iget-wide v2, p0, Lcrittercism/android/bg;->i:J

    long-to-double v2, v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    const-wide/high16 v6, 0x4022000000000000L    # 9.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    div-double/2addr v2, v4

    mul-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v8

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 890
    :goto_1
    return-object v0

    .line 877
    :cond_0
    iget v0, p0, Lcrittercism/android/bg;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 888
    :cond_1
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1
.end method

.method public final k()Lcrittercism/android/bg$a;
    .locals 1

    .prologue
    .line 944
    iget-object v0, p0, Lcrittercism/android/bg;->j:Lcrittercism/android/bg$a;

    return-object v0
.end method
