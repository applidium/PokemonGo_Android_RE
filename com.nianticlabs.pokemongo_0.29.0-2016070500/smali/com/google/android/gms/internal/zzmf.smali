.class public Lcom/google/android/gms/internal/zzmf;
.super Ljava/lang/Object;


# static fields
.field public static final EMPTY_INTS:[I

.field public static final EMPTY_LONGS:[J

.field public static final EMPTY_OBJECTS:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-array v0, v1, [I

    sput-object v0, Lcom/google/android/gms/internal/zzmf;->EMPTY_INTS:[I

    new-array v0, v1, [J

    sput-object v0, Lcom/google/android/gms/internal/zzmf;->EMPTY_LONGS:[J

    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Lcom/google/android/gms/internal/zzmf;->EMPTY_OBJECTS:[Ljava/lang/Object;

    return-void
.end method

.method public static binarySearch([III)I
    .locals 4
    .param p0, "array"    # [I
    .param p1, "size"    # I
    .param p2, "value"    # I

    .prologue
    const/4 v1, 0x0

    add-int/lit8 v0, p1, -0x1

    :goto_0
    if-gt v1, v0, :cond_2

    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    aget v3, p0, v2

    if-ge v3, p2, :cond_0

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_0
    if-le v3, p2, :cond_1

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_1
    return v0

    :cond_2
    xor-int/lit8 v0, v1, -0x1

    goto :goto_1
.end method

.method public static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
