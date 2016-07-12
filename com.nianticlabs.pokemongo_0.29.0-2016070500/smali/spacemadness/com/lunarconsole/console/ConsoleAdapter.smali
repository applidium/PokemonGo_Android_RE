.class public Lspacemadness/com/lunarconsole/console/ConsoleAdapter;
.super Landroid/widget/BaseAdapter;
.source "ConsoleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lspacemadness/com/lunarconsole/console/ConsoleAdapter$ViewHolder;,
        Lspacemadness/com/lunarconsole/console/ConsoleAdapter$DataSource;
    }
.end annotation


# instance fields
.field private dataSource:Lspacemadness/com/lunarconsole/console/ConsoleAdapter$DataSource;


# direct methods
.method public constructor <init>(Lspacemadness/com/lunarconsole/console/ConsoleAdapter$DataSource;)V
    .locals 2
    .param p1, "dataSource"    # Lspacemadness/com/lunarconsole/console/ConsoleAdapter$DataSource;

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 39
    if-nez p1, :cond_0

    .line 41
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Data source is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    iput-object p1, p0, Lspacemadness/com/lunarconsole/console/ConsoleAdapter;->dataSource:Lspacemadness/com/lunarconsole/console/ConsoleAdapter$DataSource;

    .line 45
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleAdapter;->dataSource:Lspacemadness/com/lunarconsole/console/ConsoleAdapter$DataSource;

    invoke-interface {v0}, Lspacemadness/com/lunarconsole/console/ConsoleAdapter$DataSource;->getEntryCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 56
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleAdapter;->dataSource:Lspacemadness/com/lunarconsole/console/ConsoleAdapter$DataSource;

    invoke-interface {v0, p1}, Lspacemadness/com/lunarconsole/console/ConsoleAdapter$DataSource;->getEntry(I)Lspacemadness/com/lunarconsole/console/ConsoleEntry;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleAdapter;->dataSource:Lspacemadness/com/lunarconsole/console/ConsoleAdapter$DataSource;

    invoke-interface {v0, p1}, Lspacemadness/com/lunarconsole/console/ConsoleAdapter$DataSource;->getEntry(I)Lspacemadness/com/lunarconsole/console/ConsoleEntry;

    move-result-object v0

    iget-byte v0, v0, Lspacemadness/com/lunarconsole/console/ConsoleEntry;->type:B

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 69
    if-eqz p2, :cond_0

    .line 71
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lspacemadness/com/lunarconsole/console/ConsoleAdapter$ViewHolder;

    .line 82
    .local v2, "viewHolder":Lspacemadness/com/lunarconsole/console/ConsoleAdapter$ViewHolder;
    :goto_0
    iget-object v3, p0, Lspacemadness/com/lunarconsole/console/ConsoleAdapter;->dataSource:Lspacemadness/com/lunarconsole/console/ConsoleAdapter$DataSource;

    invoke-interface {v3, p1}, Lspacemadness/com/lunarconsole/console/ConsoleAdapter$DataSource;->getEntry(I)Lspacemadness/com/lunarconsole/console/ConsoleEntry;

    move-result-object v0

    .line 83
    .local v0, "entry":Lspacemadness/com/lunarconsole/console/ConsoleEntry;
    invoke-virtual {v2, v0}, Lspacemadness/com/lunarconsole/console/ConsoleAdapter$ViewHolder;->bindViewHolder(Lspacemadness/com/lunarconsole/console/ConsoleEntry;)V

    .line 85
    return-object p2

    .line 75
    .end local v0    # "entry":Lspacemadness/com/lunarconsole/console/ConsoleEntry;
    .end local v2    # "viewHolder":Lspacemadness/com/lunarconsole/console/ConsoleAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 76
    .local v1, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lspacemadness/com/lunarconsole/R$layout;->lunar_layout_console_log_entry:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 78
    new-instance v2, Lspacemadness/com/lunarconsole/console/ConsoleEntry$ViewHolder;

    invoke-direct {v2, p2}, Lspacemadness/com/lunarconsole/console/ConsoleEntry$ViewHolder;-><init>(Landroid/view/View;)V

    .line 79
    .restart local v2    # "viewHolder":Lspacemadness/com/lunarconsole/console/ConsoleAdapter$ViewHolder;
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method
