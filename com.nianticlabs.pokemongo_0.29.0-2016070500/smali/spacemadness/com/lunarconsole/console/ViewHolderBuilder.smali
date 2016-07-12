.class public abstract Lspacemadness/com/lunarconsole/console/ViewHolderBuilder;
.super Ljava/lang/Object;
.source "ViewHolderBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lspacemadness/com/lunarconsole/console/ConsoleEntry;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    .local p0, "this":Lspacemadness/com/lunarconsole/console/ViewHolderBuilder;, "Lspacemadness/com/lunarconsole/console/ViewHolderBuilder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createViewHolder(Landroid/view/ViewGroup;)Lspacemadness/com/lunarconsole/console/ConsoleAdapter$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Lspacemadness/com/lunarconsole/console/ConsoleAdapter$ViewHolder",
            "<TT;>;"
        }
    .end annotation
.end method
