.class Lspacemadness/com/lunarconsole/console/ConsoleView$2$1;
.super Ljava/lang/Object;
.source "ConsoleView.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$entry:Lspacemadness/com/lunarconsole/console/ConsoleEntry;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lspacemadness/com/lunarconsole/console/ConsoleView$2;Landroid/view/View;Lspacemadness/com/lunarconsole/console/ConsoleEntry;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lspacemadness/com/lunarconsole/console/ConsoleView$2$1;->this$1:Lspacemadness/com/lunarconsole/console/ConsoleView$2;

    iput-object p2, p0, Lspacemadness/com/lunarconsole/console/ConsoleView$2$1;->val$view:Landroid/view/View;

    iput-object p3, p0, Lspacemadness/com/lunarconsole/console/ConsoleView$2$1;->val$entry:Lspacemadness/com/lunarconsole/console/ConsoleEntry;

    iput-object p4, p0, Lspacemadness/com/lunarconsole/console/ConsoleView$2$1;->val$ctx:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 144
    :try_start_0
    iget-object v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleView$2$1;->val$view:Landroid/view/View;

    iget-object v2, p0, Lspacemadness/com/lunarconsole/console/ConsoleView$2$1;->val$entry:Lspacemadness/com/lunarconsole/console/ConsoleEntry;

    iget-object v3, p0, Lspacemadness/com/lunarconsole/console/ConsoleView$2$1;->val$ctx:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lspacemadness/com/lunarconsole/console/ConsoleEntry;->getBackgroundColor(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Error while settings entry background color"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lspacemadness/com/lunarconsole/debug/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
