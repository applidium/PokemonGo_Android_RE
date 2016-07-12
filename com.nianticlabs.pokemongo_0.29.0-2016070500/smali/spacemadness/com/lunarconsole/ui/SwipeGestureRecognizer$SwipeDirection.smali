.class public final enum Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer$SwipeDirection;
.super Ljava/lang/Enum;
.source "SwipeGestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SwipeDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer$SwipeDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer$SwipeDirection;

.field public static final enum Down:Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer$SwipeDirection;

.field public static final enum Left:Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer$SwipeDirection;

.field public static final enum Right:Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer$SwipeDirection;

.field public static final enum Up:Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer$SwipeDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer$SwipeDirection;

    const-string v1, "Up"

    invoke-direct {v0, v1, v2}, Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer$SwipeDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer$SwipeDirection;->Up:Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer$SwipeDirection;

    .line 31
    new-instance v0, Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer$SwipeDirection;

    const-string v1, "Down"

    invoke-direct {v0, v1, v3}, Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer$SwipeDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer$SwipeDirection;->Down:Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer$SwipeDirection;

    .line 32
    new-instance v0, Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer$SwipeDirection;

    const-string v1, "Left"

    invoke-direct {v0, v1, v4}, Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer$SwipeDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer$SwipeDirection;->Left:Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer$SwipeDirection;

    .line 33
    new-instance v0, Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer$SwipeDirection;

    const-string v1, "Right"

    invoke-direct {v0, v1, v5}, Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer$SwipeDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer$SwipeDirection;->Right:Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer$SwipeDirection;

    .line 28
    const/4 v0, 0x4

    new-array v0, v0, [Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer$SwipeDirection;

    sget-object v1, Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer$SwipeDirection;->Up:Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer$SwipeDirection;

    aput-object v1, v0, v2

    sget-object v1, Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer$SwipeDirection;->Down:Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer$SwipeDirection;

    aput-object v1, v0, v3

    sget-object v1, Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer$SwipeDirection;->Left:Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer$SwipeDirection;

    aput-object v1, v0, v4

    sget-object v1, Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer$SwipeDirection;->Right:Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer$SwipeDirection;

    aput-object v1, v0, v5

    sput-object v0, Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer$SwipeDirection;->$VALUES:[Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer$SwipeDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer$SwipeDirection;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    const-class v0, Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer$SwipeDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer$SwipeDirection;

    return-object v0
.end method

.method public static values()[Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer$SwipeDirection;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer$SwipeDirection;->$VALUES:[Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer$SwipeDirection;

    invoke-virtual {v0}, [Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer$SwipeDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer$SwipeDirection;

    return-object v0
.end method
