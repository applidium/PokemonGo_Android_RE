.class public final enum Lcrittercism/android/b;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcrittercism/android/b;

.field public static final enum b:Lcrittercism/android/b;

.field public static final enum c:Lcrittercism/android/b;

.field public static final enum d:Lcrittercism/android/b;

.field private static e:Landroid/util/SparseArray;

.field private static final synthetic g:[Lcrittercism/android/b;


# instance fields
.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcrittercism/android/b;

    const-string v1, "MOBILE"

    invoke-direct {v0, v1, v2, v2}, Lcrittercism/android/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcrittercism/android/b;->a:Lcrittercism/android/b;

    .line 10
    new-instance v0, Lcrittercism/android/b;

    const-string v1, "WIFI"

    invoke-direct {v0, v1, v3, v3}, Lcrittercism/android/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcrittercism/android/b;->b:Lcrittercism/android/b;

    .line 11
    new-instance v0, Lcrittercism/android/b;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4, v4}, Lcrittercism/android/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcrittercism/android/b;->c:Lcrittercism/android/b;

    .line 12
    new-instance v0, Lcrittercism/android/b;

    const-string v1, "NOT_CONNECTED"

    invoke-direct {v0, v1, v5, v5}, Lcrittercism/android/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcrittercism/android/b;->d:Lcrittercism/android/b;

    .line 8
    const/4 v0, 0x4

    new-array v0, v0, [Lcrittercism/android/b;

    sget-object v1, Lcrittercism/android/b;->a:Lcrittercism/android/b;

    aput-object v1, v0, v2

    sget-object v1, Lcrittercism/android/b;->b:Lcrittercism/android/b;

    aput-object v1, v0, v3

    sget-object v1, Lcrittercism/android/b;->c:Lcrittercism/android/b;

    aput-object v1, v0, v4

    sget-object v1, Lcrittercism/android/b;->d:Lcrittercism/android/b;

    aput-object v1, v0, v5

    sput-object v0, Lcrittercism/android/b;->g:[Lcrittercism/android/b;

    .line 17
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 18
    sput-object v0, Lcrittercism/android/b;->e:Landroid/util/SparseArray;

    sget-object v1, Lcrittercism/android/b;->a:Lcrittercism/android/b;

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    sget-object v0, Lcrittercism/android/b;->e:Landroid/util/SparseArray;

    sget-object v1, Lcrittercism/android/b;->b:Lcrittercism/android/b;

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 20
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput p3, p0, Lcrittercism/android/b;->f:I

    .line 26
    return-void
.end method

.method public static a(I)Lcrittercism/android/b;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcrittercism/android/b;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/b;

    .line 35
    if-nez v0, :cond_0

    .line 36
    sget-object v0, Lcrittercism/android/b;->c:Lcrittercism/android/b;

    .line 39
    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcrittercism/android/b;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcrittercism/android/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcrittercism/android/b;

    return-object v0
.end method

.method public static values()[Lcrittercism/android/b;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcrittercism/android/b;->g:[Lcrittercism/android/b;

    invoke-virtual {v0}, [Lcrittercism/android/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcrittercism/android/b;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcrittercism/android/b;->f:I

    return v0
.end method
