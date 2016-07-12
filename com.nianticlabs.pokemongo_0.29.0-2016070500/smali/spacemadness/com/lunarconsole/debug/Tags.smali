.class public Lspacemadness/com/lunarconsole/debug/Tags;
.super Ljava/lang/Object;
.source "Tags.java"


# static fields
.field public static final CONSOLE:Lspacemadness/com/lunarconsole/debug/Tag;

.field public static final GESTURES:Lspacemadness/com/lunarconsole/debug/Tag;

.field public static final PLUGIN:Lspacemadness/com/lunarconsole/debug/Tag;

.field public static final WARNING_VIEW:Lspacemadness/com/lunarconsole/debug/Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lspacemadness/com/lunarconsole/debug/Tag;

    const-string v1, "Plugin"

    invoke-direct {v0, v1}, Lspacemadness/com/lunarconsole/debug/Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lspacemadness/com/lunarconsole/debug/Tags;->PLUGIN:Lspacemadness/com/lunarconsole/debug/Tag;

    .line 27
    new-instance v0, Lspacemadness/com/lunarconsole/debug/Tag;

    const-string v1, "Gestures"

    invoke-direct {v0, v1}, Lspacemadness/com/lunarconsole/debug/Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lspacemadness/com/lunarconsole/debug/Tags;->GESTURES:Lspacemadness/com/lunarconsole/debug/Tag;

    .line 28
    new-instance v0, Lspacemadness/com/lunarconsole/debug/Tag;

    const-string v1, "Console"

    invoke-direct {v0, v1}, Lspacemadness/com/lunarconsole/debug/Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lspacemadness/com/lunarconsole/debug/Tags;->CONSOLE:Lspacemadness/com/lunarconsole/debug/Tag;

    .line 29
    new-instance v0, Lspacemadness/com/lunarconsole/debug/Tag;

    const-string v1, "Warning"

    invoke-direct {v0, v1}, Lspacemadness/com/lunarconsole/debug/Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lspacemadness/com/lunarconsole/debug/Tags;->WARNING_VIEW:Lspacemadness/com/lunarconsole/debug/Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
