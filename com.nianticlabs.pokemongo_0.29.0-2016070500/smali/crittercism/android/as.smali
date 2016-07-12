.class public final Lcrittercism/android/as;
.super Lcrittercism/android/af;


# static fields
.field public static final d:Lcrittercism/android/as;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcrittercism/android/as;

    invoke-direct {v0}, Lcrittercism/android/as;-><init>()V

    sput-object v0, Lcrittercism/android/as;->d:Lcrittercism/android/as;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcrittercism/android/af;-><init>(Lcrittercism/android/al;)V

    .line 19
    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcrittercism/android/as;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcrittercism/android/as;->c:I

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lorg/apache/http/util/CharArrayBuffer;)Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public final b([BII)I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcrittercism/android/as;->c:I

    add-int/2addr v0, p3

    iput v0, p0, Lcrittercism/android/as;->c:I

    .line 30
    const/4 v0, -0x1

    return v0
.end method

.method public final b()Lcrittercism/android/af;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public final c()Lcrittercism/android/af;
    .locals 0

    .prologue
    .line 40
    return-object p0
.end method

.method protected final d()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method protected final e()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method
