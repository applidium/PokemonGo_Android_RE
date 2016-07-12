.class public final Lcom/google/android/gms/internal/zzsh;
.super Ljava/lang/Object;


# static fields
.field public static final zzbiA:[D

.field public static final zzbiB:[Z

.field public static final zzbiC:[Ljava/lang/String;

.field public static final zzbiD:[[B

.field public static final zzbiE:[B

.field public static final zzbix:[I

.field public static final zzbiy:[J

.field public static final zzbiz:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-array v0, v1, [I

    sput-object v0, Lcom/google/android/gms/internal/zzsh;->zzbix:[I

    new-array v0, v1, [J

    sput-object v0, Lcom/google/android/gms/internal/zzsh;->zzbiy:[J

    new-array v0, v1, [F

    sput-object v0, Lcom/google/android/gms/internal/zzsh;->zzbiz:[F

    new-array v0, v1, [D

    sput-object v0, Lcom/google/android/gms/internal/zzsh;->zzbiA:[D

    new-array v0, v1, [Z

    sput-object v0, Lcom/google/android/gms/internal/zzsh;->zzbiB:[Z

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/zzsh;->zzbiC:[Ljava/lang/String;

    new-array v0, v1, [[B

    sput-object v0, Lcom/google/android/gms/internal/zzsh;->zzbiD:[[B

    new-array v0, v1, [B

    sput-object v0, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    return-void
.end method

.method static zzD(II)I
    .locals 1

    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/zzrw;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzrw;->zzlA(I)Z

    move-result v0

    return v0
.end method

.method public static final zzc(Lcom/google/android/gms/internal/zzrw;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrw;->getPosition()I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzrw;->zzlA(I)Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrw;->zzFo()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzrw;->zzlA(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzrw;->zzlE(I)V

    return v0
.end method

.method static zzlU(I)I
    .locals 1

    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method public static zzlV(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x3

    return v0
.end method
