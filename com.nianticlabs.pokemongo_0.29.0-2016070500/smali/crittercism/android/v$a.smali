.class public final enum Lcrittercism/android/v$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum a:Lcrittercism/android/v$a;

.field public static final enum b:Lcrittercism/android/v$a;

.field public static final enum c:Lcrittercism/android/v$a;

.field private static final synthetic d:[Lcrittercism/android/v$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 64
    new-instance v0, Lcrittercism/android/v$a;

    const-string v1, "HTTP_ONLY"

    invoke-direct {v0, v1, v2}, Lcrittercism/android/v$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/v$a;->a:Lcrittercism/android/v$a;

    .line 65
    new-instance v0, Lcrittercism/android/v$a;

    const-string v1, "HTTPS_ONLY"

    invoke-direct {v0, v1, v3}, Lcrittercism/android/v$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/v$a;->b:Lcrittercism/android/v$a;

    .line 66
    new-instance v0, Lcrittercism/android/v$a;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v4}, Lcrittercism/android/v$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/v$a;->c:Lcrittercism/android/v$a;

    .line 63
    const/4 v0, 0x3

    new-array v0, v0, [Lcrittercism/android/v$a;

    sget-object v1, Lcrittercism/android/v$a;->a:Lcrittercism/android/v$a;

    aput-object v1, v0, v2

    sget-object v1, Lcrittercism/android/v$a;->b:Lcrittercism/android/v$a;

    aput-object v1, v0, v3

    sget-object v1, Lcrittercism/android/v$a;->c:Lcrittercism/android/v$a;

    aput-object v1, v0, v4

    sput-object v0, Lcrittercism/android/v$a;->d:[Lcrittercism/android/v$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcrittercism/android/v$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 63
    const-class v0, Lcrittercism/android/v$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcrittercism/android/v$a;

    return-object v0
.end method

.method public static values()[Lcrittercism/android/v$a;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcrittercism/android/v$a;->d:[Lcrittercism/android/v$a;

    invoke-virtual {v0}, [Lcrittercism/android/v$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcrittercism/android/v$a;

    return-object v0
.end method
