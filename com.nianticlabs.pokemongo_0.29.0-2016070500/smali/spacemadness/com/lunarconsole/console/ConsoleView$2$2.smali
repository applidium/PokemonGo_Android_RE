.class Lspacemadness/com/lunarconsole/console/ConsoleView$2$2;
.super Ljava/lang/Object;
.source "ConsoleView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lspacemadness/com/lunarconsole/console/ConsoleView$2;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lspacemadness/com/lunarconsole/console/ConsoleView$2;

.field final synthetic val$entry:Lspacemadness/com/lunarconsole/console/ConsoleEntry;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$stackTrace:Ljava/lang/String;


# direct methods
.method constructor <init>(Lspacemadness/com/lunarconsole/console/ConsoleView$2;Ljava/lang/String;Lspacemadness/com/lunarconsole/console/ConsoleEntry;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lspacemadness/com/lunarconsole/console/ConsoleView$2$2;->this$1:Lspacemadness/com/lunarconsole/console/ConsoleView$2;

    iput-object p2, p0, Lspacemadness/com/lunarconsole/console/ConsoleView$2$2;->val$message:Ljava/lang/String;

    iput-object p3, p0, Lspacemadness/com/lunarconsole/console/ConsoleView$2$2;->val$entry:Lspacemadness/com/lunarconsole/console/ConsoleEntry;

    iput-object p4, p0, Lspacemadness/com/lunarconsole/console/ConsoleView$2$2;->val$stackTrace:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 178
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleView$2$2;->val$message:Ljava/lang/String;

    .line 179
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleView$2$2;->val$entry:Lspacemadness/com/lunarconsole/console/ConsoleEntry;

    invoke-virtual {v1}, Lspacemadness/com/lunarconsole/console/ConsoleEntry;->hasStackTrace()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lspacemadness/com/lunarconsole/console/ConsoleView$2$2;->val$stackTrace:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    :cond_0
    iget-object v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleView$2$2;->this$1:Lspacemadness/com/lunarconsole/console/ConsoleView$2;

    iget-object v1, v1, Lspacemadness/com/lunarconsole/console/ConsoleView$2;->this$0:Lspacemadness/com/lunarconsole/console/ConsoleView;

    # invokes: Lspacemadness/com/lunarconsole/console/ConsoleView;->copyToClipboard(Ljava/lang/String;)Z
    invoke-static {v1, v0}, Lspacemadness/com/lunarconsole/console/ConsoleView;->access$000(Lspacemadness/com/lunarconsole/console/ConsoleView;Ljava/lang/String;)Z

    .line 184
    return-void
.end method
