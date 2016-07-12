.class Lspacemadness/com/lunarconsole/console/ConsoleView$6;
.super Ljava/lang/Object;
.source "ConsoleView.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 430
    iput-object p1, p0, Lspacemadness/com/lunarconsole/console/ConsoleView$6;->this$0:Lspacemadness/com/lunarconsole/console/ConsoleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 434
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 436
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleView$6;->this$0:Lspacemadness/com/lunarconsole/console/ConsoleView;

    # invokes: Lspacemadness/com/lunarconsole/console/ConsoleView;->hideSoftKeyboard()V
    invoke-static {v0}, Lspacemadness/com/lunarconsole/console/ConsoleView;->access$500(Lspacemadness/com/lunarconsole/console/ConsoleView;)V

    .line 437
    const/4 v0, 0x1

    .line 439
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
