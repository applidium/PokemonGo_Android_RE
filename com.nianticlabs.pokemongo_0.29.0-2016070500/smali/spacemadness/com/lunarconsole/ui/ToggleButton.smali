.class public Lspacemadness/com/lunarconsole/ui/ToggleButton;
.super Landroid/widget/Button;
.source "ToggleButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lspacemadness/com/lunarconsole/ui/ToggleButton$OnStateChangeListener;
    }
.end annotation


# instance fields
.field private on:Z

.field private stateChangeListener:Lspacemadness/com/lunarconsole/ui/ToggleButton$OnStateChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-direct {p0}, Lspacemadness/com/lunarconsole/ui/ToggleButton;->init()V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    invoke-direct {p0}, Lspacemadness/com/lunarconsole/ui/ToggleButton;->init()V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    invoke-direct {p0}, Lspacemadness/com/lunarconsole/ui/ToggleButton;->init()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 52
    invoke-direct {p0}, Lspacemadness/com/lunarconsole/ui/ToggleButton;->init()V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lspacemadness/com/lunarconsole/ui/ToggleButton;)Z
    .locals 1
    .param p0, "x0"    # Lspacemadness/com/lunarconsole/ui/ToggleButton;

    .prologue
    .line 31
    iget-boolean v0, p0, Lspacemadness/com/lunarconsole/ui/ToggleButton;->on:Z

    return v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lspacemadness/com/lunarconsole/ui/ToggleButton$1;

    invoke-direct {v0, p0}, Lspacemadness/com/lunarconsole/ui/ToggleButton$1;-><init>(Lspacemadness/com/lunarconsole/ui/ToggleButton;)V

    invoke-virtual {p0, v0}, Lspacemadness/com/lunarconsole/ui/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void
.end method

.method private notifyStateChanged()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lspacemadness/com/lunarconsole/ui/ToggleButton;->stateChangeListener:Lspacemadness/com/lunarconsole/ui/ToggleButton$OnStateChangeListener;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lspacemadness/com/lunarconsole/ui/ToggleButton;->stateChangeListener:Lspacemadness/com/lunarconsole/ui/ToggleButton$OnStateChangeListener;

    invoke-interface {v0, p0}, Lspacemadness/com/lunarconsole/ui/ToggleButton$OnStateChangeListener;->onStateChanged(Lspacemadness/com/lunarconsole/ui/ToggleButton;)V

    .line 82
    :cond_0
    return-void
.end method


# virtual methods
.method public getOnStateChangeListener()Lspacemadness/com/lunarconsole/ui/ToggleButton$OnStateChangeListener;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lspacemadness/com/lunarconsole/ui/ToggleButton;->stateChangeListener:Lspacemadness/com/lunarconsole/ui/ToggleButton$OnStateChangeListener;

    return-object v0
.end method

.method public isOn()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lspacemadness/com/lunarconsole/ui/ToggleButton;->on:Z

    return v0
.end method

.method public setOn(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 94
    iget-boolean v0, p0, Lspacemadness/com/lunarconsole/ui/ToggleButton;->on:Z

    if-eq v0, p1, :cond_0

    .line 96
    iput-boolean p1, p0, Lspacemadness/com/lunarconsole/ui/ToggleButton;->on:Z

    .line 97
    invoke-direct {p0}, Lspacemadness/com/lunarconsole/ui/ToggleButton;->notifyStateChanged()V

    .line 99
    :cond_0
    return-void
.end method

.method public setOnStateChangeListener(Lspacemadness/com/lunarconsole/ui/ToggleButton$OnStateChangeListener;)V
    .locals 0
    .param p1, "onStateChangeListener"    # Lspacemadness/com/lunarconsole/ui/ToggleButton$OnStateChangeListener;

    .prologue
    .line 108
    iput-object p1, p0, Lspacemadness/com/lunarconsole/ui/ToggleButton;->stateChangeListener:Lspacemadness/com/lunarconsole/ui/ToggleButton$OnStateChangeListener;

    .line 109
    return-void
.end method
