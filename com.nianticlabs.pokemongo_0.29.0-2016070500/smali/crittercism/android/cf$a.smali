.class public final enum Lcrittercism/android/cf$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/cf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum a:Lcrittercism/android/cf$a;

.field public static final enum b:Lcrittercism/android/cf$a;

.field private static final synthetic c:[Lcrittercism/android/cf$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcrittercism/android/cf$a;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcrittercism/android/cf$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/cf$a;->a:Lcrittercism/android/cf$a;

    new-instance v0, Lcrittercism/android/cf$a;

    const-string v1, "URGENT"

    invoke-direct {v0, v1, v3}, Lcrittercism/android/cf$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/cf$a;->b:Lcrittercism/android/cf$a;

    .line 15
    const/4 v0, 0x2

    new-array v0, v0, [Lcrittercism/android/cf$a;

    sget-object v1, Lcrittercism/android/cf$a;->a:Lcrittercism/android/cf$a;

    aput-object v1, v0, v2

    sget-object v1, Lcrittercism/android/cf$a;->b:Lcrittercism/android/cf$a;

    aput-object v1, v0, v3

    sput-object v0, Lcrittercism/android/cf$a;->c:[Lcrittercism/android/cf$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcrittercism/android/cf$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    const-class v0, Lcrittercism/android/cf$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcrittercism/android/cf$a;

    return-object v0
.end method

.method public static values()[Lcrittercism/android/cf$a;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcrittercism/android/cf$a;->c:[Lcrittercism/android/cf$a;

    invoke-virtual {v0}, [Lcrittercism/android/cf$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcrittercism/android/cf$a;

    return-object v0
.end method
