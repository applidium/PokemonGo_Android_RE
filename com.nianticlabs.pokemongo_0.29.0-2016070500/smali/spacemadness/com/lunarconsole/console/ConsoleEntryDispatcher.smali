.class Lspacemadness/com/lunarconsole/console/ConsoleEntryDispatcher;
.super Ljava/lang/Object;
.source "ConsoleEntryDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lspacemadness/com/lunarconsole/console/ConsoleEntryDispatcher$OnDispatchListener;
    }
.end annotation


# instance fields
.field private final dispatchRunnable:Ljava/lang/Runnable;

.field private final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lspacemadness/com/lunarconsole/console/ConsoleEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final listener:Lspacemadness/com/lunarconsole/console/ConsoleEntryDispatcher$OnDispatchListener;


# direct methods
.method public constructor <init>(Lspacemadness/com/lunarconsole/console/ConsoleEntryDispatcher$OnDispatchListener;)V
    .locals 2
    .param p1, "listener"    # Lspacemadness/com/lunarconsole/console/ConsoleEntryDispatcher$OnDispatchListener;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-nez p1, :cond_0

    .line 41
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Listener is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    iput-object p1, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryDispatcher;->listener:Lspacemadness/com/lunarconsole/console/ConsoleEntryDispatcher$OnDispatchListener;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryDispatcher;->entries:Ljava/util/List;

    .line 46
    invoke-direct {p0}, Lspacemadness/com/lunarconsole/console/ConsoleEntryDispatcher;->createDispatchRunnable()Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryDispatcher;->dispatchRunnable:Ljava/lang/Runnable;

    .line 47
    return-void
.end method

.method private createDispatchRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lspacemadness/com/lunarconsole/console/ConsoleEntryDispatcher$1;

    invoke-direct {v0, p0}, Lspacemadness/com/lunarconsole/console/ConsoleEntryDispatcher$1;-><init>(Lspacemadness/com/lunarconsole/console/ConsoleEntryDispatcher;)V

    return-object v0
.end method


# virtual methods
.method public add(Lspacemadness/com/lunarconsole/console/ConsoleEntry;)V
    .locals 3
    .param p1, "entry"    # Lspacemadness/com/lunarconsole/console/ConsoleEntry;

    .prologue
    .line 51
    iget-object v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryDispatcher;->entries:Ljava/util/List;

    monitor-enter v1

    .line 53
    :try_start_0
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryDispatcher;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryDispatcher;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 57
    invoke-virtual {p0}, Lspacemadness/com/lunarconsole/console/ConsoleEntryDispatcher;->postEntriesDispatch()V

    .line 59
    :cond_0
    monitor-exit v1

    .line 60
    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cancelAll()V
    .locals 2

    .prologue
    .line 103
    invoke-virtual {p0}, Lspacemadness/com/lunarconsole/console/ConsoleEntryDispatcher;->cancelEntriesDispatch()V

    .line 105
    iget-object v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryDispatcher;->entries:Ljava/util/List;

    monitor-enter v1

    .line 107
    :try_start_0
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryDispatcher;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 108
    monitor-exit v1

    .line 109
    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected cancelEntriesDispatch()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryDispatcher;->dispatchRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lspacemadness/com/lunarconsole/utils/ThreadUtils;->cancel(Ljava/lang/Runnable;)V

    .line 70
    return-void
.end method

.method protected dispatchEntries()V
    .locals 4

    .prologue
    .line 74
    iget-object v2, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryDispatcher;->entries:Ljava/util/List;

    monitor-enter v2

    .line 78
    :try_start_0
    iget-object v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryDispatcher;->listener:Lspacemadness/com/lunarconsole/console/ConsoleEntryDispatcher$OnDispatchListener;

    iget-object v3, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryDispatcher;->entries:Ljava/util/List;

    invoke-interface {v1, v3}, Lspacemadness/com/lunarconsole/console/ConsoleEntryDispatcher$OnDispatchListener;->onDispatchEntries(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :goto_0
    :try_start_1
    iget-object v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryDispatcher;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 85
    monitor-exit v2

    .line 86
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Can\'t dispatch entries"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lspacemadness/com/lunarconsole/debug/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 85
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected postEntriesDispatch()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryDispatcher;->dispatchRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lspacemadness/com/lunarconsole/utils/ThreadUtils;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 65
    return-void
.end method
