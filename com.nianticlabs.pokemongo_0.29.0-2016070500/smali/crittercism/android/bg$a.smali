.class final enum Lcrittercism/android/bg$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/bg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation


# static fields
.field public static final enum a:Lcrittercism/android/bg$a;

.field public static final enum b:Lcrittercism/android/bg$a;

.field public static final enum c:Lcrittercism/android/bg$a;

.field public static final enum d:Lcrittercism/android/bg$a;

.field public static final enum e:Lcrittercism/android/bg$a;

.field public static final enum f:Lcrittercism/android/bg$a;

.field public static final enum g:Lcrittercism/android/bg$a;

.field public static final enum h:Lcrittercism/android/bg$a;

.field public static final enum i:Lcrittercism/android/bg$a;

.field private static final synthetic j:[Lcrittercism/android/bg$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 49
    new-instance v0, Lcrittercism/android/bg$a;

    const-string v1, "CREATED"

    invoke-direct {v0, v1, v3}, Lcrittercism/android/bg$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/bg$a;->a:Lcrittercism/android/bg$a;

    new-instance v0, Lcrittercism/android/bg$a;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v4}, Lcrittercism/android/bg$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/bg$a;->b:Lcrittercism/android/bg$a;

    new-instance v0, Lcrittercism/android/bg$a;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v5}, Lcrittercism/android/bg$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/bg$a;->c:Lcrittercism/android/bg$a;

    new-instance v0, Lcrittercism/android/bg$a;

    const-string v1, "SLOW"

    invoke-direct {v0, v1, v6}, Lcrittercism/android/bg$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/bg$a;->d:Lcrittercism/android/bg$a;

    new-instance v0, Lcrittercism/android/bg$a;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v7}, Lcrittercism/android/bg$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/bg$a;->e:Lcrittercism/android/bg$a;

    new-instance v0, Lcrittercism/android/bg$a;

    const-string v1, "TIMEOUT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcrittercism/android/bg$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/bg$a;->f:Lcrittercism/android/bg$a;

    new-instance v0, Lcrittercism/android/bg$a;

    const-string v1, "CRASHED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcrittercism/android/bg$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/bg$a;->g:Lcrittercism/android/bg$a;

    new-instance v0, Lcrittercism/android/bg$a;

    const-string v1, "ABORTED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcrittercism/android/bg$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/bg$a;->h:Lcrittercism/android/bg$a;

    new-instance v0, Lcrittercism/android/bg$a;

    const-string v1, "INTERRUPTED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcrittercism/android/bg$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/bg$a;->i:Lcrittercism/android/bg$a;

    .line 48
    const/16 v0, 0x9

    new-array v0, v0, [Lcrittercism/android/bg$a;

    sget-object v1, Lcrittercism/android/bg$a;->a:Lcrittercism/android/bg$a;

    aput-object v1, v0, v3

    sget-object v1, Lcrittercism/android/bg$a;->b:Lcrittercism/android/bg$a;

    aput-object v1, v0, v4

    sget-object v1, Lcrittercism/android/bg$a;->c:Lcrittercism/android/bg$a;

    aput-object v1, v0, v5

    sget-object v1, Lcrittercism/android/bg$a;->d:Lcrittercism/android/bg$a;

    aput-object v1, v0, v6

    sget-object v1, Lcrittercism/android/bg$a;->e:Lcrittercism/android/bg$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcrittercism/android/bg$a;->f:Lcrittercism/android/bg$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcrittercism/android/bg$a;->g:Lcrittercism/android/bg$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcrittercism/android/bg$a;->h:Lcrittercism/android/bg$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcrittercism/android/bg$a;->i:Lcrittercism/android/bg$a;

    aput-object v2, v0, v1

    sput-object v0, Lcrittercism/android/bg$a;->j:[Lcrittercism/android/bg$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcrittercism/android/bg$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 48
    const-class v0, Lcrittercism/android/bg$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcrittercism/android/bg$a;

    return-object v0
.end method

.method public static values()[Lcrittercism/android/bg$a;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcrittercism/android/bg$a;->j:[Lcrittercism/android/bg$a;

    invoke-virtual {v0}, [Lcrittercism/android/bg$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcrittercism/android/bg$a;

    return-object v0
.end method
