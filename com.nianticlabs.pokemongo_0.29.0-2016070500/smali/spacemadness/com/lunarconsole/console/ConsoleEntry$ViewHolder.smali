.class public Lspacemadness/com/lunarconsole/console/ConsoleEntry$ViewHolder;
.super Lspacemadness/com/lunarconsole/console/ConsoleAdapter$ViewHolder;
.source "ConsoleEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lspacemadness/com/lunarconsole/console/ConsoleEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lspacemadness/com/lunarconsole/console/ConsoleAdapter$ViewHolder",
        "<",
        "Lspacemadness/com/lunarconsole/console/ConsoleEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final iconView:Landroid/widget/ImageView;

.field private final layout:Landroid/view/View;

.field private final messageView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lspacemadness/com/lunarconsole/console/ConsoleAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 104
    sget v0, Lspacemadness/com/lunarconsole/R$id;->lunar_console_log_entry_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntry$ViewHolder;->layout:Landroid/view/View;

    .line 105
    sget v0, Lspacemadness/com/lunarconsole/R$id;->lunar_console_log_entry_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntry$ViewHolder;->iconView:Landroid/widget/ImageView;

    .line 106
    sget v0, Lspacemadness/com/lunarconsole/R$id;->lunar_console_log_entry_message:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntry$ViewHolder;->messageView:Landroid/widget/TextView;

    .line 107
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Lspacemadness/com/lunarconsole/console/ConsoleEntry;)V
    .locals 3
    .param p1, "entry"    # Lspacemadness/com/lunarconsole/console/ConsoleEntry;

    .prologue
    .line 112
    invoke-virtual {p0}, Lspacemadness/com/lunarconsole/console/ConsoleEntry$ViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 113
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntry$ViewHolder;->layout:Landroid/view/View;

    invoke-virtual {p1, v0}, Lspacemadness/com/lunarconsole/console/ConsoleEntry;->getBackgroundColor(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 114
    iget-object v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntry$ViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lspacemadness/com/lunarconsole/console/ConsoleEntry;->getIconDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    iget-object v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntry$ViewHolder;->messageView:Landroid/widget/TextView;

    iget-object v2, p1, Lspacemadness/com/lunarconsole/console/ConsoleEntry;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    return-void
.end method
