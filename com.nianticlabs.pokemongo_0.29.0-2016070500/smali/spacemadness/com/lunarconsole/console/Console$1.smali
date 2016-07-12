.class final Lspacemadness/com/lunarconsole/console/Console$1;
.super Ljava/lang/Object;
.source "Console.java"

# interfaces
.implements Lspacemadness/com/lunarconsole/console/LunarConsoleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lspacemadness/com/lunarconsole/console/Console;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddEntry(Lspacemadness/com/lunarconsole/console/Console;Lspacemadness/com/lunarconsole/console/ConsoleEntry;Z)V
    .locals 0
    .param p1, "console"    # Lspacemadness/com/lunarconsole/console/Console;
    .param p2, "entry"    # Lspacemadness/com/lunarconsole/console/ConsoleEntry;
    .param p3, "filtered"    # Z

    .prologue
    .line 36
    return-void
.end method

.method public onClearEntries(Lspacemadness/com/lunarconsole/console/Console;)V
    .locals 0
    .param p1, "console"    # Lspacemadness/com/lunarconsole/console/Console;

    .prologue
    .line 46
    return-void
.end method

.method public onRemoveEntries(Lspacemadness/com/lunarconsole/console/Console;II)V
    .locals 0
    .param p1, "console"    # Lspacemadness/com/lunarconsole/console/Console;
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 41
    return-void
.end method
