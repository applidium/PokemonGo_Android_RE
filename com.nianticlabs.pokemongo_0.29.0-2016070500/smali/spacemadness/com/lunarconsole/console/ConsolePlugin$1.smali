.class final Lspacemadness/com/lunarconsole/console/ConsolePlugin$1;
.super Ljava/lang/Object;
.source "ConsolePlugin.java"

# interfaces
.implements Lspacemadness/com/lunarconsole/console/ConsoleEntryDispatcher$OnDispatchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lspacemadness/com/lunarconsole/console/ConsolePlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDispatchEntries(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lspacemadness/com/lunarconsole/console/ConsoleEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lspacemadness/com/lunarconsole/console/ConsoleEntry;>;"
    # getter for: Lspacemadness/com/lunarconsole/console/ConsolePlugin;->instance:Lspacemadness/com/lunarconsole/console/ConsolePlugin;
    invoke-static {}, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->access$000()Lspacemadness/com/lunarconsole/console/ConsolePlugin;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    # getter for: Lspacemadness/com/lunarconsole/console/ConsolePlugin;->instance:Lspacemadness/com/lunarconsole/console/ConsolePlugin;
    invoke-static {}, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->access$000()Lspacemadness/com/lunarconsole/console/ConsolePlugin;

    move-result-object v0

    # invokes: Lspacemadness/com/lunarconsole/console/ConsolePlugin;->logEntries(Ljava/util/List;)V
    invoke-static {v0, p1}, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->access$100(Lspacemadness/com/lunarconsole/console/ConsolePlugin;Ljava/util/List;)V

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    const-string v0, "Can\'t log message: plugin instance is not initialized"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/debug/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
