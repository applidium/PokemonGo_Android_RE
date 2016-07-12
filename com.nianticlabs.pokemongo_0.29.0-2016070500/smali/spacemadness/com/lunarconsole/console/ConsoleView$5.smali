.class Lspacemadness/com/lunarconsole/console/ConsoleView$5;
.super Ljava/lang/Object;
.source "ConsoleView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lspacemadness/com/lunarconsole/console/ConsoleView;->setupFilterTextEdit()Landroid/widget/EditText;
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
    .line 422
    iput-object p1, p0, Lspacemadness/com/lunarconsole/console/ConsoleView$5;->this$0:Lspacemadness/com/lunarconsole/console/ConsoleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 426
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleView$5;->this$0:Lspacemadness/com/lunarconsole/console/ConsoleView;

    const/4 v1, 0x1

    # setter for: Lspacemadness/com/lunarconsole/console/ConsoleView;->softKeyboardVisible:Z
    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/console/ConsoleView;->access$402(Lspacemadness/com/lunarconsole/console/ConsoleView;Z)Z

    .line 427
    return-void
.end method
