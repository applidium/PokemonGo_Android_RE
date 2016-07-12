.class public Lspacemadness/com/lunarconsole/console/ConsoleEntry;
.super Ljava/lang/Object;
.source "ConsoleEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lspacemadness/com/lunarconsole/console/ConsoleEntry$ViewHolder;
    }
.end annotation


# static fields
.field private static final LOG_ENTRY_ICON_RES_LOOKUP:[I


# instance fields
.field public index:I

.field public final message:Ljava/lang/String;

.field public final stackTrace:Ljava/lang/String;

.field public final type:B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const/4 v0, 0x5

    new-array v0, v0, [I

    sput-object v0, Lspacemadness/com/lunarconsole/console/ConsoleEntry;->LOG_ENTRY_ICON_RES_LOOKUP:[I

    .line 40
    sget-object v0, Lspacemadness/com/lunarconsole/console/ConsoleEntry;->LOG_ENTRY_ICON_RES_LOOKUP:[I

    const/4 v1, 0x0

    sget v2, Lspacemadness/com/lunarconsole/R$drawable;->lunar_console_icon_log_error:I

    aput v2, v0, v1

    .line 41
    sget-object v0, Lspacemadness/com/lunarconsole/console/ConsoleEntry;->LOG_ENTRY_ICON_RES_LOOKUP:[I

    const/4 v1, 0x1

    sget v2, Lspacemadness/com/lunarconsole/R$drawable;->lunar_console_icon_log_error:I

    aput v2, v0, v1

    .line 42
    sget-object v0, Lspacemadness/com/lunarconsole/console/ConsoleEntry;->LOG_ENTRY_ICON_RES_LOOKUP:[I

    const/4 v1, 0x2

    sget v2, Lspacemadness/com/lunarconsole/R$drawable;->lunar_console_icon_log_warning:I

    aput v2, v0, v1

    .line 43
    sget-object v0, Lspacemadness/com/lunarconsole/console/ConsoleEntry;->LOG_ENTRY_ICON_RES_LOOKUP:[I

    const/4 v1, 0x3

    sget v2, Lspacemadness/com/lunarconsole/R$drawable;->lunar_console_icon_log:I

    aput v2, v0, v1

    .line 44
    sget-object v0, Lspacemadness/com/lunarconsole/console/ConsoleEntry;->LOG_ENTRY_ICON_RES_LOOKUP:[I

    const/4 v1, 0x4

    sget v2, Lspacemadness/com/lunarconsole/R$drawable;->lunar_console_icon_log_error:I

    aput v2, v0, v1

    .line 45
    return-void
.end method

.method public constructor <init>(BLjava/lang/String;)V
    .locals 1
    .param p1, "type"    # B
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lspacemadness/com/lunarconsole/console/ConsoleEntry;-><init>(BLjava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public constructor <init>(BLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # B
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "stackTrace"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-byte p1, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntry;->type:B

    .line 60
    iput-object p2, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntry;->message:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntry;->stackTrace:Ljava/lang/String;

    .line 62
    return-void
.end method

.method private getIconResId(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 87
    if-ltz p1, :cond_0

    sget-object v0, Lspacemadness/com/lunarconsole/console/ConsoleEntry;->LOG_ENTRY_ICON_RES_LOOKUP:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    sget-object v0, Lspacemadness/com/lunarconsole/console/ConsoleEntry;->LOG_ENTRY_ICON_RES_LOOKUP:[I

    aget v0, v0, p1

    :goto_0
    return v0

    :cond_0
    sget v0, Lspacemadness/com/lunarconsole/R$drawable;->lunar_console_icon_log:I

    goto :goto_0
.end method


# virtual methods
.method public getBackgroundColor(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    iget v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntry;->index:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    sget v0, Lspacemadness/com/lunarconsole/R$color;->lunar_console_color_cell_background_dark:I

    .line 77
    .local v0, "colorId":I
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    return v1

    .line 74
    .end local v0    # "colorId":I
    :cond_0
    sget v0, Lspacemadness/com/lunarconsole/R$color;->lunar_console_color_cell_background_light:I

    goto :goto_0
.end method

.method public getIconDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    iget-byte v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntry;->type:B

    invoke-direct {p0, v1}, Lspacemadness/com/lunarconsole/console/ConsoleEntry;->getIconResId(I)I

    move-result v0

    .line 68
    .local v0, "id":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public hasStackTrace()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntry;->stackTrace:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntry;->stackTrace:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
