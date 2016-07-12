.class Lspacemadness/com/lunarconsole/console/ConsoleView$12;
.super Ljava/lang/Object;
.source "ConsoleView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lspacemadness/com/lunarconsole/console/ConsoleView;->setupFakeStatusBar()V
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
    .line 523
    iput-object p1, p0, Lspacemadness/com/lunarconsole/console/ConsoleView$12;->this$0:Lspacemadness/com/lunarconsole/console/ConsoleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 527
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleView$12;->this$0:Lspacemadness/com/lunarconsole/console/ConsoleView;

    # getter for: Lspacemadness/com/lunarconsole/console/ConsoleView;->scrollLockButton:Lspacemadness/com/lunarconsole/ui/ToggleImageButton;
    invoke-static {v0}, Lspacemadness/com/lunarconsole/console/ConsoleView;->access$200(Lspacemadness/com/lunarconsole/console/ConsoleView;)Lspacemadness/com/lunarconsole/ui/ToggleImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lspacemadness/com/lunarconsole/ui/ToggleImageButton;->setOn(Z)V

    .line 528
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleView$12;->this$0:Lspacemadness/com/lunarconsole/console/ConsoleView;

    iget-object v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleView$12;->this$0:Lspacemadness/com/lunarconsole/console/ConsoleView;

    # getter for: Lspacemadness/com/lunarconsole/console/ConsoleView;->console:Lspacemadness/com/lunarconsole/console/Console;
    invoke-static {v1}, Lspacemadness/com/lunarconsole/console/ConsoleView;->access$1100(Lspacemadness/com/lunarconsole/console/ConsoleView;)Lspacemadness/com/lunarconsole/console/Console;

    move-result-object v1

    # invokes: Lspacemadness/com/lunarconsole/console/ConsoleView;->scrollToTop(Lspacemadness/com/lunarconsole/console/Console;)V
    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/console/ConsoleView;->access$1200(Lspacemadness/com/lunarconsole/console/ConsoleView;Lspacemadness/com/lunarconsole/console/Console;)V

    .line 529
    return-void
.end method
