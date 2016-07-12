.class Lspacemadness/com/lunarconsole/console/WarningView$3;
.super Ljava/lang/Object;
.source "WarningView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lspacemadness/com/lunarconsole/console/WarningView;->setupUI(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lspacemadness/com/lunarconsole/console/WarningView;


# direct methods
.method constructor <init>(Lspacemadness/com/lunarconsole/console/WarningView;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lspacemadness/com/lunarconsole/console/WarningView$3;->this$0:Lspacemadness/com/lunarconsole/console/WarningView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 109
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/WarningView$3;->this$0:Lspacemadness/com/lunarconsole/console/WarningView;

    # invokes: Lspacemadness/com/lunarconsole/console/WarningView;->notifyDetails()V
    invoke-static {v0}, Lspacemadness/com/lunarconsole/console/WarningView;->access$100(Lspacemadness/com/lunarconsole/console/WarningView;)V

    .line 110
    return-void
.end method
