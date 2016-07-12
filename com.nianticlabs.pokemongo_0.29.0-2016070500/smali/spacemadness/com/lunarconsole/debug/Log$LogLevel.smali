.class public final enum Lspacemadness/com/lunarconsole/debug/Log$LogLevel;
.super Ljava/lang/Enum;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lspacemadness/com/lunarconsole/debug/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lspacemadness/com/lunarconsole/debug/Log$LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lspacemadness/com/lunarconsole/debug/Log$LogLevel;

.field public static final enum Crit:Lspacemadness/com/lunarconsole/debug/Log$LogLevel;

.field public static final enum Debug:Lspacemadness/com/lunarconsole/debug/Log$LogLevel;

.field public static final enum Error:Lspacemadness/com/lunarconsole/debug/Log$LogLevel;

.field public static final enum Info:Lspacemadness/com/lunarconsole/debug/Log$LogLevel;

.field public static final enum None:Lspacemadness/com/lunarconsole/debug/Log$LogLevel;

.field public static final enum Warn:Lspacemadness/com/lunarconsole/debug/Log$LogLevel;


# instance fields
.field private androidLogPriority:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x6

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x3

    .line 36
    new-instance v0, Lspacemadness/com/lunarconsole/debug/Log$LogLevel;

    const-string v1, "Crit"

    invoke-direct {v0, v1, v7, v6}, Lspacemadness/com/lunarconsole/debug/Log$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lspacemadness/com/lunarconsole/debug/Log$LogLevel;->Crit:Lspacemadness/com/lunarconsole/debug/Log$LogLevel;

    .line 37
    new-instance v0, Lspacemadness/com/lunarconsole/debug/Log$LogLevel;

    const-string v1, "Error"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v6}, Lspacemadness/com/lunarconsole/debug/Log$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lspacemadness/com/lunarconsole/debug/Log$LogLevel;->Error:Lspacemadness/com/lunarconsole/debug/Log$LogLevel;

    .line 38
    new-instance v0, Lspacemadness/com/lunarconsole/debug/Log$LogLevel;

    const-string v1, "Warn"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v5}, Lspacemadness/com/lunarconsole/debug/Log$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lspacemadness/com/lunarconsole/debug/Log$LogLevel;->Warn:Lspacemadness/com/lunarconsole/debug/Log$LogLevel;

    .line 39
    new-instance v0, Lspacemadness/com/lunarconsole/debug/Log$LogLevel;

    const-string v1, "Info"

    invoke-direct {v0, v1, v3, v4}, Lspacemadness/com/lunarconsole/debug/Log$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lspacemadness/com/lunarconsole/debug/Log$LogLevel;->Info:Lspacemadness/com/lunarconsole/debug/Log$LogLevel;

    .line 40
    new-instance v0, Lspacemadness/com/lunarconsole/debug/Log$LogLevel;

    const-string v1, "Debug"

    invoke-direct {v0, v1, v4, v3}, Lspacemadness/com/lunarconsole/debug/Log$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lspacemadness/com/lunarconsole/debug/Log$LogLevel;->Debug:Lspacemadness/com/lunarconsole/debug/Log$LogLevel;

    .line 41
    new-instance v0, Lspacemadness/com/lunarconsole/debug/Log$LogLevel;

    const-string v1, "None"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v5, v2}, Lspacemadness/com/lunarconsole/debug/Log$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lspacemadness/com/lunarconsole/debug/Log$LogLevel;->None:Lspacemadness/com/lunarconsole/debug/Log$LogLevel;

    .line 34
    new-array v0, v6, [Lspacemadness/com/lunarconsole/debug/Log$LogLevel;

    sget-object v1, Lspacemadness/com/lunarconsole/debug/Log$LogLevel;->Crit:Lspacemadness/com/lunarconsole/debug/Log$LogLevel;

    aput-object v1, v0, v7

    const/4 v1, 0x1

    sget-object v2, Lspacemadness/com/lunarconsole/debug/Log$LogLevel;->Error:Lspacemadness/com/lunarconsole/debug/Log$LogLevel;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lspacemadness/com/lunarconsole/debug/Log$LogLevel;->Warn:Lspacemadness/com/lunarconsole/debug/Log$LogLevel;

    aput-object v2, v0, v1

    sget-object v1, Lspacemadness/com/lunarconsole/debug/Log$LogLevel;->Info:Lspacemadness/com/lunarconsole/debug/Log$LogLevel;

    aput-object v1, v0, v3

    sget-object v1, Lspacemadness/com/lunarconsole/debug/Log$LogLevel;->Debug:Lspacemadness/com/lunarconsole/debug/Log$LogLevel;

    aput-object v1, v0, v4

    sget-object v1, Lspacemadness/com/lunarconsole/debug/Log$LogLevel;->None:Lspacemadness/com/lunarconsole/debug/Log$LogLevel;

    aput-object v1, v0, v5

    sput-object v0, Lspacemadness/com/lunarconsole/debug/Log$LogLevel;->$VALUES:[Lspacemadness/com/lunarconsole/debug/Log$LogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "priority"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput p3, p0, Lspacemadness/com/lunarconsole/debug/Log$LogLevel;->androidLogPriority:I

    .line 48
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lspacemadness/com/lunarconsole/debug/Log$LogLevel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    const-class v0, Lspacemadness/com/lunarconsole/debug/Log$LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lspacemadness/com/lunarconsole/debug/Log$LogLevel;

    return-object v0
.end method

.method public static values()[Lspacemadness/com/lunarconsole/debug/Log$LogLevel;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lspacemadness/com/lunarconsole/debug/Log$LogLevel;->$VALUES:[Lspacemadness/com/lunarconsole/debug/Log$LogLevel;

    invoke-virtual {v0}, [Lspacemadness/com/lunarconsole/debug/Log$LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lspacemadness/com/lunarconsole/debug/Log$LogLevel;

    return-object v0
.end method


# virtual methods
.method public getAndroidLogPriority()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lspacemadness/com/lunarconsole/debug/Log$LogLevel;->androidLogPriority:I

    return v0
.end method
