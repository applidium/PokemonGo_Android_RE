.class public final enum Lcrittercism/android/ce$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/ce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum a:Lcrittercism/android/ce$a;

.field public static final enum b:Lcrittercism/android/ce$a;

.field public static final enum c:Lcrittercism/android/ce$a;

.field public static final enum d:Lcrittercism/android/ce$a;

.field public static final enum e:Lcrittercism/android/ce$a;

.field private static final synthetic f:[Lcrittercism/android/ce$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcrittercism/android/ce$a;

    const-string v1, "INTERNET_UP"

    invoke-direct {v0, v1, v2}, Lcrittercism/android/ce$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/ce$a;->a:Lcrittercism/android/ce$a;

    new-instance v0, Lcrittercism/android/ce$a;

    const-string v1, "INTERNET_DOWN"

    invoke-direct {v0, v1, v3}, Lcrittercism/android/ce$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/ce$a;->b:Lcrittercism/android/ce$a;

    new-instance v0, Lcrittercism/android/ce$a;

    const-string v1, "CONN_TYPE_GAINED"

    invoke-direct {v0, v1, v4}, Lcrittercism/android/ce$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/ce$a;->c:Lcrittercism/android/ce$a;

    new-instance v0, Lcrittercism/android/ce$a;

    const-string v1, "CONN_TYPE_LOST"

    invoke-direct {v0, v1, v5}, Lcrittercism/android/ce$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/ce$a;->d:Lcrittercism/android/ce$a;

    new-instance v0, Lcrittercism/android/ce$a;

    const-string v1, "CONN_TYPE_SWITCHED"

    invoke-direct {v0, v1, v6}, Lcrittercism/android/ce$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/ce$a;->e:Lcrittercism/android/ce$a;

    .line 33
    const/4 v0, 0x5

    new-array v0, v0, [Lcrittercism/android/ce$a;

    sget-object v1, Lcrittercism/android/ce$a;->a:Lcrittercism/android/ce$a;

    aput-object v1, v0, v2

    sget-object v1, Lcrittercism/android/ce$a;->b:Lcrittercism/android/ce$a;

    aput-object v1, v0, v3

    sget-object v1, Lcrittercism/android/ce$a;->c:Lcrittercism/android/ce$a;

    aput-object v1, v0, v4

    sget-object v1, Lcrittercism/android/ce$a;->d:Lcrittercism/android/ce$a;

    aput-object v1, v0, v5

    sget-object v1, Lcrittercism/android/ce$a;->e:Lcrittercism/android/ce$a;

    aput-object v1, v0, v6

    sput-object v0, Lcrittercism/android/ce$a;->f:[Lcrittercism/android/ce$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcrittercism/android/ce$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    const-class v0, Lcrittercism/android/ce$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcrittercism/android/ce$a;

    return-object v0
.end method

.method public static values()[Lcrittercism/android/ce$a;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcrittercism/android/ce$a;->f:[Lcrittercism/android/ce$a;

    invoke-virtual {v0}, [Lcrittercism/android/ce$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcrittercism/android/ce$a;

    return-object v0
.end method
