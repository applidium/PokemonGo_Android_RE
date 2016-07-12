.class Lspacemadness/com/lunarconsole/console/WarningView$1;
.super Ljava/lang/Object;
.source "WarningView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 87
    iput-object p1, p0, Lspacemadness/com/lunarconsole/console/WarningView$1;->this$0:Lspacemadness/com/lunarconsole/console/WarningView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 91
    const/4 v0, 0x1

    return v0
.end method
