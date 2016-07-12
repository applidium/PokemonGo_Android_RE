.class Lspacemadness/com/lunarconsole/console/ConsoleView$4;
.super Ljava/lang/Object;
.source "ConsoleView.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 404
    iput-object p1, p0, Lspacemadness/com/lunarconsole/console/ConsoleView$4;->this$0:Lspacemadness/com/lunarconsole/console/ConsoleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 418
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleView$4;->this$0:Lspacemadness/com/lunarconsole/console/ConsoleView;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lspacemadness/com/lunarconsole/console/ConsoleView;->filterByText(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lspacemadness/com/lunarconsole/console/ConsoleView;->access$300(Lspacemadness/com/lunarconsole/console/ConsoleView;Ljava/lang/String;)V

    .line 419
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 408
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 413
    return-void
.end method
