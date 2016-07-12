.class public Lspacemadness/com/lunarconsole/console/WarningView;
.super Landroid/widget/FrameLayout;
.source "WarningView.java"

# interfaces
.implements Lspacemadness/com/lunarconsole/core/Destroyable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lspacemadness/com/lunarconsole/console/WarningView$Listener;
    }
.end annotation


# instance fields
.field private listener:Lspacemadness/com/lunarconsole/console/WarningView$Listener;

.field private messageText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-direct {p0, p1}, Lspacemadness/com/lunarconsole/console/WarningView;->init(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    invoke-direct {p0, p1}, Lspacemadness/com/lunarconsole/console/WarningView;->init(Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    invoke-direct {p0, p1}, Lspacemadness/com/lunarconsole/console/WarningView;->init(Landroid/content/Context;)V

    .line 64
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
    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 70
    invoke-direct {p0, p1}, Lspacemadness/com/lunarconsole/console/WarningView;->init(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lspacemadness/com/lunarconsole/console/WarningView;)V
    .locals 0
    .param p0, "x0"    # Lspacemadness/com/lunarconsole/console/WarningView;

    .prologue
    .line 42
    invoke-direct {p0}, Lspacemadness/com/lunarconsole/console/WarningView;->notifyDismiss()V

    return-void
.end method

.method static synthetic access$100(Lspacemadness/com/lunarconsole/console/WarningView;)V
    .locals 0
    .param p0, "x0"    # Lspacemadness/com/lunarconsole/console/WarningView;

    .prologue
    .line 42
    invoke-direct {p0}, Lspacemadness/com/lunarconsole/console/WarningView;->notifyDetails()V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lspacemadness/com/lunarconsole/R$layout;->lunar_layout_warning:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 77
    .local v1, "view":Landroid/view/View;
    invoke-direct {p0, v1}, Lspacemadness/com/lunarconsole/console/WarningView;->setupUI(Landroid/view/View;)V

    .line 79
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/16 v4, 0x51

    invoke-direct {v0, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 80
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0, v1, v0}, Lspacemadness/com/lunarconsole/console/WarningView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    return-void
.end method

.method private notifyDetails()V
    .locals 3

    .prologue
    .line 149
    iget-object v1, p0, Lspacemadness/com/lunarconsole/console/WarningView;->listener:Lspacemadness/com/lunarconsole/console/WarningView$Listener;

    if-eqz v1, :cond_0

    .line 153
    :try_start_0
    iget-object v1, p0, Lspacemadness/com/lunarconsole/console/WarningView;->listener:Lspacemadness/com/lunarconsole/console/WarningView$Listener;

    invoke-interface {v1, p0}, Lspacemadness/com/lunarconsole/console/WarningView$Listener;->onDetailsClick(Lspacemadness/com/lunarconsole/console/WarningView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Error while notifying listener"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lspacemadness/com/lunarconsole/debug/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private notifyDismiss()V
    .locals 3

    .prologue
    .line 134
    iget-object v1, p0, Lspacemadness/com/lunarconsole/console/WarningView;->listener:Lspacemadness/com/lunarconsole/console/WarningView$Listener;

    if-eqz v1, :cond_0

    .line 138
    :try_start_0
    iget-object v1, p0, Lspacemadness/com/lunarconsole/console/WarningView;->listener:Lspacemadness/com/lunarconsole/console/WarningView$Listener;

    invoke-interface {v1, p0}, Lspacemadness/com/lunarconsole/console/WarningView$Listener;->onDismissClick(Lspacemadness/com/lunarconsole/console/WarningView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Error while notifying listener"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lspacemadness/com/lunarconsole/debug/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private setOnClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "root"    # Landroid/view/View;
    .param p2, "id"    # I
    .param p3, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 116
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    return-void
.end method

.method private setupUI(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 85
    sget v0, Lspacemadness/com/lunarconsole/R$id;->lunar_console_text_warning_message:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lspacemadness/com/lunarconsole/console/WarningView;->messageText:Landroid/widget/TextView;

    .line 86
    new-instance v0, Lspacemadness/com/lunarconsole/console/WarningView$1;

    invoke-direct {v0, p0}, Lspacemadness/com/lunarconsole/console/WarningView$1;-><init>(Lspacemadness/com/lunarconsole/console/WarningView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 95
    sget v0, Lspacemadness/com/lunarconsole/R$id;->lunar_console_button_dismiss:I

    new-instance v1, Lspacemadness/com/lunarconsole/console/WarningView$2;

    invoke-direct {v1, p0}, Lspacemadness/com/lunarconsole/console/WarningView$2;-><init>(Lspacemadness/com/lunarconsole/console/WarningView;)V

    invoke-direct {p0, p1, v0, v1}, Lspacemadness/com/lunarconsole/console/WarningView;->setOnClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)V

    .line 104
    sget v0, Lspacemadness/com/lunarconsole/R$id;->lunar_console_button_details:I

    new-instance v1, Lspacemadness/com/lunarconsole/console/WarningView$3;

    invoke-direct {v1, p0}, Lspacemadness/com/lunarconsole/console/WarningView$3;-><init>(Lspacemadness/com/lunarconsole/console/WarningView;)V

    invoke-direct {p0, p1, v0, v1}, Lspacemadness/com/lunarconsole/console/WarningView;->setOnClickListener(Landroid/view/View;ILandroid/view/View$OnClickListener;)V

    .line 112
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    .line 125
    sget-object v0, Lspacemadness/com/lunarconsole/debug/Tags;->WARNING_VIEW:Lspacemadness/com/lunarconsole/debug/Tag;

    const-string v1, "Destroy warning"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lspacemadness/com/lunarconsole/debug/Log;->d(Lspacemadness/com/lunarconsole/debug/Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lspacemadness/com/lunarconsole/console/WarningView;->listener:Lspacemadness/com/lunarconsole/console/WarningView$Listener;

    .line 127
    return-void
.end method

.method public getListener()Lspacemadness/com/lunarconsole/console/WarningView$Listener;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/WarningView;->listener:Lspacemadness/com/lunarconsole/console/WarningView$Listener;

    return-object v0
.end method

.method public setListener(Lspacemadness/com/lunarconsole/console/WarningView$Listener;)V
    .locals 0
    .param p1, "listener"    # Lspacemadness/com/lunarconsole/console/WarningView$Listener;

    .prologue
    .line 177
    iput-object p1, p0, Lspacemadness/com/lunarconsole/console/WarningView;->listener:Lspacemadness/com/lunarconsole/console/WarningView$Listener;

    .line 178
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 167
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/WarningView;->messageText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    return-void
.end method
