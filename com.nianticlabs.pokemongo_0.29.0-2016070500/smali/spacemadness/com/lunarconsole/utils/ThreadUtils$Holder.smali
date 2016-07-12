.class Lspacemadness/com/lunarconsole/utils/ThreadUtils$Holder;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lspacemadness/com/lunarconsole/utils/ThreadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lspacemadness/com/lunarconsole/utils/ThreadUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 83
    new-instance v0, Lspacemadness/com/lunarconsole/utils/ThreadUtils;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lspacemadness/com/lunarconsole/utils/ThreadUtils;-><init>(Lspacemadness/com/lunarconsole/utils/ThreadUtils$1;)V

    sput-object v0, Lspacemadness/com/lunarconsole/utils/ThreadUtils$Holder;->INSTANCE:Lspacemadness/com/lunarconsole/utils/ThreadUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lspacemadness/com/lunarconsole/utils/ThreadUtils;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lspacemadness/com/lunarconsole/utils/ThreadUtils$Holder;->INSTANCE:Lspacemadness/com/lunarconsole/utils/ThreadUtils;

    return-object v0
.end method
