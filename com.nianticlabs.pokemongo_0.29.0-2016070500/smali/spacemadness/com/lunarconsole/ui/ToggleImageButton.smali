.class public Lspacemadness/com/lunarconsole/ui/ToggleImageButton;
.super Landroid/widget/ImageButton;
.source "ToggleImageButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lspacemadness/com/lunarconsole/ui/ToggleImageButton$OnStateChangeListener;
    }
.end annotation


# instance fields
.field private offDrawable:Landroid/graphics/drawable/Drawable;

.field private on:Z

.field private onDrawable:Landroid/graphics/drawable/Drawable;

.field private stateChangeListener:Lspacemadness/com/lunarconsole/ui/ToggleImageButton$OnStateChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-direct {p0}, Lspacemadness/com/lunarconsole/ui/ToggleImageButton;->init()V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    invoke-direct {p0}, Lspacemadness/com/lunarconsole/ui/ToggleImageButton;->init()V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    invoke-direct {p0}, Lspacemadness/com/lunarconsole/ui/ToggleImageButton;->init()V

    .line 50
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
    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 56
    invoke-direct {p0}, Lspacemadness/com/lunarconsole/ui/ToggleImageButton;->init()V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lspacemadness/com/lunarconsole/ui/ToggleImageButton;)Z
    .locals 1
    .param p0, "x0"    # Lspacemadness/com/lunarconsole/ui/ToggleImageButton;

    .prologue
    .line 32
    iget-boolean v0, p0, Lspacemadness/com/lunarconsole/ui/ToggleImageButton;->on:Z

    return v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lspacemadness/com/lunarconsole/ui/ToggleImageButton$1;

    invoke-direct {v0, p0}, Lspacemadness/com/lunarconsole/ui/ToggleImageButton$1;-><init>(Lspacemadness/com/lunarconsole/ui/ToggleImageButton;)V

    invoke-virtual {p0, v0}, Lspacemadness/com/lunarconsole/ui/ToggleImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    return-void
.end method

.method private notifyStateChanged()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lspacemadness/com/lunarconsole/ui/ToggleImageButton;->stateChangeListener:Lspacemadness/com/lunarconsole/ui/ToggleImageButton$OnStateChangeListener;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lspacemadness/com/lunarconsole/ui/ToggleImageButton;->stateChangeListener:Lspacemadness/com/lunarconsole/ui/ToggleImageButton$OnStateChangeListener;

    invoke-interface {v0, p0}, Lspacemadness/com/lunarconsole/ui/ToggleImageButton$OnStateChangeListener;->onStateChanged(Lspacemadness/com/lunarconsole/ui/ToggleImageButton;)V

    .line 86
    :cond_0
    return-void
.end method


# virtual methods
.method public getOffDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lspacemadness/com/lunarconsole/ui/ToggleImageButton;->offDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOnDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lspacemadness/com/lunarconsole/ui/ToggleImageButton;->onDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOnStateChangeListener()Lspacemadness/com/lunarconsole/ui/ToggleImageButton$OnStateChangeListener;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lspacemadness/com/lunarconsole/ui/ToggleImageButton;->stateChangeListener:Lspacemadness/com/lunarconsole/ui/ToggleImageButton$OnStateChangeListener;

    return-object v0
.end method

.method public isOn()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lspacemadness/com/lunarconsole/ui/ToggleImageButton;->on:Z

    return v0
.end method

.method public setOffDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "offDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 141
    iput-object p1, p0, Lspacemadness/com/lunarconsole/ui/ToggleImageButton;->offDrawable:Landroid/graphics/drawable/Drawable;

    .line 142
    return-void
.end method

.method public setOn(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    .line 98
    iget-boolean v0, p0, Lspacemadness/com/lunarconsole/ui/ToggleImageButton;->on:Z

    .line 100
    .local v0, "oldFlag":Z
    iput-boolean p1, p0, Lspacemadness/com/lunarconsole/ui/ToggleImageButton;->on:Z

    .line 102
    iget-boolean v2, p0, Lspacemadness/com/lunarconsole/ui/ToggleImageButton;->on:Z

    if-eqz v2, :cond_2

    iget-object v1, p0, Lspacemadness/com/lunarconsole/ui/ToggleImageButton;->onDrawable:Landroid/graphics/drawable/Drawable;

    .line 103
    .local v1, "stateDrawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v1, :cond_0

    .line 105
    invoke-virtual {p0, v1}, Lspacemadness/com/lunarconsole/ui/ToggleImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    :cond_0
    if-eq v0, p1, :cond_1

    .line 110
    invoke-direct {p0}, Lspacemadness/com/lunarconsole/ui/ToggleImageButton;->notifyStateChanged()V

    .line 112
    :cond_1
    return-void

    .line 102
    .end local v1    # "stateDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v1, p0, Lspacemadness/com/lunarconsole/ui/ToggleImageButton;->offDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setOnDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "onDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 131
    iput-object p1, p0, Lspacemadness/com/lunarconsole/ui/ToggleImageButton;->onDrawable:Landroid/graphics/drawable/Drawable;

    .line 132
    return-void
.end method

.method public setOnStateChangeListener(Lspacemadness/com/lunarconsole/ui/ToggleImageButton$OnStateChangeListener;)V
    .locals 0
    .param p1, "onStateChangeListener"    # Lspacemadness/com/lunarconsole/ui/ToggleImageButton$OnStateChangeListener;

    .prologue
    .line 121
    iput-object p1, p0, Lspacemadness/com/lunarconsole/ui/ToggleImageButton;->stateChangeListener:Lspacemadness/com/lunarconsole/ui/ToggleImageButton$OnStateChangeListener;

    .line 122
    return-void
.end method
