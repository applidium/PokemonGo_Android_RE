.class public final enum Lcrittercism/android/bj$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/bj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum a:Lcrittercism/android/bj$a;

.field public static final enum b:Lcrittercism/android/bj$a;

.field private static final synthetic c:[Lcrittercism/android/bj$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcrittercism/android/bj$a;

    const-string v1, "ACTIVATED"

    invoke-direct {v0, v1, v2}, Lcrittercism/android/bj$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/bj$a;->a:Lcrittercism/android/bj$a;

    new-instance v0, Lcrittercism/android/bj$a;

    const-string v1, "DEACTIVATED"

    invoke-direct {v0, v1, v3}, Lcrittercism/android/bj$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/bj$a;->b:Lcrittercism/android/bj$a;

    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Lcrittercism/android/bj$a;

    sget-object v1, Lcrittercism/android/bj$a;->a:Lcrittercism/android/bj$a;

    aput-object v1, v0, v2

    sget-object v1, Lcrittercism/android/bj$a;->b:Lcrittercism/android/bj$a;

    aput-object v1, v0, v3

    sput-object v0, Lcrittercism/android/bj$a;->c:[Lcrittercism/android/bj$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcrittercism/android/bj$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    const-class v0, Lcrittercism/android/bj$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcrittercism/android/bj$a;

    return-object v0
.end method

.method public static values()[Lcrittercism/android/bj$a;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcrittercism/android/bj$a;->c:[Lcrittercism/android/bj$a;

    invoke-virtual {v0}, [Lcrittercism/android/bj$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcrittercism/android/bj$a;

    return-object v0
.end method
