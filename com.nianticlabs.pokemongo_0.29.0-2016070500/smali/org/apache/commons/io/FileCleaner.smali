.class public Lorg/apache/commons/io/FileCleaner;
.super Ljava/lang/Object;
.source "FileCleaner.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final theInstance:Lorg/apache/commons/io/FileCleaningTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lorg/apache/commons/io/FileCleaningTracker;

    invoke-direct {v0}, Lorg/apache/commons/io/FileCleaningTracker;-><init>()V

    sput-object v0, Lorg/apache/commons/io/FileCleaner;->theInstance:Lorg/apache/commons/io/FileCleaningTracker;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized exitWhenFinished()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 145
    const-class v1, Lorg/apache/commons/io/FileCleaner;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/apache/commons/io/FileCleaner;->theInstance:Lorg/apache/commons/io/FileCleaningTracker;

    invoke-virtual {v0}, Lorg/apache/commons/io/FileCleaningTracker;->exitWhenFinished()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    monitor-exit v1

    return-void

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getInstance()Lorg/apache/commons/io/FileCleaningTracker;
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lorg/apache/commons/io/FileCleaner;->theInstance:Lorg/apache/commons/io/FileCleaningTracker;

    return-object v0
.end method

.method public static getTrackCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 118
    sget-object v0, Lorg/apache/commons/io/FileCleaner;->theInstance:Lorg/apache/commons/io/FileCleaningTracker;

    invoke-virtual {v0}, Lorg/apache/commons/io/FileCleaningTracker;->getTrackCount()I

    move-result v0

    return v0
.end method

.method public static track(Ljava/io/File;Ljava/lang/Object;)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "marker"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 58
    sget-object v0, Lorg/apache/commons/io/FileCleaner;->theInstance:Lorg/apache/commons/io/FileCleaningTracker;

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/io/FileCleaningTracker;->track(Ljava/io/File;Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method public static track(Ljava/io/File;Ljava/lang/Object;Lorg/apache/commons/io/FileDeleteStrategy;)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "marker"    # Ljava/lang/Object;
    .param p2, "deleteStrategy"    # Lorg/apache/commons/io/FileDeleteStrategy;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 74
    sget-object v0, Lorg/apache/commons/io/FileCleaner;->theInstance:Lorg/apache/commons/io/FileCleaningTracker;

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/commons/io/FileCleaningTracker;->track(Ljava/io/File;Ljava/lang/Object;Lorg/apache/commons/io/FileDeleteStrategy;)V

    .line 75
    return-void
.end method

.method public static track(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "marker"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 89
    sget-object v0, Lorg/apache/commons/io/FileCleaner;->theInstance:Lorg/apache/commons/io/FileCleaningTracker;

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/io/FileCleaningTracker;->track(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    return-void
.end method

.method public static track(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/commons/io/FileDeleteStrategy;)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "marker"    # Ljava/lang/Object;
    .param p2, "deleteStrategy"    # Lorg/apache/commons/io/FileDeleteStrategy;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 105
    sget-object v0, Lorg/apache/commons/io/FileCleaner;->theInstance:Lorg/apache/commons/io/FileCleaningTracker;

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/commons/io/FileCleaningTracker;->track(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/commons/io/FileDeleteStrategy;)V

    .line 106
    return-void
.end method
