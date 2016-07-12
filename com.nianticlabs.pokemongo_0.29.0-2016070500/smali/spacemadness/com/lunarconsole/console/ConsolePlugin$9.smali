.class Lspacemadness/com/lunarconsole/console/ConsolePlugin$9;
.super Ljava/lang/Object;
.source "ConsolePlugin.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lspacemadness/com/lunarconsole/console/ConsolePlugin;->enableGestureRecognition()V
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
    .line 581
    iput-object p1, p0, Lspacemadness/com/lunarconsole/console/ConsolePlugin$9;->this$0:Lspacemadness/com/lunarconsole/console/ConsolePlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 585
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsolePlugin$9;->this$0:Lspacemadness/com/lunarconsole/console/ConsolePlugin;

    # getter for: Lspacemadness/com/lunarconsole/console/ConsolePlugin;->gestureDetector:Lspacemadness/com/lunarconsole/ui/GestureRecognizer;
    invoke-static {v0}, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->access$900(Lspacemadness/com/lunarconsole/console/ConsolePlugin;)Lspacemadness/com/lunarconsole/ui/GestureRecognizer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lspacemadness/com/lunarconsole/ui/GestureRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 586
    const/4 v0, 0x0

    return v0
.end method
