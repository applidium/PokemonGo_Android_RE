.class Lspacemadness/com/lunarconsole/console/ConsolePlugin$8;
.super Ljava/lang/Object;
.source "ConsolePlugin.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lspacemadness/com/lunarconsole/console/ConsolePlugin;->hideConsole()Z
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
    .line 416
    iput-object p1, p0, Lspacemadness/com/lunarconsole/console/ConsolePlugin$8;->this$0:Lspacemadness/com/lunarconsole/console/ConsolePlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 425
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsolePlugin$8;->this$0:Lspacemadness/com/lunarconsole/console/ConsolePlugin;

    # invokes: Lspacemadness/com/lunarconsole/console/ConsolePlugin;->removeConsoleView()V
    invoke-static {v0}, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->access$800(Lspacemadness/com/lunarconsole/console/ConsolePlugin;)V

    .line 426
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 432
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 420
    return-void
.end method
