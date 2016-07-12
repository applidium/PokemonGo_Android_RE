.class public final Lcrittercism/android/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcrittercism/android/e$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/List;

.field final b:Ljava/util/Set;

.field final c:Ljava/util/Set;

.field private d:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcrittercism/android/e;-><init>(Ljava/util/concurrent/Executor;Ljava/util/List;Ljava/util/List;)V

    .line 30
    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/List;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcrittercism/android/e;->a:Ljava/util/List;

    .line 15
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcrittercism/android/e;->b:Ljava/util/Set;

    .line 16
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcrittercism/android/e;->c:Ljava/util/Set;

    .line 23
    iput-object p1, p0, Lcrittercism/android/e;->d:Ljava/util/concurrent/Executor;

    .line 24
    invoke-virtual {p0, p2}, Lcrittercism/android/e;->a(Ljava/util/List;)V

    .line 25
    invoke-virtual {p0, p3}, Lcrittercism/android/e;->b(Ljava/util/List;)V

    .line 26
    return-void
.end method


# virtual methods
.method public final a(Lcrittercism/android/c;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 72
    sget-object v0, Lcrittercism/android/c$a;->e:Lcrittercism/android/c$a;

    invoke-virtual {p0, p1, v0}, Lcrittercism/android/e;->a(Lcrittercism/android/c;Lcrittercism/android/c$a;)V

    .line 73
    return-void
.end method

.method public final a(Lcrittercism/android/c;Lcrittercism/android/c$a;)V
    .locals 3

    .prologue
    .line 77
    iget-boolean v0, p1, Lcrittercism/android/c;->b:Z

    if-eqz v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 81
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcrittercism/android/c;->b:Z

    .line 82
    iput-object p2, p1, Lcrittercism/android/c;->c:Lcrittercism/android/c$a;

    .line 88
    iget-object v0, p0, Lcrittercism/android/e;->d:Ljava/util/concurrent/Executor;

    new-instance v1, Lcrittercism/android/e$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcrittercism/android/e$a;-><init>(Lcrittercism/android/e;Lcrittercism/android/c;B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Lcrittercism/android/f;)V
    .locals 2

    .prologue
    .line 33
    iget-object v1, p0, Lcrittercism/android/e;->a:Ljava/util/List;

    monitor-enter v1

    .line 36
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/e;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Ljava/util/List;)V
    .locals 3

    .prologue
    .line 48
    iget-object v1, p0, Lcrittercism/android/e;->b:Ljava/util/Set;

    monitor-enter v1

    .line 49
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/e;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 52
    iget-object v0, p0, Lcrittercism/android/e;->b:Ljava/util/Set;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 53
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(Ljava/util/List;)V
    .locals 3

    .prologue
    .line 57
    iget-object v1, p0, Lcrittercism/android/e;->c:Ljava/util/Set;

    monitor-enter v1

    .line 58
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/e;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 61
    iget-object v0, p0, Lcrittercism/android/e;->c:Ljava/util/Set;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 62
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
