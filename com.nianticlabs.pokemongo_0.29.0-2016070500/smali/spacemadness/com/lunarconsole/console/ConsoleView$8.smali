.class Lspacemadness/com/lunarconsole/console/ConsoleView$8;
.super Ljava/lang/Object;
.source "ConsoleView.java"

# interfaces
.implements Lspacemadness/com/lunarconsole/ui/ToggleImageButton$OnStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lspacemadness/com/lunarconsole/console/ConsoleView;->setupOperationsButtons()V
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
    .line 479
    iput-object p1, p0, Lspacemadness/com/lunarconsole/console/ConsoleView$8;->this$0:Lspacemadness/com/lunarconsole/console/ConsoleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Lspacemadness/com/lunarconsole/ui/ToggleImageButton;)V
    .locals 1
    .param p1, "button"    # Lspacemadness/com/lunarconsole/ui/ToggleImageButton;

    .prologue
    .line 483
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleView$8;->this$0:Lspacemadness/com/lunarconsole/console/ConsoleView;

    # invokes: Lspacemadness/com/lunarconsole/console/ConsoleView;->toggleScrollLock()V
    invoke-static {v0}, Lspacemadness/com/lunarconsole/console/ConsoleView;->access$700(Lspacemadness/com/lunarconsole/console/ConsoleView;)V

    .line 484
    return-void
.end method
