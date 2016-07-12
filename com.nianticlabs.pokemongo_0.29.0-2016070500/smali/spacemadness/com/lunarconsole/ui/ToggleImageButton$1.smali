.class Lspacemadness/com/lunarconsole/ui/ToggleImageButton$1;
.super Ljava/lang/Object;
.source "ToggleImageButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lspacemadness/com/lunarconsole/ui/ToggleImageButton;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lspacemadness/com/lunarconsole/ui/ToggleImageButton;


# direct methods
.method constructor <init>(Lspacemadness/com/lunarconsole/ui/ToggleImageButton;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lspacemadness/com/lunarconsole/ui/ToggleImageButton$1;->this$0:Lspacemadness/com/lunarconsole/ui/ToggleImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 72
    iget-object v1, p0, Lspacemadness/com/lunarconsole/ui/ToggleImageButton$1;->this$0:Lspacemadness/com/lunarconsole/ui/ToggleImageButton;

    iget-object v0, p0, Lspacemadness/com/lunarconsole/ui/ToggleImageButton$1;->this$0:Lspacemadness/com/lunarconsole/ui/ToggleImageButton;

    # getter for: Lspacemadness/com/lunarconsole/ui/ToggleImageButton;->on:Z
    invoke-static {v0}, Lspacemadness/com/lunarconsole/ui/ToggleImageButton;->access$000(Lspacemadness/com/lunarconsole/ui/ToggleImageButton;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lspacemadness/com/lunarconsole/ui/ToggleImageButton;->setOn(Z)V

    .line 73
    return-void

    .line 72
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
