.class Lspacemadness/com/lunarconsole/console/ConsoleView$2;
.super Ljava/lang/Object;
.source "ConsoleView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lspacemadness/com/lunarconsole/console/ConsoleView;-><init>(Landroid/content/Context;Lspacemadness/com/lunarconsole/console/Console;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lspacemadness/com/lunarconsole/console/ConsoleView;

.field final synthetic val$console:Lspacemadness/com/lunarconsole/console/Console;


# direct methods
.method constructor <init>(Lspacemadness/com/lunarconsole/console/ConsoleView;Lspacemadness/com/lunarconsole/console/Console;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lspacemadness/com/lunarconsole/console/ConsoleView$2;->this$0:Lspacemadness/com/lunarconsole/console/ConsoleView;

    iput-object p2, p0, Lspacemadness/com/lunarconsole/console/ConsoleView$2;->val$console:Lspacemadness/com/lunarconsole/console/Console;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 16
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lspacemadness/com/lunarconsole/console/ConsoleView$2;->this$0:Lspacemadness/com/lunarconsole/console/ConsoleView;

    invoke-virtual {v13}, Lspacemadness/com/lunarconsole/console/ConsoleView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 133
    .local v4, "ctx":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v13, v0, Lspacemadness/com/lunarconsole/console/ConsoleView$2;->val$console:Lspacemadness/com/lunarconsole/console/Console;

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Lspacemadness/com/lunarconsole/console/Console;->getEntry(I)Lspacemadness/com/lunarconsole/console/ConsoleEntry;

    move-result-object v6

    .line 136
    .local v6, "entry":Lspacemadness/com/lunarconsole/console/ConsoleEntry;
    const/high16 v13, -0x1000000

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->setBackgroundColor(I)V

    .line 137
    new-instance v13, Lspacemadness/com/lunarconsole/console/ConsoleView$2$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v13, v0, v1, v6, v4}, Lspacemadness/com/lunarconsole/console/ConsoleView$2$1;-><init>(Lspacemadness/com/lunarconsole/console/ConsoleView$2;Landroid/view/View;Lspacemadness/com/lunarconsole/console/ConsoleEntry;Landroid/content/Context;)V

    const-wide/16 v14, 0xc8

    invoke-static {v13, v14, v15}, Lspacemadness/com/lunarconsole/utils/ThreadUtils;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 154
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 156
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 157
    .local v8, "inflater":Landroid/view/LayoutInflater;
    sget v13, Lspacemadness/com/lunarconsole/R$layout;->lunar_layout_log_details_dialog:I

    const/4 v14, 0x0

    invoke-virtual {v8, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 158
    .local v3, "contentView":Landroid/view/View;
    sget v13, Lspacemadness/com/lunarconsole/R$id;->lunar_console_log_details_icon:I

    invoke-virtual {v3, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 159
    .local v7, "imageView":Landroid/widget/ImageView;
    sget v13, Lspacemadness/com/lunarconsole/R$id;->lunar_console_log_details_message:I

    invoke-virtual {v3, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 160
    .local v10, "messageView":Landroid/widget/TextView;
    sget v13, Lspacemadness/com/lunarconsole/R$id;->lunar_console_log_details_stacktrace:I

    invoke-virtual {v3, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 162
    .local v12, "stacktraceView":Landroid/widget/TextView;
    iget-object v9, v6, Lspacemadness/com/lunarconsole/console/ConsoleEntry;->message:Ljava/lang/String;

    .line 163
    .local v9, "message":Ljava/lang/String;
    invoke-virtual {v6}, Lspacemadness/com/lunarconsole/console/ConsoleEntry;->hasStackTrace()Z

    move-result v13

    if-eqz v13, :cond_0

    iget-object v13, v6, Lspacemadness/com/lunarconsole/console/ConsoleEntry;->stackTrace:Ljava/lang/String;

    invoke-static {v13}, Lspacemadness/com/lunarconsole/utils/StackTrace;->optimize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 167
    .local v11, "stackTrace":Ljava/lang/String;
    :goto_0
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    invoke-virtual {v6, v4}, Lspacemadness/com/lunarconsole/console/ConsoleEntry;->getIconDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 171
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 172
    sget v13, Lspacemadness/com/lunarconsole/R$string;->lunar_console_log_details_dialog_button_copy_to_clipboard:I

    new-instance v14, Lspacemadness/com/lunarconsole/console/ConsoleView$2$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v9, v6, v11}, Lspacemadness/com/lunarconsole/console/ConsoleView$2$2;-><init>(Lspacemadness/com/lunarconsole/console/ConsoleView$2;Ljava/lang/String;Lspacemadness/com/lunarconsole/console/ConsoleEntry;Ljava/lang/String;)V

    invoke-virtual {v2, v13, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 187
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 188
    .local v5, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 189
    return-void

    .line 163
    .end local v5    # "dialog":Landroid/app/AlertDialog;
    .end local v11    # "stackTrace":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lspacemadness/com/lunarconsole/console/ConsoleView$2;->this$0:Lspacemadness/com/lunarconsole/console/ConsoleView;

    invoke-virtual {v13}, Lspacemadness/com/lunarconsole/console/ConsoleView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lspacemadness/com/lunarconsole/R$string;->lunar_console_log_details_dialog_no_stacktrace_warning:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_0
.end method
