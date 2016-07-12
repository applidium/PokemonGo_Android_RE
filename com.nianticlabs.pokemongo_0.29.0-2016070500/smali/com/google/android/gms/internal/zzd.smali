.class public Lcom/google/android/gms/internal/zzd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzo;


# instance fields
.field private zzo:I

.field private zzp:I

.field private final zzq:I

.field private final zzr:F


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x9c4

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzd;-><init>(IIF)V

    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzd;->zzo:I

    iput p2, p0, Lcom/google/android/gms/internal/zzd;->zzq:I

    iput p3, p0, Lcom/google/android/gms/internal/zzd;->zzr:F

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzr;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzr;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzd;->zzp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzd;->zzp:I

    iget v0, p0, Lcom/google/android/gms/internal/zzd;->zzo:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/gms/internal/zzd;->zzo:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/gms/internal/zzd;->zzr:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/gms/internal/zzd;->zzo:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzd;->zzf()Z

    move-result v0

    if-nez v0, :cond_0

    throw p1

    :cond_0
    return-void
.end method

.method public zzd()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzd;->zzo:I

    return v0
.end method

.method public zze()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzd;->zzp:I

    return v0
.end method

.method protected zzf()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzd;->zzp:I

    iget v1, p0, Lcom/google/android/gms/internal/zzd;->zzq:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
