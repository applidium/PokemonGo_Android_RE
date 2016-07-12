.class Lspacemadness/com/lunarconsole/console/ConsoleEntryDispatcher$1;
.super Ljava/lang/Object;
.source "ConsoleEntryDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lspacemadness/com/lunarconsole/console/ConsoleEntryDispatcher;->createDispatchRunnable()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lspacemadness/com/lunarconsole/console/ConsoleEntryDispatcher;


# direct methods
.method constructor <init>(Lspacemadness/com/lunarconsole/console/ConsoleEntryDispatcher;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryDispatcher$1;->this$0:Lspacemadness/com/lunarconsole/console/ConsoleEntryDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryDispatcher$1;->this$0:Lspacemadness/com/lunarconsole/console/ConsoleEntryDispatcher;

    invoke-virtual {v0}, Lspacemadness/com/lunarconsole/console/ConsoleEntryDispatcher;->dispatchEntries()V

    .line 96
    return-void
.end method
