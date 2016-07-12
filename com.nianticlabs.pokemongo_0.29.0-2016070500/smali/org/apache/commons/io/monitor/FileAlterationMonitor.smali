.class public final Lorg/apache/commons/io/monitor/FileAlterationMonitor;
.super Ljava/lang/Object;
.source "FileAlterationMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final interval:J

.field private final observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/io/monitor/FileAlterationObserver;",
            ">;"
        }
    .end annotation
.end field

.field private volatile running:Z

.field private thread:Ljava/lang/Thread;

.field private threadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    const-wide/16 v0, 0x2710

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/io/monitor/FileAlterationMonitor;-><init>(J)V

    .line 44
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "interval"    # J

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->observers:Ljava/util/List;

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->thread:Ljava/lang/Thread;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->running:Z

    .line 53
    iput-wide p1, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->interval:J

    .line 54
    return-void
.end method

.method public varargs constructor <init>(J[Lorg/apache/commons/io/monitor/FileAlterationObserver;)V
    .locals 5
    .param p1, "interval"    # J
    .param p3, "observers"    # [Lorg/apache/commons/io/monitor/FileAlterationObserver;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/io/monitor/FileAlterationMonitor;-><init>(J)V

    .line 65
    if-eqz p3, :cond_0

    .line 66
    move-object v0, p3

    .local v0, "arr$":[Lorg/apache/commons/io/monitor/FileAlterationObserver;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 67
    .local v3, "observer":Lorg/apache/commons/io/monitor/FileAlterationObserver;
    invoke-virtual {p0, v3}, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->addObserver(Lorg/apache/commons/io/monitor/FileAlterationObserver;)V

    .line 66
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    .end local v0    # "arr$":[Lorg/apache/commons/io/monitor/FileAlterationObserver;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "observer":Lorg/apache/commons/io/monitor/FileAlterationObserver;
    :cond_0
    return-void
.end method


# virtual methods
.method public addObserver(Lorg/apache/commons/io/monitor/FileAlterationObserver;)V
    .locals 1
    .param p1, "observer"    # Lorg/apache/commons/io/monitor/FileAlterationObserver;

    .prologue
    .line 96
    if-eqz p1, :cond_0

    .line 97
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_0
    return-void
.end method

.method public getInterval()J
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->interval:J

    return-wide v0
.end method

.method public getObservers()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/commons/io/monitor/FileAlterationObserver;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->observers:Ljava/util/List;

    return-object v0
.end method

.method public removeObserver(Lorg/apache/commons/io/monitor/FileAlterationObserver;)V
    .locals 1
    .param p1, "observer"    # Lorg/apache/commons/io/monitor/FileAlterationObserver;

    .prologue
    .line 107
    if-eqz p1, :cond_1

    .line 108
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    :cond_1
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 180
    :goto_0
    iget-boolean v2, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->running:Z

    if-eqz v2, :cond_1

    .line 181
    iget-object v2, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->observers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/io/monitor/FileAlterationObserver;

    .line 182
    .local v1, "observer":Lorg/apache/commons/io/monitor/FileAlterationObserver;
    invoke-virtual {v1}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->checkAndNotify()V

    goto :goto_1

    .line 184
    .end local v1    # "observer":Lorg/apache/commons/io/monitor/FileAlterationObserver;
    :cond_0
    iget-boolean v2, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->running:Z

    if-nez v2, :cond_2

    .line 192
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void

    .line 188
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_0
    iget-wide v2, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->interval:J

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 189
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public declared-synchronized setThreadFactory(Ljava/util/concurrent/ThreadFactory;)V
    .locals 1
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->threadFactory:Ljava/util/concurrent/ThreadFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->running:Z

    if-eqz v2, :cond_0

    .line 130
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Monitor is already running"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 132
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->observers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/io/monitor/FileAlterationObserver;

    .line 133
    .local v1, "observer":Lorg/apache/commons/io/monitor/FileAlterationObserver;
    invoke-virtual {v1}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->initialize()V

    goto :goto_0

    .line 135
    .end local v1    # "observer":Lorg/apache/commons/io/monitor/FileAlterationObserver;
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->running:Z

    .line 136
    iget-object v2, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    if-eqz v2, :cond_2

    .line 137
    iget-object v2, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-interface {v2, p0}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->thread:Ljava/lang/Thread;

    .line 141
    :goto_1
    iget-object v2, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->thread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    monitor-exit p0

    return-void

    .line 139
    :cond_2
    :try_start_2
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->thread:Ljava/lang/Thread;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 150
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->interval:J

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->stop(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    monitor-exit p0

    return-void

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop(J)V
    .locals 5
    .param p1, "stopInterval"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 162
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->running:Z

    if-nez v3, :cond_0

    .line 163
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Monitor is not running"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 165
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    iput-boolean v3, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->running:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    :try_start_2
    iget-object v3, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->thread:Ljava/lang/Thread;

    invoke-virtual {v3, p1, p2}, Ljava/lang/Thread;->join(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 171
    :goto_0
    :try_start_3
    iget-object v3, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->observers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/io/monitor/FileAlterationObserver;

    .line 172
    .local v2, "observer":Lorg/apache/commons/io/monitor/FileAlterationObserver;
    invoke-virtual {v2}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->destroy()V

    goto :goto_1

    .line 168
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "observer":Lorg/apache/commons/io/monitor/FileAlterationObserver;
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 174
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    monitor-exit p0

    return-void
.end method
