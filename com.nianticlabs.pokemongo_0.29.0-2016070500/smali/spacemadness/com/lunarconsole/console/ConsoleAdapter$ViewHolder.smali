.class public abstract Lspacemadness/com/lunarconsole/console/ConsoleAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ConsoleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lspacemadness/com/lunarconsole/console/ConsoleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lspacemadness/com/lunarconsole/console/ConsoleEntry;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final itemView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 105
    .local p0, "this":Lspacemadness/com/lunarconsole/console/ConsoleAdapter$ViewHolder;, "Lspacemadness/com/lunarconsole/console/ConsoleAdapter$ViewHolder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lspacemadness/com/lunarconsole/console/ConsoleAdapter$ViewHolder;->itemView:Landroid/view/View;

    .line 107
    return-void
.end method


# virtual methods
.method bindViewHolder(Lspacemadness/com/lunarconsole/console/ConsoleEntry;)V
    .locals 0
    .param p1, "entry"    # Lspacemadness/com/lunarconsole/console/ConsoleEntry;

    .prologue
    .line 111
    .local p0, "this":Lspacemadness/com/lunarconsole/console/ConsoleAdapter$ViewHolder;, "Lspacemadness/com/lunarconsole/console/ConsoleAdapter$ViewHolder<TT;>;"
    invoke-virtual {p0, p1}, Lspacemadness/com/lunarconsole/console/ConsoleAdapter$ViewHolder;->onBindViewHolder(Lspacemadness/com/lunarconsole/console/ConsoleEntry;)V

    .line 112
    return-void
.end method

.method protected getColor(I)I
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 133
    .local p0, "this":Lspacemadness/com/lunarconsole/console/ConsoleAdapter$ViewHolder;, "Lspacemadness/com/lunarconsole/console/ConsoleAdapter$ViewHolder<TT;>;"
    invoke-virtual {p0}, Lspacemadness/com/lunarconsole/console/ConsoleAdapter$ViewHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 118
    .local p0, "this":Lspacemadness/com/lunarconsole/console/ConsoleAdapter$ViewHolder;, "Lspacemadness/com/lunarconsole/console/ConsoleAdapter$ViewHolder<TT;>;"
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 123
    .local p0, "this":Lspacemadness/com/lunarconsole/console/ConsoleAdapter$ViewHolder;, "Lspacemadness/com/lunarconsole/console/ConsoleAdapter$ViewHolder<TT;>;"
    invoke-virtual {p0}, Lspacemadness/com/lunarconsole/console/ConsoleAdapter$ViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 128
    .local p0, "this":Lspacemadness/com/lunarconsole/console/ConsoleAdapter$ViewHolder;, "Lspacemadness/com/lunarconsole/console/ConsoleAdapter$ViewHolder<TT;>;"
    invoke-virtual {p0}, Lspacemadness/com/lunarconsole/console/ConsoleAdapter$ViewHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract onBindViewHolder(Lspacemadness/com/lunarconsole/console/ConsoleEntry;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
