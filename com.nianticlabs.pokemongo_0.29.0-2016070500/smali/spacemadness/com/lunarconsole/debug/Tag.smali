.class public Lspacemadness/com/lunarconsole/debug/Tag;
.super Ljava/lang/Object;
.source "Tag.java"


# instance fields
.field public enabled:Z

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lspacemadness/com/lunarconsole/debug/Tag;-><init>(Ljava/lang/String;Z)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lspacemadness/com/lunarconsole/debug/Tag;->name:Ljava/lang/String;

    .line 39
    iput-boolean p2, p0, Lspacemadness/com/lunarconsole/debug/Tag;->enabled:Z

    .line 40
    return-void
.end method
