.class public Lspacemadness/com/lunarconsole/console/ConsoleView;
.super Landroid/widget/LinearLayout;
.source "ConsoleView.java"

# interfaces
.implements Lspacemadness/com/lunarconsole/console/LunarConsoleListener;
.implements Lspacemadness/com/lunarconsole/core/Destroyable;
.implements Lspacemadness/com/lunarconsole/ui/ToggleButton$OnStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lspacemadness/com/lunarconsole/console/ConsoleView$Listener;
    }
.end annotation


# instance fields
.field private final console:Lspacemadness/com/lunarconsole/console/Console;

.field private final errorButton:Lspacemadness/com/lunarconsole/ui/LogTypeButton;

.field private final listView:Landroid/widget/ListView;

.field private listener:Lspacemadness/com/lunarconsole/console/ConsoleView$Listener;

.field private final logButton:Lspacemadness/com/lunarconsole/ui/LogTypeButton;

.field private final overflowText:Landroid/widget/TextView;

.field private final recyclerViewAdapter:Lspacemadness/com/lunarconsole/console/ConsoleAdapter;

.field private final rootView:Landroid/view/View;

.field private scrollLockButton:Lspacemadness/com/lunarconsole/ui/ToggleImageButton;

.field private scrollLocked:Z

.field private softKeyboardVisible:Z

.field private final warningButton:Lspacemadness/com/lunarconsole/ui/LogTypeButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lspacemadness/com/lunarconsole/console/Console;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "console"    # Lspacemadness/com/lunarconsole/console/Console;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 88
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 90
    if-nez p2, :cond_0

    .line 92
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Console is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 95
    :cond_0
    iput-object p2, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->console:Lspacemadness/com/lunarconsole/console/Console;

    .line 96
    iget-object v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->console:Lspacemadness/com/lunarconsole/console/Console;

    invoke-virtual {v1, p0}, Lspacemadness/com/lunarconsole/console/Console;->setConsoleListener(Lspacemadness/com/lunarconsole/console/LunarConsoleListener;)V

    .line 98
    sget-boolean v1, Lspacemadness/com/lunarconsole/console/ConsoleViewState;->scrollLocked:Z

    iput-boolean v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->scrollLocked:Z

    .line 101
    new-instance v1, Lspacemadness/com/lunarconsole/console/ConsoleView$1;

    invoke-direct {v1, p0}, Lspacemadness/com/lunarconsole/console/ConsoleView$1;-><init>(Lspacemadness/com/lunarconsole/console/ConsoleView;)V

    invoke-virtual {p0, v1}, Lspacemadness/com/lunarconsole/console/ConsoleView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 111
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lspacemadness/com/lunarconsole/R$layout;->lunar_layout_console:I

    invoke-virtual {v1, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->rootView:Landroid/view/View;

    .line 112
    iget-object v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->rootView:Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lspacemadness/com/lunarconsole/console/ConsoleView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    new-instance v1, Lspacemadness/com/lunarconsole/console/ConsoleAdapter;

    invoke-direct {v1, p2}, Lspacemadness/com/lunarconsole/console/ConsoleAdapter;-><init>(Lspacemadness/com/lunarconsole/console/ConsoleAdapter$DataSource;)V

    iput-object v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->recyclerViewAdapter:Lspacemadness/com/lunarconsole/console/ConsoleAdapter;

    .line 118
    sget v1, Lspacemadness/com/lunarconsole/R$id;->lunar_console_recycler_view_container:I

    invoke-direct {p0, v1}, Lspacemadness/com/lunarconsole/console/ConsoleView;->findExistingViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 121
    .local v0, "recyclerViewContainer":Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/ListView;

    invoke-direct {v1, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->listView:Landroid/widget/ListView;

    .line 122
    iget-object v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->listView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 123
    iget-object v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 124
    iget-object v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->recyclerViewAdapter:Lspacemadness/com/lunarconsole/console/ConsoleAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 125
    iget-object v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->listView:Landroid/widget/ListView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 126
    iget-object v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setScrollingCacheEnabled(Z)V

    .line 127
    iget-object v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->listView:Landroid/widget/ListView;

    new-instance v2, Lspacemadness/com/lunarconsole/console/ConsoleView$2;

    invoke-direct {v2, p0, p2}, Lspacemadness/com/lunarconsole/console/ConsoleView$2;-><init>(Lspacemadness/com/lunarconsole/console/ConsoleView;Lspacemadness/com/lunarconsole/console/Console;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 192
    iget-object v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->listView:Landroid/widget/ListView;

    new-instance v2, Lspacemadness/com/lunarconsole/console/ConsoleView$3;

    invoke-direct {v2, p0}, Lspacemadness/com/lunarconsole/console/ConsoleView$3;-><init>(Lspacemadness/com/lunarconsole/console/ConsoleView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 206
    iget-object v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->listView:Landroid/widget/ListView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    invoke-direct {p0}, Lspacemadness/com/lunarconsole/console/ConsoleView;->setupFilterTextEdit()Landroid/widget/EditText;

    .line 210
    sget v1, Lspacemadness/com/lunarconsole/R$id;->lunar_console_log_button:I

    invoke-direct {p0, v1}, Lspacemadness/com/lunarconsole/console/ConsoleView;->findExistingViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lspacemadness/com/lunarconsole/ui/LogTypeButton;

    iput-object v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->logButton:Lspacemadness/com/lunarconsole/ui/LogTypeButton;

    .line 211
    sget v1, Lspacemadness/com/lunarconsole/R$id;->lunar_console_warning_button:I

    invoke-direct {p0, v1}, Lspacemadness/com/lunarconsole/console/ConsoleView;->findExistingViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lspacemadness/com/lunarconsole/ui/LogTypeButton;

    iput-object v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->warningButton:Lspacemadness/com/lunarconsole/ui/LogTypeButton;

    .line 212
    sget v1, Lspacemadness/com/lunarconsole/R$id;->lunar_console_error_button:I

    invoke-direct {p0, v1}, Lspacemadness/com/lunarconsole/console/ConsoleView;->findExistingViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lspacemadness/com/lunarconsole/ui/LogTypeButton;

    iput-object v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->errorButton:Lspacemadness/com/lunarconsole/ui/LogTypeButton;

    .line 213
    invoke-direct {p0}, Lspacemadness/com/lunarconsole/console/ConsoleView;->setupLogTypeButtons()V

    .line 215
    invoke-direct {p0}, Lspacemadness/com/lunarconsole/console/ConsoleView;->setupOperationsButtons()V

    .line 218
    invoke-direct {p0}, Lspacemadness/com/lunarconsole/console/ConsoleView;->setupFakeStatusBar()V

    .line 221
    sget v1, Lspacemadness/com/lunarconsole/R$id;->lunar_console_text_overflow:I

    invoke-direct {p0, v1}, Lspacemadness/com/lunarconsole/console/ConsoleView;->findExistingViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->overflowText:Landroid/widget/TextView;

    .line 223
    invoke-direct {p0}, Lspacemadness/com/lunarconsole/console/ConsoleView;->reloadData()V

    .line 224
    return-void
.end method

.method static synthetic access$000(Lspacemadness/com/lunarconsole/console/ConsoleView;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lspacemadness/com/lunarconsole/console/ConsoleView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lspacemadness/com/lunarconsole/console/ConsoleView;->copyToClipboard(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lspacemadness/com/lunarconsole/console/ConsoleView;)Z
    .locals 1
    .param p0, "x0"    # Lspacemadness/com/lunarconsole/console/ConsoleView;

    .prologue
    .line 62
    iget-boolean v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->scrollLocked:Z

    return v0
.end method

.method static synthetic access$1000(Lspacemadness/com/lunarconsole/console/ConsoleView;)V
    .locals 0
    .param p0, "x0"    # Lspacemadness/com/lunarconsole/console/ConsoleView;

    .prologue
    .line 62
    invoke-direct {p0}, Lspacemadness/com/lunarconsole/console/ConsoleView;->notifyClose()V

    return-void
.end method

.method static synthetic access$1100(Lspacemadness/com/lunarconsole/console/ConsoleView;)Lspacemadness/com/lunarconsole/console/Console;
    .locals 1
    .param p0, "x0"    # Lspacemadness/com/lunarconsole/console/ConsoleView;

    .prologue
    .line 62
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->console:Lspacemadness/com/lunarconsole/console/Console;

    return-object v0
.end method

.method static synthetic access$1200(Lspacemadness/com/lunarconsole/console/ConsoleView;Lspacemadness/com/lunarconsole/console/Console;)V
    .locals 0
    .param p0, "x0"    # Lspacemadness/com/lunarconsole/console/ConsoleView;
    .param p1, "x1"    # Lspacemadness/com/lunarconsole/console/Console;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lspacemadness/com/lunarconsole/console/ConsoleView;->scrollToTop(Lspacemadness/com/lunarconsole/console/Console;)V

    return-void
.end method

.method static synthetic access$200(Lspacemadness/com/lunarconsole/console/ConsoleView;)Lspacemadness/com/lunarconsole/ui/ToggleImageButton;
    .locals 1
    .param p0, "x0"    # Lspacemadness/com/lunarconsole/console/ConsoleView;

    .prologue
    .line 62
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->scrollLockButton:Lspacemadness/com/lunarconsole/ui/ToggleImageButton;

    return-object v0
.end method

.method static synthetic access$300(Lspacemadness/com/lunarconsole/console/ConsoleView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lspacemadness/com/lunarconsole/console/ConsoleView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lspacemadness/com/lunarconsole/console/ConsoleView;->filterByText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$402(Lspacemadness/com/lunarconsole/console/ConsoleView;Z)Z
    .locals 0
    .param p0, "x0"    # Lspacemadness/com/lunarconsole/console/ConsoleView;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->softKeyboardVisible:Z

    return p1
.end method

.method static synthetic access$500(Lspacemadness/com/lunarconsole/console/ConsoleView;)V
    .locals 0
    .param p0, "x0"    # Lspacemadness/com/lunarconsole/console/ConsoleView;

    .prologue
    .line 62
    invoke-direct {p0}, Lspacemadness/com/lunarconsole/console/ConsoleView;->hideSoftKeyboard()V

    return-void
.end method

.method static synthetic access$600(Lspacemadness/com/lunarconsole/console/ConsoleView;)V
    .locals 0
    .param p0, "x0"    # Lspacemadness/com/lunarconsole/console/ConsoleView;

    .prologue
    .line 62
    invoke-direct {p0}, Lspacemadness/com/lunarconsole/console/ConsoleView;->clearConsole()V

    return-void
.end method

.method static synthetic access$700(Lspacemadness/com/lunarconsole/console/ConsoleView;)V
    .locals 0
    .param p0, "x0"    # Lspacemadness/com/lunarconsole/console/ConsoleView;

    .prologue
    .line 62
    invoke-direct {p0}, Lspacemadness/com/lunarconsole/console/ConsoleView;->toggleScrollLock()V

    return-void
.end method

.method static synthetic access$800(Lspacemadness/com/lunarconsole/console/ConsoleView;)Z
    .locals 1
    .param p0, "x0"    # Lspacemadness/com/lunarconsole/console/ConsoleView;

    .prologue
    .line 62
    invoke-direct {p0}, Lspacemadness/com/lunarconsole/console/ConsoleView;->copyConsoleOutputToClipboard()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lspacemadness/com/lunarconsole/console/ConsoleView;)Z
    .locals 1
    .param p0, "x0"    # Lspacemadness/com/lunarconsole/console/ConsoleView;

    .prologue
    .line 62
    invoke-direct {p0}, Lspacemadness/com/lunarconsole/console/ConsoleView;->sendConsoleOutputByEmail()Z

    move-result v0

    return v0
.end method

.method private clearConsole()V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->console:Lspacemadness/com/lunarconsole/console/Console;

    invoke-virtual {v0}, Lspacemadness/com/lunarconsole/console/Console;->clear()V

    .line 319
    return-void
.end method

.method private copyConsoleOutputToClipboard()Z
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->console:Lspacemadness/com/lunarconsole/console/Console;

    invoke-virtual {v0}, Lspacemadness/com/lunarconsole/console/Console;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lspacemadness/com/lunarconsole/console/ConsoleView;->copyToClipboard(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private copyToClipboard(Ljava/lang/String;)Z
    .locals 5
    .param p1, "outputText"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 623
    :try_start_0
    invoke-virtual {p0}, Lspacemadness/com/lunarconsole/console/ConsoleView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "clipboard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 624
    .local v0, "cm":Landroid/text/ClipboardManager;
    invoke-virtual {v0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 626
    invoke-virtual {p0}, Lspacemadness/com/lunarconsole/console/ConsoleView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "Copied to clipboard"

    invoke-static {v3, v4}, Lspacemadness/com/lunarconsole/utils/UIUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    const/4 v2, 0x1

    .line 635
    .end local v0    # "cm":Landroid/text/ClipboardManager;
    :goto_0
    return v2

    .line 630
    :catch_0
    move-exception v1

    .line 632
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Error to copy text to clipboard"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lspacemadness/com/lunarconsole/debug/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private filterByText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 240
    iget-object v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->console:Lspacemadness/com/lunarconsole/console/Console;

    invoke-virtual {v1}, Lspacemadness/com/lunarconsole/console/Console;->entries()Lspacemadness/com/lunarconsole/console/ConsoleEntryList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->setFilterByText(Ljava/lang/String;)Z

    move-result v0

    .line 241
    .local v0, "shouldReload":Z
    if-eqz v0, :cond_0

    .line 243
    invoke-direct {p0}, Lspacemadness/com/lunarconsole/console/ConsoleView;->reloadData()V

    .line 245
    :cond_0
    return-void
.end method

.method private findExistingViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .prologue
    .line 656
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->rootView:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lspacemadness/com/lunarconsole/console/ConsoleView;->findExistingViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private findExistingViewById(Landroid/view/View;I)Landroid/view/View;
    .locals 4
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .prologue
    .line 661
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 662
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 664
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View with id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 667
    :cond_0
    return-object v0
.end method

.method private hideSoftKeyboard()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 291
    iput-boolean v3, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->softKeyboardVisible:Z

    .line 292
    invoke-virtual {p0}, Lspacemadness/com/lunarconsole/console/ConsoleView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 294
    .local v0, "manager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lspacemadness/com/lunarconsole/console/ConsoleView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 295
    return-void
.end method

.method private notifyClose()V
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x0

    iput-boolean v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->softKeyboardVisible:Z

    .line 301
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->listener:Lspacemadness/com/lunarconsole/console/ConsoleView$Listener;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->listener:Lspacemadness/com/lunarconsole/console/ConsoleView$Listener;

    invoke-interface {v0, p0}, Lspacemadness/com/lunarconsole/console/ConsoleView$Listener;->onClose(Lspacemadness/com/lunarconsole/console/ConsoleView;)V

    .line 305
    :cond_0
    return-void
.end method

.method private reloadData()V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->recyclerViewAdapter:Lspacemadness/com/lunarconsole/console/ConsoleAdapter;

    invoke-virtual {v0}, Lspacemadness/com/lunarconsole/console/ConsoleAdapter;->notifyDataSetChanged()V

    .line 313
    invoke-direct {p0}, Lspacemadness/com/lunarconsole/console/ConsoleView;->updateOverflowText()V

    .line 314
    return-void
.end method

.method private scrollToBottom(Lspacemadness/com/lunarconsole/console/Console;)V
    .locals 3
    .param p1, "console"    # Lspacemadness/com/lunarconsole/console/Console;

    .prologue
    .line 370
    iget-boolean v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->scrollLocked:Z

    if-eqz v1, :cond_0

    .line 372
    invoke-virtual {p1}, Lspacemadness/com/lunarconsole/console/Console;->getEntryCount()I

    move-result v0

    .line 373
    .local v0, "entryCount":I
    if-lez v0, :cond_0

    .line 375
    iget-object v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->listView:Landroid/widget/ListView;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 378
    .end local v0    # "entryCount":I
    :cond_0
    return-void
.end method

.method private scrollToTop(Lspacemadness/com/lunarconsole/console/Console;)V
    .locals 3
    .param p1, "console"    # Lspacemadness/com/lunarconsole/console/Console;

    .prologue
    .line 382
    invoke-virtual {p1}, Lspacemadness/com/lunarconsole/console/Console;->getEntryCount()I

    move-result v0

    .line 383
    .local v0, "entryCount":I
    if-lez v0, :cond_0

    .line 385
    iget-object v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->listView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 387
    :cond_0
    return-void
.end method

.method private sendConsoleOutputByEmail()Z
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 330
    :try_start_0
    invoke-virtual {p0}, Lspacemadness/com/lunarconsole/console/ConsoleView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 331
    .local v3, "packageName":Ljava/lang/String;
    const-string v7, "\'%s\' console log"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    invoke-static {v7, v8}, Lspacemadness/com/lunarconsole/utils/StringUtils;->TryFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 333
    .local v4, "subject":Ljava/lang/String;
    iget-object v7, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->console:Lspacemadness/com/lunarconsole/console/Console;

    invoke-virtual {v7}, Lspacemadness/com/lunarconsole/console/Console;->getText()Ljava/lang/String;

    move-result-object v2

    .line 335
    .local v2, "outputText":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.intent.action.SENDTO"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 336
    .local v1, "intent":Landroid/content/Intent;
    const-string v7, "mailto:"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 337
    const-string v7, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    const-string v7, "android.intent.extra.TEXT"

    invoke-virtual {v1, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    invoke-virtual {p0}, Lspacemadness/com/lunarconsole/console/ConsoleView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 342
    invoke-virtual {p0}, Lspacemadness/com/lunarconsole/console/ConsoleView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 354
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "outputText":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "subject":Ljava/lang/String;
    :goto_0
    return v5

    .line 346
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "outputText":Ljava/lang/String;
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v4    # "subject":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lspacemadness/com/lunarconsole/console/ConsoleView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v7, "Can\'t send email"

    invoke-static {v5, v7}, Lspacemadness/com/lunarconsole/utils/UIUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v6

    .line 347
    goto :goto_0

    .line 349
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "outputText":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "subject":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 351
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "Error while trying to send console output by email"

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v0, v5, v7}, Lspacemadness/com/lunarconsole/debug/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move v5, v6

    .line 354
    goto :goto_0
.end method

.method private setFilterByLogTypeMask(IZ)V
    .locals 2
    .param p1, "logTypeMask"    # I
    .param p2, "disabled"    # Z

    .prologue
    .line 249
    iget-object v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->console:Lspacemadness/com/lunarconsole/console/Console;

    invoke-virtual {v1}, Lspacemadness/com/lunarconsole/console/Console;->entries()Lspacemadness/com/lunarconsole/console/ConsoleEntryList;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->setFilterByLogTypeMask(IZ)Z

    move-result v0

    .line 250
    .local v0, "shouldReload":Z
    if-eqz v0, :cond_0

    .line 252
    invoke-direct {p0}, Lspacemadness/com/lunarconsole/console/ConsoleView;->reloadData()V

    .line 254
    :cond_0
    return-void
.end method

.method private setOnClickListener(ILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 672
    invoke-direct {p0, p1}, Lspacemadness/com/lunarconsole/console/ConsoleView;->findExistingViewById(I)Landroid/view/View;

    move-result-object v0

    .line 673
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 674
    return-void
.end method

.method private setupFakeStatusBar()V
    .locals 6

    .prologue
    .line 517
    invoke-virtual {p0}, Lspacemadness/com/lunarconsole/console/ConsoleView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lspacemadness/com/lunarconsole/R$string;->lunar_console_title_fake_status_bar:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lspacemadness/com/lunarconsole/console/ConsolePlugin;->getVersion()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 520
    .local v1, "title":Ljava/lang/String;
    sget v2, Lspacemadness/com/lunarconsole/R$id;->lunar_console_fake_status_bar:I

    invoke-direct {p0, v2}, Lspacemadness/com/lunarconsole/console/ConsoleView;->findExistingViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 521
    .local v0, "statusBar":Landroid/widget/TextView;
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    new-instance v2, Lspacemadness/com/lunarconsole/console/ConsoleView$12;

    invoke-direct {v2, p0}, Lspacemadness/com/lunarconsole/console/ConsoleView$12;-><init>(Lspacemadness/com/lunarconsole/console/ConsoleView;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 531
    return-void
.end method

.method private setupFilterTextEdit()Landroid/widget/EditText;
    .locals 3

    .prologue
    .line 395
    sget v2, Lspacemadness/com/lunarconsole/R$id;->lunar_console_text_edit_filter:I

    invoke-direct {p0, v2}, Lspacemadness/com/lunarconsole/console/ConsoleView;->findExistingViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 396
    .local v0, "editText":Landroid/widget/EditText;
    iget-object v2, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->console:Lspacemadness/com/lunarconsole/console/Console;

    invoke-virtual {v2}, Lspacemadness/com/lunarconsole/console/Console;->entries()Lspacemadness/com/lunarconsole/console/ConsoleEntryList;

    move-result-object v2

    invoke-virtual {v2}, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->getFilterText()Ljava/lang/String;

    move-result-object v1

    .line 397
    .local v1, "filterText":Ljava/lang/String;
    invoke-static {v1}, Lspacemadness/com/lunarconsole/utils/StringUtils;->IsNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 399
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 400
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 403
    :cond_0
    new-instance v2, Lspacemadness/com/lunarconsole/console/ConsoleView$4;

    invoke-direct {v2, p0}, Lspacemadness/com/lunarconsole/console/ConsoleView$4;-><init>(Lspacemadness/com/lunarconsole/console/ConsoleView;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 421
    new-instance v2, Lspacemadness/com/lunarconsole/console/ConsoleView$5;

    invoke-direct {v2, p0}, Lspacemadness/com/lunarconsole/console/ConsoleView$5;-><init>(Lspacemadness/com/lunarconsole/console/ConsoleView;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 429
    new-instance v2, Lspacemadness/com/lunarconsole/console/ConsoleView$6;

    invoke-direct {v2, p0}, Lspacemadness/com/lunarconsole/console/ConsoleView$6;-><init>(Lspacemadness/com/lunarconsole/console/ConsoleView;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 443
    return-object v0
.end method

.method private setupLogTypeButton(Lspacemadness/com/lunarconsole/ui/LogTypeButton;I)V
    .locals 1
    .param p1, "button"    # Lspacemadness/com/lunarconsole/ui/LogTypeButton;
    .param p2, "logType"    # I

    .prologue
    .line 457
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->console:Lspacemadness/com/lunarconsole/console/Console;

    invoke-virtual {v0}, Lspacemadness/com/lunarconsole/console/Console;->entries()Lspacemadness/com/lunarconsole/console/ConsoleEntryList;

    move-result-object v0

    invoke-virtual {v0, p2}, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->isFilterLogTypeEnabled(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Lspacemadness/com/lunarconsole/ui/LogTypeButton;->setOn(Z)V

    .line 458
    invoke-virtual {p1, p0}, Lspacemadness/com/lunarconsole/ui/LogTypeButton;->setOnStateChangeListener(Lspacemadness/com/lunarconsole/ui/ToggleButton$OnStateChangeListener;)V

    .line 459
    return-void
.end method

.method private setupLogTypeButtons()V
    .locals 2

    .prologue
    .line 448
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->logButton:Lspacemadness/com/lunarconsole/ui/LogTypeButton;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lspacemadness/com/lunarconsole/console/ConsoleView;->setupLogTypeButton(Lspacemadness/com/lunarconsole/ui/LogTypeButton;I)V

    .line 449
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->warningButton:Lspacemadness/com/lunarconsole/ui/LogTypeButton;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lspacemadness/com/lunarconsole/console/ConsoleView;->setupLogTypeButton(Lspacemadness/com/lunarconsole/ui/LogTypeButton;I)V

    .line 450
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->errorButton:Lspacemadness/com/lunarconsole/ui/LogTypeButton;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lspacemadness/com/lunarconsole/console/ConsoleView;->setupLogTypeButton(Lspacemadness/com/lunarconsole/ui/LogTypeButton;I)V

    .line 452
    invoke-direct {p0}, Lspacemadness/com/lunarconsole/console/ConsoleView;->updateLogButtons()V

    .line 453
    return-void
.end method

.method private setupOperationsButtons()V
    .locals 3

    .prologue
    .line 463
    sget v1, Lspacemadness/com/lunarconsole/R$id;->lunar_console_button_clear:I

    new-instance v2, Lspacemadness/com/lunarconsole/console/ConsoleView$7;

    invoke-direct {v2, p0}, Lspacemadness/com/lunarconsole/console/ConsoleView$7;-><init>(Lspacemadness/com/lunarconsole/console/ConsoleView;)V

    invoke-direct {p0, v1, v2}, Lspacemadness/com/lunarconsole/console/ConsoleView;->setOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 472
    iget-object v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->rootView:Landroid/view/View;

    sget v2, Lspacemadness/com/lunarconsole/R$id;->lunar_console_button_lock:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lspacemadness/com/lunarconsole/ui/ToggleImageButton;

    iput-object v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->scrollLockButton:Lspacemadness/com/lunarconsole/ui/ToggleImageButton;

    .line 474
    invoke-virtual {p0}, Lspacemadness/com/lunarconsole/console/ConsoleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 475
    .local v0, "resources":Landroid/content/res/Resources;
    iget-object v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->scrollLockButton:Lspacemadness/com/lunarconsole/ui/ToggleImageButton;

    sget v2, Lspacemadness/com/lunarconsole/R$drawable;->lunar_console_icon_button_lock:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lspacemadness/com/lunarconsole/ui/ToggleImageButton;->setOnDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 476
    iget-object v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->scrollLockButton:Lspacemadness/com/lunarconsole/ui/ToggleImageButton;

    sget v2, Lspacemadness/com/lunarconsole/R$drawable;->lunar_console_icon_button_unlock:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lspacemadness/com/lunarconsole/ui/ToggleImageButton;->setOffDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 477
    iget-object v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->scrollLockButton:Lspacemadness/com/lunarconsole/ui/ToggleImageButton;

    iget-boolean v2, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->scrollLocked:Z

    invoke-virtual {v1, v2}, Lspacemadness/com/lunarconsole/ui/ToggleImageButton;->setOn(Z)V

    .line 478
    iget-object v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->scrollLockButton:Lspacemadness/com/lunarconsole/ui/ToggleImageButton;

    new-instance v2, Lspacemadness/com/lunarconsole/console/ConsoleView$8;

    invoke-direct {v2, p0}, Lspacemadness/com/lunarconsole/console/ConsoleView$8;-><init>(Lspacemadness/com/lunarconsole/console/ConsoleView;)V

    invoke-virtual {v1, v2}, Lspacemadness/com/lunarconsole/ui/ToggleImageButton;->setOnStateChangeListener(Lspacemadness/com/lunarconsole/ui/ToggleImageButton$OnStateChangeListener;)V

    .line 487
    sget v1, Lspacemadness/com/lunarconsole/R$id;->lunar_console_button_copy:I

    new-instance v2, Lspacemadness/com/lunarconsole/console/ConsoleView$9;

    invoke-direct {v2, p0}, Lspacemadness/com/lunarconsole/console/ConsoleView$9;-><init>(Lspacemadness/com/lunarconsole/console/ConsoleView;)V

    invoke-direct {p0, v1, v2}, Lspacemadness/com/lunarconsole/console/ConsoleView;->setOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 496
    sget v1, Lspacemadness/com/lunarconsole/R$id;->lunar_console_button_email:I

    new-instance v2, Lspacemadness/com/lunarconsole/console/ConsoleView$10;

    invoke-direct {v2, p0}, Lspacemadness/com/lunarconsole/console/ConsoleView$10;-><init>(Lspacemadness/com/lunarconsole/console/ConsoleView;)V

    invoke-direct {p0, v1, v2}, Lspacemadness/com/lunarconsole/console/ConsoleView;->setOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 505
    sget v1, Lspacemadness/com/lunarconsole/R$id;->lunar_console_button_close:I

    new-instance v2, Lspacemadness/com/lunarconsole/console/ConsoleView$11;

    invoke-direct {v2, p0}, Lspacemadness/com/lunarconsole/console/ConsoleView$11;-><init>(Lspacemadness/com/lunarconsole/console/ConsoleView;)V

    invoke-direct {p0, v1, v2}, Lspacemadness/com/lunarconsole/console/ConsoleView;->setOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 513
    return-void
.end method

.method private toggleScrollLock()V
    .locals 1

    .prologue
    .line 362
    iget-boolean v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->scrollLocked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->scrollLocked:Z

    .line 363
    iget-boolean v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->scrollLocked:Z

    sput-boolean v0, Lspacemadness/com/lunarconsole/console/ConsoleViewState;->scrollLocked:Z

    .line 365
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->console:Lspacemadness/com/lunarconsole/console/Console;

    invoke-direct {p0, v0}, Lspacemadness/com/lunarconsole/console/ConsoleView;->scrollToBottom(Lspacemadness/com/lunarconsole/console/Console;)V

    .line 366
    return-void

    .line 362
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateLogButtons()V
    .locals 3

    .prologue
    .line 535
    iget-object v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->console:Lspacemadness/com/lunarconsole/console/Console;

    invoke-virtual {v1}, Lspacemadness/com/lunarconsole/console/Console;->entries()Lspacemadness/com/lunarconsole/console/ConsoleEntryList;

    move-result-object v0

    .line 536
    .local v0, "entries":Lspacemadness/com/lunarconsole/console/ConsoleEntryList;
    iget-object v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->logButton:Lspacemadness/com/lunarconsole/ui/LogTypeButton;

    invoke-virtual {v0}, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->getLogCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lspacemadness/com/lunarconsole/ui/LogTypeButton;->setCount(I)V

    .line 537
    iget-object v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->warningButton:Lspacemadness/com/lunarconsole/ui/LogTypeButton;

    invoke-virtual {v0}, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->getWarningCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lspacemadness/com/lunarconsole/ui/LogTypeButton;->setCount(I)V

    .line 538
    iget-object v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->errorButton:Lspacemadness/com/lunarconsole/ui/LogTypeButton;

    invoke-virtual {v0}, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->getErrorCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lspacemadness/com/lunarconsole/ui/LogTypeButton;->setCount(I)V

    .line 539
    return-void
.end method

.method private updateOverflowText()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 577
    iget-object v2, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->console:Lspacemadness/com/lunarconsole/console/Console;

    invoke-virtual {v2}, Lspacemadness/com/lunarconsole/console/Console;->trimmedCount()I

    move-result v1

    .line 578
    .local v1, "trimmedCount":I
    if-lez v1, :cond_0

    .line 580
    iget-object v2, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->overflowText:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 581
    invoke-virtual {p0}, Lspacemadness/com/lunarconsole/console/ConsoleView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lspacemadness/com/lunarconsole/R$string;->lunar_console_overflow_warning_text:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 582
    .local v0, "text":Ljava/lang/String;
    iget-object v2, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->overflowText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 588
    .end local v0    # "text":Ljava/lang/String;
    :goto_0
    return-void

    .line 586
    :cond_0
    iget-object v2, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->overflowText:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 229
    sget-object v0, Lspacemadness/com/lunarconsole/debug/Tags;->CONSOLE:Lspacemadness/com/lunarconsole/debug/Tag;

    const-string v1, "Destroy console"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lspacemadness/com/lunarconsole/debug/Log;->d(Lspacemadness/com/lunarconsole/debug/Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->console:Lspacemadness/com/lunarconsole/console/Console;

    invoke-virtual {v0, v3}, Lspacemadness/com/lunarconsole/console/Console;->setConsoleListener(Lspacemadness/com/lunarconsole/console/LunarConsoleListener;)V

    .line 232
    invoke-virtual {p0, v3}, Lspacemadness/com/lunarconsole/console/ConsoleView;->setListener(Lspacemadness/com/lunarconsole/console/ConsoleView$Listener;)V

    .line 233
    return-void
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 270
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 272
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 274
    iget-boolean v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->softKeyboardVisible:Z

    if-eqz v1, :cond_1

    .line 276
    invoke-direct {p0}, Lspacemadness/com/lunarconsole/console/ConsoleView;->hideSoftKeyboard()V

    .line 286
    :cond_0
    :goto_0
    return v0

    .line 280
    :cond_1
    invoke-direct {p0}, Lspacemadness/com/lunarconsole/console/ConsoleView;->notifyClose()V

    goto :goto_0

    .line 286
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getListener()Lspacemadness/com/lunarconsole/console/ConsoleView$Listener;
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->listener:Lspacemadness/com/lunarconsole/console/ConsoleView$Listener;

    return-object v0
.end method

.method public onAddEntry(Lspacemadness/com/lunarconsole/console/Console;Lspacemadness/com/lunarconsole/console/ConsoleEntry;Z)V
    .locals 1
    .param p1, "console"    # Lspacemadness/com/lunarconsole/console/Console;
    .param p2, "entry"    # Lspacemadness/com/lunarconsole/console/ConsoleEntry;
    .param p3, "filtered"    # Z

    .prologue
    .line 547
    if-eqz p3, :cond_0

    .line 549
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->recyclerViewAdapter:Lspacemadness/com/lunarconsole/console/ConsoleAdapter;

    invoke-virtual {v0}, Lspacemadness/com/lunarconsole/console/ConsoleAdapter;->notifyDataSetChanged()V

    .line 550
    invoke-direct {p0, p1}, Lspacemadness/com/lunarconsole/console/ConsoleView;->scrollToBottom(Lspacemadness/com/lunarconsole/console/Console;)V

    .line 553
    :cond_0
    invoke-direct {p0}, Lspacemadness/com/lunarconsole/console/ConsoleView;->updateLogButtons()V

    .line 554
    return-void
.end method

.method public onClearEntries(Lspacemadness/com/lunarconsole/console/Console;)V
    .locals 0
    .param p1, "console"    # Lspacemadness/com/lunarconsole/console/Console;

    .prologue
    .line 568
    invoke-direct {p0}, Lspacemadness/com/lunarconsole/console/ConsoleView;->reloadData()V

    .line 569
    invoke-direct {p0}, Lspacemadness/com/lunarconsole/console/ConsoleView;->updateLogButtons()V

    .line 570
    return-void
.end method

.method public onRemoveEntries(Lspacemadness/com/lunarconsole/console/Console;II)V
    .locals 1
    .param p1, "console"    # Lspacemadness/com/lunarconsole/console/Console;
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 559
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->recyclerViewAdapter:Lspacemadness/com/lunarconsole/console/ConsoleAdapter;

    invoke-virtual {v0}, Lspacemadness/com/lunarconsole/console/ConsoleAdapter;->notifyDataSetChanged()V

    .line 560
    invoke-direct {p0, p1}, Lspacemadness/com/lunarconsole/console/ConsoleView;->scrollToBottom(Lspacemadness/com/lunarconsole/console/Console;)V

    .line 561
    invoke-direct {p0}, Lspacemadness/com/lunarconsole/console/ConsoleView;->updateLogButtons()V

    .line 562
    invoke-direct {p0}, Lspacemadness/com/lunarconsole/console/ConsoleView;->updateOverflowText()V

    .line 563
    return-void
.end method

.method public onStateChanged(Lspacemadness/com/lunarconsole/ui/ToggleButton;)V
    .locals 5
    .param p1, "button"    # Lspacemadness/com/lunarconsole/ui/ToggleButton;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 596
    const/4 v0, 0x0

    .line 597
    .local v0, "mask":I
    iget-object v3, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->logButton:Lspacemadness/com/lunarconsole/ui/LogTypeButton;

    if-ne p1, v3, :cond_1

    .line 599
    const/4 v3, 0x3

    invoke-static {v3}, Lspacemadness/com/lunarconsole/console/ConsoleLogType;->getMask(I)I

    move-result v3

    or-int/2addr v0, v3

    .line 612
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lspacemadness/com/lunarconsole/ui/ToggleButton;->isOn()Z

    move-result v3

    if-nez v3, :cond_3

    :goto_1
    invoke-direct {p0, v0, v1}, Lspacemadness/com/lunarconsole/console/ConsoleView;->setFilterByLogTypeMask(IZ)V

    .line 613
    return-void

    .line 601
    :cond_1
    iget-object v3, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->warningButton:Lspacemadness/com/lunarconsole/ui/LogTypeButton;

    if-ne p1, v3, :cond_2

    .line 603
    const/4 v3, 0x2

    invoke-static {v3}, Lspacemadness/com/lunarconsole/console/ConsoleLogType;->getMask(I)I

    move-result v3

    or-int/2addr v0, v3

    goto :goto_0

    .line 605
    :cond_2
    iget-object v3, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->errorButton:Lspacemadness/com/lunarconsole/ui/LogTypeButton;

    if-ne p1, v3, :cond_0

    .line 607
    const/4 v3, 0x4

    invoke-static {v3}, Lspacemadness/com/lunarconsole/console/ConsoleLogType;->getMask(I)I

    move-result v3

    invoke-static {v2}, Lspacemadness/com/lunarconsole/console/ConsoleLogType;->getMask(I)I

    move-result v4

    or-int/2addr v3, v4

    invoke-static {v1}, Lspacemadness/com/lunarconsole/console/ConsoleLogType;->getMask(I)I

    move-result v4

    or-int/2addr v3, v4

    or-int/2addr v0, v3

    goto :goto_0

    :cond_3
    move v1, v2

    .line 612
    goto :goto_1
.end method

.method public setListener(Lspacemadness/com/lunarconsole/console/ConsoleView$Listener;)V
    .locals 0
    .param p1, "listener"    # Lspacemadness/com/lunarconsole/console/ConsoleView$Listener;

    .prologue
    .line 643
    iput-object p1, p0, Lspacemadness/com/lunarconsole/console/ConsoleView;->listener:Lspacemadness/com/lunarconsole/console/ConsoleView$Listener;

    .line 644
    return-void
.end method
