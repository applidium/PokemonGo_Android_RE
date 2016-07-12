.class Lcom/google/android/gms/internal/zzv$zzb;
.super Ljava/io/FilterInputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zzb"
.end annotation


# instance fields
.field private zzaC:I


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzv$zzb;->zzaC:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/InputStream;Lcom/google/android/gms/internal/zzv$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzv$zzb;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzv$zzb;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzv$zzb;->zzaC:I

    return v0
.end method


# virtual methods
.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/zzv$zzb;->zzaC:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/zzv$zzb;->zzaC:I

    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/zzv$zzb;->zzaC:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/zzv$zzb;->zzaC:I

    :cond_0
    return v0
.end method
