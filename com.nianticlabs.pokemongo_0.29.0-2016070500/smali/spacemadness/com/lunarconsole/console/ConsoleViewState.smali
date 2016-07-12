.class Lspacemadness/com/lunarconsole/console/ConsoleViewState;
.super Ljava/lang/Object;
.source "ConsoleViewState.java"


# static fields
.field public static scrollLocked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    sput-boolean v0, Lspacemadness/com/lunarconsole/console/ConsoleViewState;->scrollLocked:Z

    .line 32
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
