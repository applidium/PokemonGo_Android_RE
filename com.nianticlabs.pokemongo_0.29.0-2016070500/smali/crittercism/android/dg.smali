.class public final Lcrittercism/android/dg;
.super Lcrittercism/android/di;


# instance fields
.field public a:Landroid/os/ConditionVariable;

.field public b:Lcrittercism/android/bm;

.field private c:Landroid/os/ConditionVariable;

.field private d:Lcrittercism/android/bb;

.field private e:Landroid/content/Context;

.field private f:Lcrittercism/android/aw;

.field private g:Lcrittercism/android/ax;

.field private h:Lcrittercism/android/au;

.field private i:Ljava/util/List;

.field private j:Z

.field private k:Z

.field private l:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lcrittercism/android/bb;Landroid/content/Context;Lcrittercism/android/aw;Lcrittercism/android/ax;Lcrittercism/android/au;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Lcrittercism/android/di;-><init>()V

    .line 47
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcrittercism/android/dg;->c:Landroid/os/ConditionVariable;

    .line 48
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcrittercism/android/dg;->a:Landroid/os/ConditionVariable;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcrittercism/android/dg;->i:Ljava/util/List;

    .line 55
    iput-boolean v1, p0, Lcrittercism/android/dg;->j:Z

    .line 57
    iput-object v2, p0, Lcrittercism/android/dg;->b:Lcrittercism/android/bm;

    .line 59
    iput-object v2, p0, Lcrittercism/android/dg;->l:Ljava/lang/Exception;

    .line 67
    iput-object p1, p0, Lcrittercism/android/dg;->d:Lcrittercism/android/bb;

    .line 74
    iput-object p2, p0, Lcrittercism/android/dg;->e:Landroid/content/Context;

    .line 75
    iput-object p3, p0, Lcrittercism/android/dg;->f:Lcrittercism/android/aw;

    .line 76
    iput-object p4, p0, Lcrittercism/android/dg;->g:Lcrittercism/android/ax;

    .line 77
    iput-object p5, p0, Lcrittercism/android/dg;->h:Lcrittercism/android/au;

    .line 78
    iput-boolean v1, p0, Lcrittercism/android/dg;->k:Z

    .line 79
    return-void
.end method

.method private a(Ljava/io/File;)V
    .locals 7

    .prologue
    .line 212
    iget-boolean v0, p0, Lcrittercism/android/dg;->k:Z

    .line 213
    invoke-static {}, Lcrittercism/android/az;->A()Lcrittercism/android/az;

    move-result-object v0

    .line 215
    iget-boolean v1, v0, Lcrittercism/android/az;->t:Z

    if-eqz v1, :cond_0

    .line 258
    :goto_0
    return-void

    .line 219
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    .line 220
    :cond_1
    iget-object v1, p0, Lcrittercism/android/dg;->f:Lcrittercism/android/aw;

    .line 222
    iget-object v1, p0, Lcrittercism/android/dg;->f:Lcrittercism/android/aw;

    invoke-interface {v1}, Lcrittercism/android/aw;->s()Lcrittercism/android/bs;

    move-result-object v2

    .line 223
    iget-object v1, p0, Lcrittercism/android/dg;->f:Lcrittercism/android/aw;

    invoke-interface {v1}, Lcrittercism/android/aw;->t()Lcrittercism/android/bs;

    move-result-object v4

    .line 224
    iget-object v1, p0, Lcrittercism/android/dg;->f:Lcrittercism/android/aw;

    invoke-interface {v1}, Lcrittercism/android/aw;->u()Lcrittercism/android/bs;

    move-result-object v3

    .line 225
    iget-object v1, p0, Lcrittercism/android/dg;->f:Lcrittercism/android/aw;

    invoke-interface {v1}, Lcrittercism/android/aw;->v()Lcrittercism/android/bs;

    move-result-object v5

    .line 227
    iget-object v1, p0, Lcrittercism/android/dg;->f:Lcrittercism/android/aw;

    invoke-interface {v1}, Lcrittercism/android/aw;->q()Lcrittercism/android/bs;

    move-result-object v6

    .line 229
    if-eqz p1, :cond_2

    .line 236
    const/4 v1, 0x1

    sput-boolean v1, Lcrittercism/android/dq;->a:Z

    .line 239
    iget-object v0, v0, Lcrittercism/android/az;->e:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 240
    new-instance v0, Lcrittercism/android/cd;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcrittercism/android/cd;-><init>(Ljava/io/File;Lcrittercism/android/bs;Lcrittercism/android/bs;Lcrittercism/android/bs;Lcrittercism/android/bs;)V

    .line 242
    invoke-virtual {v6, v0}, Lcrittercism/android/bs;->a(Lcrittercism/android/ch;)Z

    .line 243
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 247
    iget-object v0, p0, Lcrittercism/android/dg;->f:Lcrittercism/android/aw;

    invoke-interface {v0}, Lcrittercism/android/aw;->w()Lcrittercism/android/bs;

    move-result-object v0

    invoke-virtual {v0}, Lcrittercism/android/bs;->a()V

    .line 254
    :goto_1
    invoke-virtual {v3}, Lcrittercism/android/bs;->a()V

    .line 255
    invoke-virtual {v4}, Lcrittercism/android/bs;->a()V

    .line 256
    invoke-virtual {v5}, Lcrittercism/android/bs;->a()V

    .line 257
    invoke-virtual {v2, v3}, Lcrittercism/android/bs;->a(Lcrittercism/android/bs;)V

    goto :goto_0

    .line 249
    :cond_2
    iget-object v0, v0, Lcrittercism/android/az;->e:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 251
    iget-object v0, p0, Lcrittercism/android/dg;->f:Lcrittercism/android/aw;

    invoke-static {v0}, Lcrittercism/android/bg;->a(Lcrittercism/android/aw;)V

    goto :goto_1
.end method

.method private declared-synchronized c()V
    .locals 1

    .prologue
    .line 82
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcrittercism/android/dg;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d()Z
    .locals 1

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcrittercism/android/dg;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private e()Ljava/io/File;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcrittercism/android/dg;->e:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcrittercism/android/dg;->d:Lcrittercism/android/bb;

    invoke-virtual {v3}, Lcrittercism/android/bb;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 99
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-object v0

    .line 106
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 107
    if-eqz v2, :cond_0

    .line 108
    array-length v3, v2

    if-ne v3, v4, :cond_2

    .line 109
    aget-object v1, v2, v1

    .line 110
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    .line 111
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 112
    :cond_2
    array-length v3, v2

    if-le v3, v4, :cond_0

    .line 113
    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 114
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    .line 115
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private f()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 283
    invoke-static {}, Lcrittercism/android/az;->A()Lcrittercism/android/az;

    move-result-object v0

    iget-boolean v0, v0, Lcrittercism/android/az;->t:Z

    if-eqz v0, :cond_1

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    iget-boolean v0, p0, Lcrittercism/android/dg;->k:Z

    .line 288
    iget-object v0, p0, Lcrittercism/android/dg;->f:Lcrittercism/android/aw;

    invoke-interface {v0}, Lcrittercism/android/aw;->n()Lcrittercism/android/bs;

    move-result-object v1

    .line 289
    iget-object v0, p0, Lcrittercism/android/dg;->f:Lcrittercism/android/aw;

    invoke-interface {v0}, Lcrittercism/android/aw;->o()Lcrittercism/android/bs;

    move-result-object v8

    .line 290
    iget-object v0, p0, Lcrittercism/android/dg;->f:Lcrittercism/android/aw;

    invoke-interface {v0}, Lcrittercism/android/aw;->p()Lcrittercism/android/bs;

    move-result-object v9

    .line 291
    iget-object v0, p0, Lcrittercism/android/dg;->f:Lcrittercism/android/aw;

    invoke-interface {v0}, Lcrittercism/android/aw;->q()Lcrittercism/android/bs;

    move-result-object v10

    .line 292
    iget-object v0, p0, Lcrittercism/android/dg;->f:Lcrittercism/android/aw;

    invoke-interface {v0}, Lcrittercism/android/aw;->r()Lcrittercism/android/bs;

    move-result-object v11

    .line 293
    iget-object v0, p0, Lcrittercism/android/dg;->f:Lcrittercism/android/aw;

    invoke-interface {v0}, Lcrittercism/android/aw;->y()Lcrittercism/android/dv;

    move-result-object v12

    .line 295
    iget-object v0, p0, Lcrittercism/android/dg;->d:Lcrittercism/android/bb;

    invoke-virtual {v0}, Lcrittercism/android/bb;->b()Ljava/lang/String;

    .line 301
    new-instance v0, Lcrittercism/android/bm;

    iget-object v2, p0, Lcrittercism/android/dg;->h:Lcrittercism/android/au;

    invoke-direct {v0, v2}, Lcrittercism/android/bm;-><init>(Lcrittercism/android/au;)V

    iput-object v0, p0, Lcrittercism/android/dg;->b:Lcrittercism/android/bm;

    .line 304
    iget-object v0, p0, Lcrittercism/android/dg;->d:Lcrittercism/android/bb;

    invoke-virtual {v0}, Lcrittercism/android/bb;->delaySendingAppLoad()Z

    move-result v0

    if-nez v0, :cond_2

    .line 305
    iget-object v0, p0, Lcrittercism/android/dg;->b:Lcrittercism/android/bm;

    invoke-virtual {v1, v0}, Lcrittercism/android/bs;->a(Lcrittercism/android/ch;)Z

    .line 306
    new-instance v0, Lcrittercism/android/df;

    iget-object v2, p0, Lcrittercism/android/dg;->e:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcrittercism/android/df;-><init>(Landroid/content/Context;)V

    .line 307
    new-instance v2, Lcrittercism/android/ct$a;

    invoke-direct {v2}, Lcrittercism/android/ct$a;-><init>()V

    iget-object v3, p0, Lcrittercism/android/dg;->d:Lcrittercism/android/bb;

    invoke-virtual {v3}, Lcrittercism/android/bb;->e()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/v0/appload"

    iget-object v5, p0, Lcrittercism/android/dg;->d:Lcrittercism/android/bb;

    invoke-virtual {v5}, Lcrittercism/android/bb;->b()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcrittercism/android/dg;->h:Lcrittercism/android/au;

    new-instance v7, Lcrittercism/android/cs$b;

    invoke-direct {v7}, Lcrittercism/android/cs$b;-><init>()V

    invoke-virtual/range {v0 .. v7}, Lcrittercism/android/df;->a(Lcrittercism/android/bs;Lcrittercism/android/cz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcrittercism/android/au;Lcrittercism/android/cx;)V

    .line 316
    new-instance v2, Lcrittercism/android/da$a;

    invoke-direct {v2}, Lcrittercism/android/da$a;-><init>()V

    iget-object v1, p0, Lcrittercism/android/dg;->d:Lcrittercism/android/bb;

    invoke-virtual {v1}, Lcrittercism/android/bb;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/android_v2/handle_exceptions"

    iget-object v6, p0, Lcrittercism/android/dg;->h:Lcrittercism/android/au;

    new-instance v7, Lcrittercism/android/cu$a;

    invoke-direct {v7}, Lcrittercism/android/cu$a;-><init>()V

    move-object v1, v8

    move-object v5, v13

    invoke-virtual/range {v0 .. v7}, Lcrittercism/android/df;->a(Lcrittercism/android/bs;Lcrittercism/android/cz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcrittercism/android/au;Lcrittercism/android/cx;)V

    .line 325
    new-instance v2, Lcrittercism/android/da$a;

    invoke-direct {v2}, Lcrittercism/android/da$a;-><init>()V

    iget-object v1, p0, Lcrittercism/android/dg;->d:Lcrittercism/android/bb;

    invoke-virtual {v1}, Lcrittercism/android/bb;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/android_v2/handle_ndk_crashes"

    iget-object v6, p0, Lcrittercism/android/dg;->h:Lcrittercism/android/au;

    new-instance v7, Lcrittercism/android/cu$a;

    invoke-direct {v7}, Lcrittercism/android/cu$a;-><init>()V

    move-object v1, v10

    move-object v5, v13

    invoke-virtual/range {v0 .. v7}, Lcrittercism/android/df;->a(Lcrittercism/android/bs;Lcrittercism/android/cz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcrittercism/android/au;Lcrittercism/android/cx;)V

    .line 334
    new-instance v2, Lcrittercism/android/da$a;

    invoke-direct {v2}, Lcrittercism/android/da$a;-><init>()V

    iget-object v1, p0, Lcrittercism/android/dg;->d:Lcrittercism/android/bb;

    invoke-virtual {v1}, Lcrittercism/android/bb;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/android_v2/handle_crashes"

    iget-object v6, p0, Lcrittercism/android/dg;->h:Lcrittercism/android/au;

    new-instance v7, Lcrittercism/android/cu$a;

    invoke-direct {v7}, Lcrittercism/android/cu$a;-><init>()V

    move-object v1, v11

    move-object v5, v13

    invoke-virtual/range {v0 .. v7}, Lcrittercism/android/df;->a(Lcrittercism/android/bs;Lcrittercism/android/cz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcrittercism/android/au;Lcrittercism/android/cx;)V

    .line 343
    new-instance v2, Lcrittercism/android/da$a;

    invoke-direct {v2}, Lcrittercism/android/da$a;-><init>()V

    iget-object v1, p0, Lcrittercism/android/dg;->d:Lcrittercism/android/bb;

    invoke-virtual {v1}, Lcrittercism/android/bb;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/android_v2/handle_exceptions"

    new-instance v6, Lcrittercism/android/ba;

    iget-object v1, p0, Lcrittercism/android/dg;->h:Lcrittercism/android/au;

    iget-object v5, p0, Lcrittercism/android/dg;->d:Lcrittercism/android/bb;

    invoke-direct {v6, v1, v5}, Lcrittercism/android/ba;-><init>(Lcrittercism/android/au;Lcrittercism/android/bb;)V

    new-instance v7, Lcrittercism/android/cu$a;

    invoke-direct {v7}, Lcrittercism/android/cu$a;-><init>()V

    move-object v1, v9

    move-object v5, v13

    invoke-virtual/range {v0 .. v7}, Lcrittercism/android/df;->a(Lcrittercism/android/bs;Lcrittercism/android/cz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcrittercism/android/au;Lcrittercism/android/cx;)V

    .line 352
    invoke-virtual {v0}, Lcrittercism/android/df;->a()V

    .line 355
    :cond_2
    invoke-virtual {v12}, Lcrittercism/android/dv;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    invoke-static {}, Lcrittercism/android/az;->A()Lcrittercism/android/az;

    move-result-object v0

    invoke-virtual {v0}, Lcrittercism/android/az;->E()V

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 387
    :try_start_0
    invoke-static {}, Lcrittercism/android/dx;->b()V

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcrittercism/android/dg;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/com.crittercism/pending"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcrittercism/android/dx;->b()V

    .line 392
    :goto_0
    invoke-static {}, Lcrittercism/android/az;->A()Lcrittercism/android/az;

    move-result-object v0

    .line 394
    iget-object v2, v0, Lcrittercism/android/az;->w:Lcrittercism/android/dr;

    invoke-virtual {v2}, Lcrittercism/android/dr;->a()Ljava/lang/String;

    .line 397
    iget-object v2, p0, Lcrittercism/android/dg;->h:Lcrittercism/android/au;

    invoke-interface {v2}, Lcrittercism/android/au;->l()Lcrittercism/android/dw;

    move-result-object v2

    .line 398
    iget-object v0, v0, Lcrittercism/android/az;->d:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 400
    iget-object v0, p0, Lcrittercism/android/dg;->g:Lcrittercism/android/ax;

    iget-object v3, p0, Lcrittercism/android/dg;->e:Landroid/content/Context;

    invoke-virtual {v2, v0}, Lcrittercism/android/dw;->a(Lcrittercism/android/ax;)V

    .line 402
    iget-object v0, p0, Lcrittercism/android/dg;->e:Landroid/content/Context;

    invoke-static {v0}, Lcrittercism/android/dq;->a(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcrittercism/android/dq;->a:Z

    .line 403
    iget-object v0, p0, Lcrittercism/android/dg;->e:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcrittercism/android/dq;->a(Landroid/content/Context;Z)V

    .line 405
    invoke-virtual {v2}, Lcrittercism/android/dw;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    new-instance v0, Lcrittercism/android/dt;

    iget-object v3, p0, Lcrittercism/android/dg;->e:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcrittercism/android/dt;-><init>(Landroid/content/Context;)V

    .line 407
    invoke-virtual {v0}, Lcrittercism/android/dt;->a()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, v0, Lcrittercism/android/dt;->a:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "numAppLoads"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 408
    invoke-static {}, Lcrittercism/android/az;->A()Lcrittercism/android/az;

    move-result-object v3

    iput-object v0, v3, Lcrittercism/android/az;->A:Lcrittercism/android/dt;

    .line 410
    invoke-virtual {v2}, Lcrittercism/android/dw;->a()Lcrittercism/android/du;

    move-result-object v0

    iget-object v3, p0, Lcrittercism/android/dg;->g:Lcrittercism/android/ax;

    sget-object v4, Lcrittercism/android/cq;->j:Lcrittercism/android/cq;

    invoke-virtual {v4}, Lcrittercism/android/cq;->a()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcrittercism/android/cq;->j:Lcrittercism/android/cq;

    invoke-virtual {v5}, Lcrittercism/android/cq;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lcrittercism/android/du;->a(Lcrittercism/android/ax;Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    :cond_0
    invoke-virtual {v2}, Lcrittercism/android/dw;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcrittercism/android/dg;->k:Z

    .line 417
    invoke-direct {p0}, Lcrittercism/android/dg;->e()Ljava/io/File;

    move-result-object v8

    .line 419
    iget-boolean v0, p0, Lcrittercism/android/dg;->k:Z

    if-eqz v0, :cond_4

    .line 420
    iget-boolean v0, p0, Lcrittercism/android/dg;->k:Z

    invoke-static {}, Lcrittercism/android/az;->A()Lcrittercism/android/az;

    move-result-object v0

    iget-boolean v0, v0, Lcrittercism/android/az;->t:Z

    if-nez v0, :cond_2

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    :cond_1
    new-instance v0, Lcrittercism/android/bs;

    iget-object v1, p0, Lcrittercism/android/dg;->e:Landroid/content/Context;

    sget-object v2, Lcrittercism/android/br;->a:Lcrittercism/android/br;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/bs;-><init>(Landroid/content/Context;Lcrittercism/android/br;)V

    invoke-virtual {v0}, Lcrittercism/android/bs;->a()V

    new-instance v0, Lcrittercism/android/bs;

    iget-object v1, p0, Lcrittercism/android/dg;->e:Landroid/content/Context;

    sget-object v2, Lcrittercism/android/br;->b:Lcrittercism/android/br;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/bs;-><init>(Landroid/content/Context;Lcrittercism/android/br;)V

    invoke-virtual {v0}, Lcrittercism/android/bs;->a()V

    new-instance v0, Lcrittercism/android/bs;

    iget-object v1, p0, Lcrittercism/android/dg;->e:Landroid/content/Context;

    sget-object v2, Lcrittercism/android/br;->c:Lcrittercism/android/br;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/bs;-><init>(Landroid/content/Context;Lcrittercism/android/br;)V

    invoke-virtual {v0}, Lcrittercism/android/bs;->a()V

    new-instance v0, Lcrittercism/android/bs;

    iget-object v1, p0, Lcrittercism/android/dg;->e:Landroid/content/Context;

    sget-object v2, Lcrittercism/android/br;->d:Lcrittercism/android/br;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/bs;-><init>(Landroid/content/Context;Lcrittercism/android/br;)V

    invoke-virtual {v0}, Lcrittercism/android/bs;->a()V

    new-instance v0, Lcrittercism/android/bs;

    iget-object v1, p0, Lcrittercism/android/dg;->e:Landroid/content/Context;

    sget-object v2, Lcrittercism/android/br;->e:Lcrittercism/android/br;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/bs;-><init>(Landroid/content/Context;Lcrittercism/android/br;)V

    invoke-virtual {v0}, Lcrittercism/android/bs;->a()V

    new-instance v0, Lcrittercism/android/bs;

    iget-object v1, p0, Lcrittercism/android/dg;->e:Landroid/content/Context;

    sget-object v2, Lcrittercism/android/br;->f:Lcrittercism/android/br;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/bs;-><init>(Landroid/content/Context;Lcrittercism/android/br;)V

    invoke-virtual {v0}, Lcrittercism/android/bs;->a()V

    new-instance v0, Lcrittercism/android/bs;

    iget-object v1, p0, Lcrittercism/android/dg;->e:Landroid/content/Context;

    sget-object v2, Lcrittercism/android/br;->h:Lcrittercism/android/br;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/bs;-><init>(Landroid/content/Context;Lcrittercism/android/br;)V

    invoke-virtual {v0}, Lcrittercism/android/bs;->a()V

    new-instance v0, Lcrittercism/android/bs;

    iget-object v1, p0, Lcrittercism/android/dg;->e:Landroid/content/Context;

    sget-object v2, Lcrittercism/android/br;->g:Lcrittercism/android/br;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/bs;-><init>(Landroid/content/Context;Lcrittercism/android/br;)V

    invoke-virtual {v0}, Lcrittercism/android/bs;->a()V

    new-instance v0, Lcrittercism/android/bs;

    iget-object v1, p0, Lcrittercism/android/dg;->e:Landroid/content/Context;

    sget-object v2, Lcrittercism/android/br;->k:Lcrittercism/android/br;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/bs;-><init>(Landroid/content/Context;Lcrittercism/android/br;)V

    invoke-virtual {v0}, Lcrittercism/android/bs;->a()V

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :cond_2
    iget-object v0, p0, Lcrittercism/android/dg;->e:Landroid/content/Context;

    invoke-static {v0}, Lcrittercism/android/h;->b(Landroid/content/Context;)V

    .line 425
    :goto_1
    invoke-direct {p0}, Lcrittercism/android/dg;->c()V

    .line 428
    iget-object v0, p0, Lcrittercism/android/dg;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 429
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 431
    :catch_0
    move-exception v0

    .line 432
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception in run(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcrittercism/android/dx;->b()V

    .line 433
    invoke-static {}, Lcrittercism/android/dx;->c()V

    .line 434
    iput-object v0, p0, Lcrittercism/android/dg;->l:Ljava/lang/Exception;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 436
    iget-object v0, p0, Lcrittercism/android/dg;->c:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 437
    :goto_3
    return-void

    .line 388
    :cond_3
    :try_start_2
    invoke-static {v2}, Lcrittercism/android/eb;->a(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 436
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcrittercism/android/dg;->c:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    throw v0

    .line 422
    :cond_4
    :try_start_3
    iget-object v2, p0, Lcrittercism/android/dg;->e:Landroid/content/Context;

    new-instance v0, Lcrittercism/android/h;

    invoke-direct {v0, v2}, Lcrittercism/android/h;-><init>(Landroid/content/Context;)V

    const-string v3, "com.crittercism.optmz.config"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "interval"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "interval"

    const/16 v4, 0xa

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcrittercism/android/h;->d:I

    const-string v3, "kill"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "kill"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v0, Lcrittercism/android/h;->c:Z

    const-string v3, "persist"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "persist"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v0, Lcrittercism/android/h;->b:Z

    const-string v3, "enabled"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v1, "enabled"

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcrittercism/android/h;->a:Z

    :goto_4
    if-eqz v0, :cond_5

    invoke-static {}, Lcrittercism/android/az;->A()Lcrittercism/android/az;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcrittercism/android/az;->a(Lcrittercism/android/h;)V

    :cond_5
    iget-boolean v0, p0, Lcrittercism/android/dg;->k:Z

    iget-object v0, p0, Lcrittercism/android/dg;->f:Lcrittercism/android/aw;

    invoke-interface {v0}, Lcrittercism/android/aw;->z()V

    invoke-static {}, Lcrittercism/android/az;->A()Lcrittercism/android/az;

    move-result-object v0

    iget-boolean v0, v0, Lcrittercism/android/az;->t:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcrittercism/android/dg;->e:Landroid/content/Context;

    invoke-static {v0}, Lcrittercism/android/bh;->a(Landroid/content/Context;)Lcrittercism/android/bh;

    move-result-object v9

    iget-object v0, p0, Lcrittercism/android/dg;->f:Lcrittercism/android/aw;

    invoke-interface {v0}, Lcrittercism/android/aw;->x()Lcrittercism/android/bs;

    move-result-object v3

    iget-object v0, p0, Lcrittercism/android/dg;->f:Lcrittercism/android/aw;

    invoke-interface {v0}, Lcrittercism/android/aw;->s()Lcrittercism/android/bs;

    move-result-object v4

    iget-object v0, p0, Lcrittercism/android/dg;->f:Lcrittercism/android/aw;

    invoke-interface {v0}, Lcrittercism/android/aw;->t()Lcrittercism/android/bs;

    move-result-object v5

    iget-object v0, p0, Lcrittercism/android/dg;->f:Lcrittercism/android/aw;

    invoke-interface {v0}, Lcrittercism/android/aw;->v()Lcrittercism/android/bs;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    :try_start_4
    new-instance v7, Ljava/net/URL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcrittercism/android/dg;->d:Lcrittercism/android/bb;

    invoke-virtual {v1}, Lcrittercism/android/bb;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/api/v1/transactions"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    new-instance v0, Lcrittercism/android/bi;

    iget-object v1, p0, Lcrittercism/android/dg;->e:Landroid/content/Context;

    iget-object v2, p0, Lcrittercism/android/dg;->h:Lcrittercism/android/au;

    invoke-direct/range {v0 .. v7}, Lcrittercism/android/bi;-><init>(Landroid/content/Context;Lcrittercism/android/au;Lcrittercism/android/bs;Lcrittercism/android/bs;Lcrittercism/android/bs;Lcrittercism/android/bs;Ljava/net/URL;)V

    invoke-static {}, Lcrittercism/android/az;->A()Lcrittercism/android/az;

    move-result-object v1

    iput-object v0, v1, Lcrittercism/android/az;->y:Lcrittercism/android/bi;

    new-instance v2, Lcrittercism/android/dy;

    const-string v3, "TXN Thread"

    invoke-direct {v2, v0, v3}, Lcrittercism/android/dy;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    invoke-virtual {v1, v9}, Lcrittercism/android/az;->a(Lcrittercism/android/bh;)V

    :cond_6
    :goto_5
    invoke-direct {p0, v8}, Lcrittercism/android/dg;->a(Ljava/io/File;)V

    iget-object v0, p0, Lcrittercism/android/dg;->a:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    iget-object v0, p0, Lcrittercism/android/dg;->f:Lcrittercism/android/aw;

    invoke-interface {v0}, Lcrittercism/android/aw;->s()Lcrittercism/android/bs;

    move-result-object v0

    sget-object v1, Lcrittercism/android/cf;->a:Lcrittercism/android/cf;

    invoke-virtual {v0, v1}, Lcrittercism/android/bs;->a(Lcrittercism/android/ch;)Z

    invoke-static {}, Lcrittercism/android/az;->A()Lcrittercism/android/az;

    move-result-object v0

    iget-boolean v0, v0, Lcrittercism/android/az;->t:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcrittercism/android/dg;->d:Lcrittercism/android/bb;

    invoke-virtual {v0}, Lcrittercism/android/bb;->isNdkCrashReportingEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcrittercism/android/dx;->b()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object v0, p0, Lcrittercism/android/dg;->e:Landroid/content/Context;

    iget-object v1, p0, Lcrittercism/android/dg;->d:Lcrittercism/android/bb;

    invoke-virtual {v1}, Lcrittercism/android/bb;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/crittercism/app/CrittercismNDK;->installNdkLib(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_7
    :goto_6
    :try_start_7
    invoke-direct {p0}, Lcrittercism/android/dg;->f()V

    goto/16 :goto_1

    :cond_8
    move-object v0, v1

    goto/16 :goto_4

    :cond_9
    move-object v0, v1

    goto/16 :goto_4

    :cond_a
    move-object v0, v1

    goto/16 :goto_4

    :cond_b
    move-object v0, v1

    goto/16 :goto_4

    :catch_1
    move-exception v0

    invoke-static {}, Lcrittercism/android/dx;->a()V

    goto :goto_5

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception installing ndk library: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcrittercism/android/dx;->b()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_6

    .line 436
    :cond_c
    iget-object v0, p0, Lcrittercism/android/dg;->c:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    goto/16 :goto_3
.end method

.method public final declared-synchronized a(Ljava/lang/Runnable;)Z
    .locals 1

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcrittercism/android/dg;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcrittercism/android/dg;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    const/4 v0, 0x1

    .line 94
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcrittercism/android/dg;->c:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 442
    return-void
.end method
