.class public Lspacemadness/com/lunarconsole/console/Console;
.super Ljava/lang/Object;
.source "Console.java"

# interfaces
.implements Lspacemadness/com/lunarconsole/console/ConsoleAdapter$DataSource;
.implements Lspacemadness/com/lunarconsole/core/Destroyable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lspacemadness/com/lunarconsole/console/Console$Options;
    }
.end annotation


# static fields
.field private static final NULL_LISTENER:Lspacemadness/com/lunarconsole/console/LunarConsoleListener;


# instance fields
.field private consoleListener:Lspacemadness/com/lunarconsole/console/LunarConsoleListener;

.field private final entries:Lspacemadness/com/lunarconsole/console/ConsoleEntryList;

.field private final options:Lspacemadness/com/lunarconsole/console/Console$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lspacemadness/com/lunarconsole/console/Console$1;

    invoke-direct {v0}, Lspacemadness/com/lunarconsole/console/Console$1;-><init>()V

    sput-object v0, Lspacemadness/com/lunarconsole/console/Console;->NULL_LISTENER:Lspacemadness/com/lunarconsole/console/LunarConsoleListener;

    return-void
.end method

.method public constructor <init>(Lspacemadness/com/lunarconsole/console/Console$Options;)V
    .locals 3
    .param p1, "options"    # Lspacemadness/com/lunarconsole/console/Console$Options;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    if-nez p1, :cond_0

    .line 58
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Options is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    invoke-virtual {p1}, Lspacemadness/com/lunarconsole/console/Console$Options;->clone()Lspacemadness/com/lunarconsole/console/Console$Options;

    move-result-object v0

    iput-object v0, p0, Lspacemadness/com/lunarconsole/console/Console;->options:Lspacemadness/com/lunarconsole/console/Console$Options;

    .line 62
    new-instance v0, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;

    invoke-virtual {p1}, Lspacemadness/com/lunarconsole/console/Console$Options;->getCapacity()I

    move-result v1

    invoke-virtual {p1}, Lspacemadness/com/lunarconsole/console/Console$Options;->getTrimCount()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;-><init>(II)V

    iput-object v0, p0, Lspacemadness/com/lunarconsole/console/Console;->entries:Lspacemadness/com/lunarconsole/console/ConsoleEntryList;

    .line 63
    sget-object v0, Lspacemadness/com/lunarconsole/console/Console;->NULL_LISTENER:Lspacemadness/com/lunarconsole/console/LunarConsoleListener;

    iput-object v0, p0, Lspacemadness/com/lunarconsole/console/Console;->consoleListener:Lspacemadness/com/lunarconsole/console/LunarConsoleListener;

    .line 64
    return-void
.end method

.method private notifyEntriesCleared()V
    .locals 3

    .prologue
    .line 145
    :try_start_0
    iget-object v1, p0, Lspacemadness/com/lunarconsole/console/Console;->consoleListener:Lspacemadness/com/lunarconsole/console/LunarConsoleListener;

    invoke-interface {v1, p0}, Lspacemadness/com/lunarconsole/console/LunarConsoleListener;->onClearEntries(Lspacemadness/com/lunarconsole/console/Console;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Error while notifying delegate"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lspacemadness/com/lunarconsole/debug/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private notifyEntryAdded(Lspacemadness/com/lunarconsole/console/ConsoleEntry;Z)V
    .locals 3
    .param p1, "entry"    # Lspacemadness/com/lunarconsole/console/ConsoleEntry;
    .param p2, "filtered"    # Z

    .prologue
    .line 121
    :try_start_0
    iget-object v1, p0, Lspacemadness/com/lunarconsole/console/Console;->consoleListener:Lspacemadness/com/lunarconsole/console/LunarConsoleListener;

    invoke-interface {v1, p0, p1, p2}, Lspacemadness/com/lunarconsole/console/LunarConsoleListener;->onAddEntry(Lspacemadness/com/lunarconsole/console/Console;Lspacemadness/com/lunarconsole/console/ConsoleEntry;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Error while notifying delegate"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lspacemadness/com/lunarconsole/debug/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private notifyRemoveEntries(II)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "length"    # I

    .prologue
    .line 133
    :try_start_0
    iget-object v1, p0, Lspacemadness/com/lunarconsole/console/Console;->consoleListener:Lspacemadness/com/lunarconsole/console/LunarConsoleListener;

    invoke-interface {v1, p0, p1, p2}, Lspacemadness/com/lunarconsole/console/LunarConsoleListener;->onRemoveEntries(Lspacemadness/com/lunarconsole/console/Console;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Error while notifying delegate"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lspacemadness/com/lunarconsole/debug/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/Console;->entries:Lspacemadness/com/lunarconsole/console/ConsoleEntryList;

    invoke-virtual {v0}, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->clear()V

    .line 102
    invoke-direct {p0}, Lspacemadness/com/lunarconsole/console/Console;->notifyEntriesCleared()V

    .line 103
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/Console;->entries:Lspacemadness/com/lunarconsole/console/ConsoleEntryList;

    invoke-virtual {v0}, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->clear()V

    .line 112
    return-void
.end method

.method public entries()Lspacemadness/com/lunarconsole/console/ConsoleEntryList;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/Console;->entries:Lspacemadness/com/lunarconsole/console/ConsoleEntryList;

    return-object v0
.end method

.method public entriesCount()I
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/Console;->entries:Lspacemadness/com/lunarconsole/console/ConsoleEntryList;

    invoke-virtual {v0}, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->count()I

    move-result v0

    return v0
.end method

.method public entryAtIndex(I)Lspacemadness/com/lunarconsole/console/ConsoleEntry;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/Console;->entries:Lspacemadness/com/lunarconsole/console/ConsoleEntryList;

    invoke-virtual {v0, p1}, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->getEntry(I)Lspacemadness/com/lunarconsole/console/ConsoleEntry;

    move-result-object v0

    return-object v0
.end method

.method public getConsoleListener()Lspacemadness/com/lunarconsole/console/LunarConsoleListener;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/Console;->consoleListener:Lspacemadness/com/lunarconsole/console/LunarConsoleListener;

    return-object v0
.end method

.method public getEntry(I)Lspacemadness/com/lunarconsole/console/ConsoleEntry;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 194
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/Console;->entries:Lspacemadness/com/lunarconsole/console/ConsoleEntryList;

    invoke-virtual {v0, p1}, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->getEntry(I)Lspacemadness/com/lunarconsole/console/ConsoleEntry;

    move-result-object v0

    return-object v0
.end method

.method public getEntryCount()I
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/Console;->entries:Lspacemadness/com/lunarconsole/console/ConsoleEntryList;

    invoke-virtual {v0}, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->count()I

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/Console;->entries:Lspacemadness/com/lunarconsole/console/ConsoleEntryList;

    invoke-virtual {v0}, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isTrimmed()Z
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/Console;->entries:Lspacemadness/com/lunarconsole/console/ConsoleEntryList;

    invoke-virtual {v0}, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->isTrimmed()Z

    move-result v0

    return v0
.end method

.method public logMessage(Ljava/lang/String;Ljava/lang/String;B)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "stackTrace"    # Ljava/lang/String;
    .param p3, "type"    # B

    .prologue
    .line 73
    new-instance v0, Lspacemadness/com/lunarconsole/console/ConsoleEntry;

    invoke-direct {v0, p3, p1, p2}, Lspacemadness/com/lunarconsole/console/ConsoleEntry;-><init>(BLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lspacemadness/com/lunarconsole/console/Console;->logMessage(Lspacemadness/com/lunarconsole/console/ConsoleEntry;)V

    .line 74
    return-void
.end method

.method logMessage(Lspacemadness/com/lunarconsole/console/ConsoleEntry;)V
    .locals 4
    .param p1, "entry"    # Lspacemadness/com/lunarconsole/console/ConsoleEntry;

    .prologue
    .line 78
    iget-object v3, p0, Lspacemadness/com/lunarconsole/console/Console;->entries:Lspacemadness/com/lunarconsole/console/ConsoleEntryList;

    invoke-virtual {v3}, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->trimmedCount()I

    move-result v1

    .line 81
    .local v1, "oldTrimmedCount":I
    iget-object v3, p0, Lspacemadness/com/lunarconsole/console/Console;->entries:Lspacemadness/com/lunarconsole/console/ConsoleEntryList;

    invoke-virtual {v3}, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->totalCount()I

    move-result v3

    iput v3, p1, Lspacemadness/com/lunarconsole/console/ConsoleEntry;->index:I

    .line 84
    iget-object v3, p0, Lspacemadness/com/lunarconsole/console/Console;->entries:Lspacemadness/com/lunarconsole/console/ConsoleEntryList;

    invoke-virtual {v3, p1}, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->filterEntry(Lspacemadness/com/lunarconsole/console/ConsoleEntry;)Z

    move-result v0

    .line 87
    .local v0, "filtered":Z
    iget-object v3, p0, Lspacemadness/com/lunarconsole/console/Console;->entries:Lspacemadness/com/lunarconsole/console/ConsoleEntryList;

    invoke-virtual {v3, p1}, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->addEntry(Lspacemadness/com/lunarconsole/console/ConsoleEntry;)V

    .line 90
    iget-object v3, p0, Lspacemadness/com/lunarconsole/console/Console;->entries:Lspacemadness/com/lunarconsole/console/ConsoleEntryList;

    invoke-virtual {v3}, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->trimmedCount()I

    move-result v3

    sub-int v2, v3, v1

    .line 91
    .local v2, "trimmedCount":I
    if-lez v2, :cond_0

    .line 93
    const/4 v3, 0x0

    invoke-direct {p0, v3, v2}, Lspacemadness/com/lunarconsole/console/Console;->notifyRemoveEntries(II)V

    .line 96
    :cond_0
    invoke-direct {p0, p1, v0}, Lspacemadness/com/lunarconsole/console/Console;->notifyEntryAdded(Lspacemadness/com/lunarconsole/console/ConsoleEntry;Z)V

    .line 97
    return-void
.end method

.method public setConsoleListener(Lspacemadness/com/lunarconsole/console/LunarConsoleListener;)V
    .locals 0
    .param p1, "listener"    # Lspacemadness/com/lunarconsole/console/LunarConsoleListener;

    .prologue
    .line 165
    if-eqz p1, :cond_0

    .end local p1    # "listener":Lspacemadness/com/lunarconsole/console/LunarConsoleListener;
    :goto_0
    iput-object p1, p0, Lspacemadness/com/lunarconsole/console/Console;->consoleListener:Lspacemadness/com/lunarconsole/console/LunarConsoleListener;

    .line 166
    return-void

    .line 165
    .restart local p1    # "listener":Lspacemadness/com/lunarconsole/console/LunarConsoleListener;
    :cond_0
    sget-object p1, Lspacemadness/com/lunarconsole/console/Console;->NULL_LISTENER:Lspacemadness/com/lunarconsole/console/LunarConsoleListener;

    goto :goto_0
.end method

.method public trimmedCount()I
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/Console;->entries:Lspacemadness/com/lunarconsole/console/ConsoleEntryList;

    invoke-virtual {v0}, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->trimmedCount()I

    move-result v0

    return v0
.end method
