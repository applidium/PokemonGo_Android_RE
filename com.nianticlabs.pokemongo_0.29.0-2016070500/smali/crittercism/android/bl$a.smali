.class public final enum Lcrittercism/android/bl$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/bl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum a:Lcrittercism/android/bl$a;

.field public static final enum b:Lcrittercism/android/bl$a;

.field private static final synthetic d:[Lcrittercism/android/bl$a;


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 29
    new-instance v0, Lcrittercism/android/bl$a;

    const-string v1, "FOREGROUND"

    const-string v2, "foregrounded"

    invoke-direct {v0, v1, v3, v2}, Lcrittercism/android/bl$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcrittercism/android/bl$a;->a:Lcrittercism/android/bl$a;

    new-instance v0, Lcrittercism/android/bl$a;

    const-string v1, "BACKGROUND"

    const-string v2, "backgrounded"

    invoke-direct {v0, v1, v4, v2}, Lcrittercism/android/bl$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcrittercism/android/bl$a;->b:Lcrittercism/android/bl$a;

    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [Lcrittercism/android/bl$a;

    sget-object v1, Lcrittercism/android/bl$a;->a:Lcrittercism/android/bl$a;

    aput-object v1, v0, v3

    sget-object v1, Lcrittercism/android/bl$a;->b:Lcrittercism/android/bl$a;

    aput-object v1, v0, v4

    sput-object v0, Lcrittercism/android/bl$a;->d:[Lcrittercism/android/bl$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput-object p3, p0, Lcrittercism/android/bl$a;->c:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcrittercism/android/bl$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    const-class v0, Lcrittercism/android/bl$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcrittercism/android/bl$a;

    return-object v0
.end method

.method public static values()[Lcrittercism/android/bl$a;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcrittercism/android/bl$a;->d:[Lcrittercism/android/bl$a;

    invoke-virtual {v0}, [Lcrittercism/android/bl$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcrittercism/android/bl$a;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcrittercism/android/bl$a;->c:Ljava/lang/String;

    return-object v0
.end method
