.class Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;
.super Lspacemadness/com/lunarconsole/console/LimitSizeList;
.source "ConsoleEntryList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lspacemadness/com/lunarconsole/console/ConsoleEntryList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LimitSizeEntryList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lspacemadness/com/lunarconsole/console/LimitSizeList",
        "<",
        "Lspacemadness/com/lunarconsole/console/ConsoleEntry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "capacity"    # I
    .param p2, "trimSize"    # I

    .prologue
    .line 340
    const-class v0, Lspacemadness/com/lunarconsole/console/ConsoleEntry;

    invoke-direct {p0, v0, p1, p2}, Lspacemadness/com/lunarconsole/console/LimitSizeList;-><init>(Ljava/lang/Class;II)V

    .line 341
    return-void
.end method
