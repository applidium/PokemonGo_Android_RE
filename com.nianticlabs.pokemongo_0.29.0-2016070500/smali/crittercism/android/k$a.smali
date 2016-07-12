.class public final enum Lcrittercism/android/k$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum a:Lcrittercism/android/k$a;

.field public static final enum b:Lcrittercism/android/k$a;

.field private static final synthetic e:[Lcrittercism/android/k$a;


# instance fields
.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 8
    new-instance v0, Lcrittercism/android/k$a;

    const-string v1, "HTTP"

    const-string v2, "http"

    const/16 v3, 0x50

    invoke-direct {v0, v1, v4, v2, v3}, Lcrittercism/android/k$a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcrittercism/android/k$a;->a:Lcrittercism/android/k$a;

    .line 9
    new-instance v0, Lcrittercism/android/k$a;

    const-string v1, "HTTPS"

    const-string v2, "https"

    const/16 v3, 0x1bb

    invoke-direct {v0, v1, v5, v2, v3}, Lcrittercism/android/k$a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcrittercism/android/k$a;->b:Lcrittercism/android/k$a;

    .line 7
    const/4 v0, 0x2

    new-array v0, v0, [Lcrittercism/android/k$a;

    sget-object v1, Lcrittercism/android/k$a;->a:Lcrittercism/android/k$a;

    aput-object v1, v0, v4

    sget-object v1, Lcrittercism/android/k$a;->b:Lcrittercism/android/k$a;

    aput-object v1, v0, v5

    sput-object v0, Lcrittercism/android/k$a;->e:[Lcrittercism/android/k$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput-object p3, p0, Lcrittercism/android/k$a;->c:Ljava/lang/String;

    .line 16
    iput p4, p0, Lcrittercism/android/k$a;->d:I

    .line 17
    return-void
.end method

.method static synthetic a(Lcrittercism/android/k$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcrittercism/android/k$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcrittercism/android/k$a;)I
    .locals 1

    .prologue
    .line 7
    iget v0, p0, Lcrittercism/android/k$a;->d:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcrittercism/android/k$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcrittercism/android/k$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcrittercism/android/k$a;

    return-object v0
.end method

.method public static values()[Lcrittercism/android/k$a;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcrittercism/android/k$a;->e:[Lcrittercism/android/k$a;

    invoke-virtual {v0}, [Lcrittercism/android/k$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcrittercism/android/k$a;

    return-object v0
.end method
