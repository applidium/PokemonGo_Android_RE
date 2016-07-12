.class final Lspacemadness/com/lunarconsole/console/ConsolePlugin$6;
.super Ljava/lang/Object;
.source "ConsolePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lspacemadness/com/lunarconsole/console/ConsolePlugin;->clear()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 276
    # invokes: Lspacemadness/com/lunarconsole/console/ConsolePlugin;->clear0()V
    invoke-static {}, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->access$600()V

    .line 277
    return-void
.end method
