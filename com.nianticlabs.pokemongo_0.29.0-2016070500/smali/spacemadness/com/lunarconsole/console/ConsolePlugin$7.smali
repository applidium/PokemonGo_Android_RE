.class Lspacemadness/com/lunarconsole/console/ConsolePlugin$7;
.super Ljava/lang/Object;
.source "ConsolePlugin.java"

# interfaces
.implements Lspacemadness/com/lunarconsole/ui/GestureRecognizer$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lspacemadness/com/lunarconsole/console/ConsolePlugin;-><init>(Landroid/app/Activity;Ljava/lang/String;IILspacemadness/com/lunarconsole/console/ConsolePluginImp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lspacemadness/com/lunarconsole/console/ConsolePlugin;


# direct methods
.method constructor <init>(Lspacemadness/com/lunarconsole/console/ConsolePlugin;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lspacemadness/com/lunarconsole/console/ConsolePlugin$7;->this$0:Lspacemadness/com/lunarconsole/console/ConsolePlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGesture(Lspacemadness/com/lunarconsole/ui/GestureRecognizer;)V
    .locals 1
    .param p1, "gestureRecognizer"    # Lspacemadness/com/lunarconsole/ui/GestureRecognizer;

    .prologue
    .line 320
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsolePlugin$7;->this$0:Lspacemadness/com/lunarconsole/console/ConsolePlugin;

    # invokes: Lspacemadness/com/lunarconsole/console/ConsolePlugin;->showConsole()Z
    invoke-static {v0}, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->access$700(Lspacemadness/com/lunarconsole/console/ConsolePlugin;)Z

    .line 321
    return-void
.end method
