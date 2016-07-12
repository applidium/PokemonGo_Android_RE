.class Lspacemadness/com/lunarconsole/console/ConsoleView$3;
.super Ljava/lang/Object;
.source "ConsoleView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lspacemadness/com/lunarconsole/console/ConsoleView;-><init>(Landroid/content/Context;Lspacemadness/com/lunarconsole/console/Console;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lspacemadness/com/lunarconsole/console/ConsoleView;


# direct methods
.method constructor <init>(Lspacemadness/com/lunarconsole/console/ConsoleView;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lspacemadness/com/lunarconsole/console/ConsoleView$3;->this$0:Lspacemadness/com/lunarconsole/console/ConsoleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 197
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleView$3;->this$0:Lspacemadness/com/lunarconsole/console/ConsoleView;

    # getter for: Lspacemadness/com/lunarconsole/console/ConsoleView;->scrollLocked:Z
    invoke-static {v0}, Lspacemadness/com/lunarconsole/console/ConsoleView;->access$100(Lspacemadness/com/lunarconsole/console/ConsoleView;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleView$3;->this$0:Lspacemadness/com/lunarconsole/console/ConsoleView;

    # getter for: Lspacemadness/com/lunarconsole/console/ConsoleView;->scrollLockButton:Lspacemadness/com/lunarconsole/ui/ToggleImageButton;
    invoke-static {v0}, Lspacemadness/com/lunarconsole/console/ConsoleView;->access$200(Lspacemadness/com/lunarconsole/console/ConsoleView;)Lspacemadness/com/lunarconsole/ui/ToggleImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lspacemadness/com/lunarconsole/ui/ToggleImageButton;->setOn(Z)V

    .line 202
    :cond_0
    return v1
.end method
