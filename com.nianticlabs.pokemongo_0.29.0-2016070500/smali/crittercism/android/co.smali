.class public final enum Lcrittercism/android/co;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcrittercism/android/co;

.field public static final enum b:Lcrittercism/android/co;

.field public static final enum c:Lcrittercism/android/co;

.field public static final enum d:Lcrittercism/android/co;

.field public static final enum e:Lcrittercism/android/co;

.field private static final synthetic f:[Lcrittercism/android/co;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcrittercism/android/co;

    const-string v1, "Generic"

    invoke-direct {v0, v1, v2}, Lcrittercism/android/co;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/co;->a:Lcrittercism/android/co;

    .line 9
    new-instance v0, Lcrittercism/android/co;

    const-string v1, "NSURLConnection"

    invoke-direct {v0, v1, v3}, Lcrittercism/android/co;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/co;->b:Lcrittercism/android/co;

    .line 10
    new-instance v0, Lcrittercism/android/co;

    const-string v1, "ASI"

    invoke-direct {v0, v1, v4}, Lcrittercism/android/co;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/co;->c:Lcrittercism/android/co;

    .line 11
    new-instance v0, Lcrittercism/android/co;

    const-string v1, "Android"

    invoke-direct {v0, v1, v5}, Lcrittercism/android/co;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/co;->d:Lcrittercism/android/co;

    .line 12
    new-instance v0, Lcrittercism/android/co;

    const-string v1, "XMLHttpRequest"

    invoke-direct {v0, v1, v6}, Lcrittercism/android/co;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/co;->e:Lcrittercism/android/co;

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [Lcrittercism/android/co;

    sget-object v1, Lcrittercism/android/co;->a:Lcrittercism/android/co;

    aput-object v1, v0, v2

    sget-object v1, Lcrittercism/android/co;->b:Lcrittercism/android/co;

    aput-object v1, v0, v3

    sget-object v1, Lcrittercism/android/co;->c:Lcrittercism/android/co;

    aput-object v1, v0, v4

    sget-object v1, Lcrittercism/android/co;->d:Lcrittercism/android/co;

    aput-object v1, v0, v5

    sget-object v1, Lcrittercism/android/co;->e:Lcrittercism/android/co;

    aput-object v1, v0, v6

    sput-object v0, Lcrittercism/android/co;->f:[Lcrittercism/android/co;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)I
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lcrittercism/android/co;->d:Lcrittercism/android/co;

    invoke-virtual {v0}, Lcrittercism/android/co;->ordinal()I

    move-result v0

    .line 15
    instance-of v1, p0, Lcom/crittercism/error/CRXMLHttpRequestException;

    if-eqz v1, :cond_0

    .line 19
    sget-object v0, Lcrittercism/android/co;->e:Lcrittercism/android/co;

    invoke-virtual {v0}, Lcrittercism/android/co;->ordinal()I

    move-result v0

    .line 21
    :cond_0
    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcrittercism/android/co;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcrittercism/android/co;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcrittercism/android/co;

    return-object v0
.end method

.method public static values()[Lcrittercism/android/co;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcrittercism/android/co;->f:[Lcrittercism/android/co;

    invoke-virtual {v0}, [Lcrittercism/android/co;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcrittercism/android/co;

    return-object v0
.end method
