.class public final Lcrittercism/android/df;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcrittercism/android/df;->a:Landroid/content/Context;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcrittercism/android/df;->b:Ljava/util/List;

    .line 25
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 78
    iget-object v0, p0, Lcrittercism/android/df;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/di;

    .line 79
    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 83
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 86
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 87
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    goto :goto_2

    .line 89
    :cond_2
    return-void
.end method

.method public final declared-synchronized a(Lcrittercism/android/bs;Lcrittercism/android/cz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcrittercism/android/au;Lcrittercism/android/cx;)V
    .locals 7

    .prologue
    .line 35
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcrittercism/android/bs;->b()I

    move-result v0

    if-lez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcrittercism/android/df;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcrittercism/android/bs;->a(Landroid/content/Context;)Lcrittercism/android/bs;

    move-result-object v1

    iget-object v4, p0, Lcrittercism/android/df;->a:Landroid/content/Context;

    move-object v0, p2

    move-object v2, p1

    move-object v3, p5

    move-object v5, p6

    invoke-interface/range {v0 .. v5}, Lcrittercism/android/cz;->a(Lcrittercism/android/bs;Lcrittercism/android/bs;Ljava/lang/String;Landroid/content/Context;Lcrittercism/android/au;)Lcrittercism/android/cy;

    move-result-object v5

    new-instance v0, Lcrittercism/android/dh;

    new-instance v2, Lcrittercism/android/db;

    invoke-direct {v2, p3, p4}, Lcrittercism/android/db;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcrittercism/android/db;->a()Ljava/net/URL;

    move-result-object v4

    move-object v2, p1

    move-object v3, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcrittercism/android/dh;-><init>(Lcrittercism/android/bs;Lcrittercism/android/bs;Lcrittercism/android/au;Ljava/net/URL;Lcrittercism/android/cy;Lcrittercism/android/cx;)V

    .line 44
    iget-object v1, p0, Lcrittercism/android/df;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_0
    monitor-exit p0

    return-void

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcrittercism/android/dg;Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lcrittercism/android/df;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/di;

    .line 70
    invoke-virtual {p1, v0}, Lcrittercism/android/dg;->a(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 71
    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 74
    :cond_1
    return-void
.end method
