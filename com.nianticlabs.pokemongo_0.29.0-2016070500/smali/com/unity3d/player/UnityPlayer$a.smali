.class final enum Lcom/unity3d/player/UnityPlayer$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/player/UnityPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation


# static fields
.field public static final enum a:Lcom/unity3d/player/UnityPlayer$a;

.field public static final enum b:Lcom/unity3d/player/UnityPlayer$a;

.field public static final enum c:Lcom/unity3d/player/UnityPlayer$a;

.field public static final enum d:Lcom/unity3d/player/UnityPlayer$a;

.field public static final enum e:Lcom/unity3d/player/UnityPlayer$a;

.field private static final synthetic f:[Lcom/unity3d/player/UnityPlayer$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/unity3d/player/UnityPlayer$a;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/player/UnityPlayer$a;->a:Lcom/unity3d/player/UnityPlayer$a;

    new-instance v0, Lcom/unity3d/player/UnityPlayer$a;

    const-string v1, "RESUME"

    invoke-direct {v0, v1, v3}, Lcom/unity3d/player/UnityPlayer$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/player/UnityPlayer$a;->b:Lcom/unity3d/player/UnityPlayer$a;

    new-instance v0, Lcom/unity3d/player/UnityPlayer$a;

    const-string v1, "QUIT"

    invoke-direct {v0, v1, v4}, Lcom/unity3d/player/UnityPlayer$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/player/UnityPlayer$a;->c:Lcom/unity3d/player/UnityPlayer$a;

    new-instance v0, Lcom/unity3d/player/UnityPlayer$a;

    const-string v1, "FOCUS_GAINED"

    invoke-direct {v0, v1, v5}, Lcom/unity3d/player/UnityPlayer$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/player/UnityPlayer$a;->d:Lcom/unity3d/player/UnityPlayer$a;

    new-instance v0, Lcom/unity3d/player/UnityPlayer$a;

    const-string v1, "FOCUS_LOST"

    invoke-direct {v0, v1, v6}, Lcom/unity3d/player/UnityPlayer$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/player/UnityPlayer$a;->e:Lcom/unity3d/player/UnityPlayer$a;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/unity3d/player/UnityPlayer$a;

    sget-object v1, Lcom/unity3d/player/UnityPlayer$a;->a:Lcom/unity3d/player/UnityPlayer$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/unity3d/player/UnityPlayer$a;->b:Lcom/unity3d/player/UnityPlayer$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/unity3d/player/UnityPlayer$a;->c:Lcom/unity3d/player/UnityPlayer$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/unity3d/player/UnityPlayer$a;->d:Lcom/unity3d/player/UnityPlayer$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/unity3d/player/UnityPlayer$a;->e:Lcom/unity3d/player/UnityPlayer$a;

    aput-object v1, v0, v6

    sput-object v0, Lcom/unity3d/player/UnityPlayer$a;->f:[Lcom/unity3d/player/UnityPlayer$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
