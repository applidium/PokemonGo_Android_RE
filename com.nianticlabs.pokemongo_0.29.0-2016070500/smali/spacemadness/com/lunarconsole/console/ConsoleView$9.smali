.class Lspacemadness/com/lunarconsole/console/ConsoleView$9;
.super Ljava/lang/Object;
.source "ConsoleView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 488
    iput-object p1, p0, Lspacemadness/com/lunarconsole/console/ConsoleView$9;->this$0:Lspacemadness/com/lunarconsole/console/ConsoleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 492
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleView$9;->this$0:Lspacemadness/com/lunarconsole/console/ConsoleView;

    # invokes: Lspacemadness/com/lunarconsole/console/ConsoleView;->copyConsoleOutputToClipboard()Z
    invoke-static {v0}, Lspacemadness/com/lunarconsole/console/ConsoleView;->access$800(Lspacemadness/com/lunarconsole/console/ConsoleView;)Z

    .line 493
    return-void
.end method
