.class public final enum Lcrittercism/android/i$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation


# static fields
.field public static final enum a:Lcrittercism/android/i$b;

.field public static final enum b:Lcrittercism/android/i$b;

.field public static final enum c:Lcrittercism/android/i$b;

.field private static final synthetic d:[Lcrittercism/android/i$b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    new-instance v0, Lcrittercism/android/i$b;

    const-string v1, "SOCKET_MONITOR"

    invoke-direct {v0, v1, v2}, Lcrittercism/android/i$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/i$b;->a:Lcrittercism/android/i$b;

    .line 72
    new-instance v0, Lcrittercism/android/i$b;

    const-string v1, "STREAM_MONITOR"

    invoke-direct {v0, v1, v3}, Lcrittercism/android/i$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/i$b;->b:Lcrittercism/android/i$b;

    .line 73
    new-instance v0, Lcrittercism/android/i$b;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4}, Lcrittercism/android/i$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/i$b;->c:Lcrittercism/android/i$b;

    .line 70
    const/4 v0, 0x3

    new-array v0, v0, [Lcrittercism/android/i$b;

    sget-object v1, Lcrittercism/android/i$b;->a:Lcrittercism/android/i$b;

    aput-object v1, v0, v2

    sget-object v1, Lcrittercism/android/i$b;->b:Lcrittercism/android/i$b;

    aput-object v1, v0, v3

    sget-object v1, Lcrittercism/android/i$b;->c:Lcrittercism/android/i$b;

    aput-object v1, v0, v4

    sput-object v0, Lcrittercism/android/i$b;->d:[Lcrittercism/android/i$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcrittercism/android/i$b;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 70
    const-class v0, Lcrittercism/android/i$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcrittercism/android/i$b;

    return-object v0
.end method

.method public static values()[Lcrittercism/android/i$b;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcrittercism/android/i$b;->d:[Lcrittercism/android/i$b;

    invoke-virtual {v0}, [Lcrittercism/android/i$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcrittercism/android/i$b;

    return-object v0
.end method
