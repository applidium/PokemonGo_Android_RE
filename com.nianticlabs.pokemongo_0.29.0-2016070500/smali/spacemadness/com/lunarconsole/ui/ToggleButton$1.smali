.class Lspacemadness/com/lunarconsole/ui/ToggleButton$1;
.super Ljava/lang/Object;
.source "ToggleButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lspacemadness/com/lunarconsole/ui/ToggleButton;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lspacemadness/com/lunarconsole/ui/ToggleButton;


# direct methods
.method constructor <init>(Lspacemadness/com/lunarconsole/ui/ToggleButton;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lspacemadness/com/lunarconsole/ui/ToggleButton$1;->this$0:Lspacemadness/com/lunarconsole/ui/ToggleButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 68
    iget-object v1, p0, Lspacemadness/com/lunarconsole/ui/ToggleButton$1;->this$0:Lspacemadness/com/lunarconsole/ui/ToggleButton;

    iget-object v0, p0, Lspacemadness/com/lunarconsole/ui/ToggleButton$1;->this$0:Lspacemadness/com/lunarconsole/ui/ToggleButton;

    # getter for: Lspacemadness/com/lunarconsole/ui/ToggleButton;->on:Z
    invoke-static {v0}, Lspacemadness/com/lunarconsole/ui/ToggleButton;->access$000(Lspacemadness/com/lunarconsole/ui/ToggleButton;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lspacemadness/com/lunarconsole/ui/ToggleButton;->setOn(Z)V

    .line 69
    return-void

    .line 68
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
