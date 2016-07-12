.class public final Lcom/google/android/gms/internal/zzsi$zzd;
.super Lcom/google/android/gms/internal/zzry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzsi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzry",
        "<",
        "Lcom/google/android/gms/internal/zzsi$zzd;",
        ">;"
    }
.end annotation


# instance fields
.field public tag:Ljava/lang/String;

.field public zzbiO:J

.field public zzbiP:J

.field public zzbiQ:I

.field public zzbiR:I

.field public zzbiS:Z

.field public zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

.field public zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

.field public zzbiV:[B

.field public zzbiW:[B

.field public zzbiX:[B

.field public zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

.field public zzbiZ:Ljava/lang/String;

.field public zzbja:J

.field public zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

.field public zzbjc:[B

.field public zzbjd:I

.field public zzbje:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzry;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsi$zzd;->zzFV()Lcom/google/android/gms/internal/zzsi$zzd;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    move v0, v1

    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/zzsi$zzd;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zzsi$zzd;

    .end local p1    # "o":Ljava/lang/Object;
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiO:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiO:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiP:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiP:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->tag:Ljava/lang/String;

    if-nez v2, :cond_9

    iget-object v2, p1, Lcom/google/android/gms/internal/zzsi$zzd;->tag:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_2
    iget v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiQ:I

    iget v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiQ:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiR:I

    iget v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiR:I

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiS:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiS:Z

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzsc;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    if-nez v2, :cond_a

    iget-object v2, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    if-nez v2, :cond_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiV:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiV:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiW:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiW:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiX:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiX:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    if-nez v2, :cond_b

    iget-object v2, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    if-nez v2, :cond_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiZ:Ljava/lang/String;

    if-nez v2, :cond_c

    iget-object v2, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiZ:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_5
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbja:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbja:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    if-nez v2, :cond_d

    iget-object v2, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    if-nez v2, :cond_0

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjc:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjc:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjd:I

    iget v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjd:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzsc;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_7
    iget-object v2, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz v2, :cond_8

    iget-object v2, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_8
    move v0, v1

    goto/16 :goto_0

    :cond_9
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->tag:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    :cond_a
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzsi$zzb;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_0

    :cond_b
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzsi$zza;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto/16 :goto_0

    :cond_c
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiZ:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiZ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto/16 :goto_0

    :cond_d
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzsi$zzc;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbik:Lcom/google/android/gms/internal/zzsa;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzsa;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 7

    const/16 v6, 0x20

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiO:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiO:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiP:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiP:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->tag:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiQ:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiR:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiS:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x4cf

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzsc;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiV:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiW:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiX:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    if-nez v0, :cond_4

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiZ:Ljava/lang/String;

    if-nez v0, :cond_5

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbja:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbja:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    if-nez v0, :cond_6

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjc:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjd:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    invoke-static {v2}, Lcom/google/android/gms/internal/zzsc;->hashCode([I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_0
    :goto_6
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->tag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0x4d5

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsi$zzb;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsi$zza;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiZ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsi$zzc;->hashCode()I

    move-result v0

    goto :goto_5

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsa;->hashCode()I

    move-result v1

    goto :goto_6
.end method

.method protected zzB()I
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzry;->zzB()I

    move-result v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiO:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiO:J

    invoke-static {v2, v4, v5}, Lcom/google/android/gms/internal/zzrx;->zzd(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->tag:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->tag:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzrx;->zzn(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    array-length v2, v2

    if-lez v2, :cond_4

    move v2, v0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    aget-object v3, v3, v0

    if-eqz v3, :cond_2

    const/4 v4, 0x3

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/zzrx;->zzc(ILcom/google/android/gms/internal/zzse;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiV:[B

    sget-object v3, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiV:[B

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzrx;->zzb(I[B)I

    move-result v2

    add-int/2addr v0, v2

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    if-eqz v2, :cond_6

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzrx;->zzc(ILcom/google/android/gms/internal/zzse;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiW:[B

    sget-object v3, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_7

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiW:[B

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzrx;->zzb(I[B)I

    move-result v2

    add-int/2addr v0, v2

    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    if-eqz v2, :cond_8

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzrx;->zzc(ILcom/google/android/gms/internal/zzse;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_8
    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiS:Z

    if-eqz v2, :cond_9

    const/16 v2, 0xa

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiS:Z

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzrx;->zzc(IZ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_9
    iget v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiQ:I

    if-eqz v2, :cond_a

    const/16 v2, 0xb

    iget v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiQ:I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzrx;->zzA(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_a
    iget v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiR:I

    if-eqz v2, :cond_b

    const/16 v2, 0xc

    iget v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiR:I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzrx;->zzA(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_b
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiX:[B

    sget-object v3, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_c

    const/16 v2, 0xd

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiX:[B

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzrx;->zzb(I[B)I

    move-result v2

    add-int/2addr v0, v2

    :cond_c
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiZ:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const/16 v2, 0xe

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiZ:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzrx;->zzn(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_d
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbja:J

    const-wide/32 v4, 0x2bf20

    cmp-long v2, v2, v4

    if-eqz v2, :cond_e

    const/16 v2, 0xf

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbja:J

    invoke-static {v2, v4, v5}, Lcom/google/android/gms/internal/zzrx;->zze(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_e
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    if-eqz v2, :cond_f

    const/16 v2, 0x10

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzrx;->zzc(ILcom/google/android/gms/internal/zzse;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_f
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiP:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_10

    const/16 v2, 0x11

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiP:J

    invoke-static {v2, v4, v5}, Lcom/google/android/gms/internal/zzrx;->zzd(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_10
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjc:[B

    sget-object v3, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_11

    const/16 v2, 0x12

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjc:[B

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzrx;->zzb(I[B)I

    move-result v2

    add-int/2addr v0, v2

    :cond_11
    iget v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjd:I

    if-eqz v2, :cond_12

    const/16 v2, 0x13

    iget v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjd:I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzrx;->zzA(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_12
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    array-length v2, v2

    if-lez v2, :cond_14

    move v2, v1

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    array-length v3, v3

    if-ge v1, v3, :cond_13

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    aget v3, v3, v1

    invoke-static {v3}, Lcom/google/android/gms/internal/zzrx;->zzlJ(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_13
    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    :cond_14
    return v0
.end method

.method public zzFV()Lcom/google/android/gms/internal/zzsi$zzd;
    .locals 4

    const-wide/16 v0, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiO:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiP:J

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->tag:Ljava/lang/String;

    iput v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiQ:I

    iput v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiR:I

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiS:Z

    invoke-static {}, Lcom/google/android/gms/internal/zzsi$zze;->zzFW()[Lcom/google/android/gms/internal/zzsi$zze;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    iput-object v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    sget-object v0, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiV:[B

    sget-object v0, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiW:[B

    sget-object v0, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiX:[B

    iput-object v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiZ:Ljava/lang/String;

    const-wide/32 v0, 0x2bf20

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbja:J

    iput-object v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    sget-object v0, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjc:[B

    iput v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjd:I

    sget-object v0, Lcom/google/android/gms/internal/zzsh;->zzbix:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    iput-object v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbik:Lcom/google/android/gms/internal/zzsa;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiv:I

    return-object p0
.end method

.method public zzJ(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzsi$zzd;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFo()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzsi$zzd;->zza(Lcom/google/android/gms/internal/zzrw;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFq()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiO:J

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->tag:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzsh;->zzc(Lcom/google/android/gms/internal/zzrw;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/zzsi$zze;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/google/android/gms/internal/zzsi$zze;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzsi$zze;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzrw;->zza(Lcom/google/android/gms/internal/zzse;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFo()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/android/gms/internal/zzsi$zze;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzsi$zze;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrw;->zza(Lcom/google/android/gms/internal/zzse;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiV:[B

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/zzsi$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzsi$zza;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrw;->zza(Lcom/google/android/gms/internal/zzse;)V

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiW:[B

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    if-nez v0, :cond_5

    new-instance v0, Lcom/google/android/gms/internal/zzsi$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzsi$zzb;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrw;->zza(Lcom/google/android/gms/internal/zzse;)V

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFs()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiS:Z

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFr()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiQ:I

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFr()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiR:I

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiX:[B

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiZ:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFu()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbja:J

    goto/16 :goto_0

    :sswitch_e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    if-nez v0, :cond_6

    new-instance v0, Lcom/google/android/gms/internal/zzsi$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzsi$zzc;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrw;->zza(Lcom/google/android/gms/internal/zzse;)V

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFq()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiP:J

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjc:[B

    goto/16 :goto_0

    :sswitch_11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFr()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iput v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjd:I

    goto/16 :goto_0

    :sswitch_12
    const/16 v0, 0xa0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzsh;->zzc(Lcom/google/android/gms/internal/zzrw;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    if-nez v0, :cond_8

    move v0, v1

    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [I

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFr()I

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFo()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    array-length v0, v0

    goto :goto_3

    :cond_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFr()I

    move-result v3

    aput v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    goto/16 :goto_0

    :sswitch_13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFv()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrw;->zzlC(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->getPosition()I

    move-result v2

    move v0, v1

    :goto_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFA()I

    move-result v4

    if-lez v4, :cond_a

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFr()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_a
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzrw;->zzlE(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    if-nez v2, :cond_c

    move v2, v1

    :goto_6
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-eqz v2, :cond_b

    iget-object v4, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_b
    :goto_7
    array-length v4, v0

    if-ge v2, v4, :cond_d

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFr()I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_c
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    array-length v2, v2

    goto :goto_6

    :cond_d
    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzrw;->zzlD(I)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x32 -> :sswitch_4
        0x3a -> :sswitch_5
        0x42 -> :sswitch_6
        0x4a -> :sswitch_7
        0x50 -> :sswitch_8
        0x58 -> :sswitch_9
        0x60 -> :sswitch_a
        0x6a -> :sswitch_b
        0x72 -> :sswitch_c
        0x78 -> :sswitch_d
        0x82 -> :sswitch_e
        0x88 -> :sswitch_f
        0x92 -> :sswitch_10
        0x98 -> :sswitch_11
        0xa0 -> :sswitch_12
        0xa2 -> :sswitch_13
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public zza(Lcom/google/android/gms/internal/zzrx;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiO:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiO:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzrx;->zzb(IJ)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->tag:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzrx;->zzb(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/zzrx;->zza(ILcom/google/android/gms/internal/zzse;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiV:[B

    sget-object v2, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiV:[B

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzrx;->zza(I[B)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    if-eqz v0, :cond_5

    const/4 v0, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzrx;->zza(ILcom/google/android/gms/internal/zzse;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiW:[B

    sget-object v2, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v0, 0x8

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiW:[B

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzrx;->zza(I[B)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    if-eqz v0, :cond_7

    const/16 v0, 0x9

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzrx;->zza(ILcom/google/android/gms/internal/zzse;)V

    :cond_7
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiS:Z

    if-eqz v0, :cond_8

    const/16 v0, 0xa

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiS:Z

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzrx;->zzb(IZ)V

    :cond_8
    iget v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiQ:I

    if-eqz v0, :cond_9

    const/16 v0, 0xb

    iget v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiQ:I

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzrx;->zzy(II)V

    :cond_9
    iget v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiR:I

    if-eqz v0, :cond_a

    const/16 v0, 0xc

    iget v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiR:I

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzrx;->zzy(II)V

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiX:[B

    sget-object v2, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0xd

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiX:[B

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzrx;->zza(I[B)V

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiZ:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const/16 v0, 0xe

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiZ:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzrx;->zzb(ILjava/lang/String;)V

    :cond_c
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbja:J

    const-wide/32 v4, 0x2bf20

    cmp-long v0, v2, v4

    if-eqz v0, :cond_d

    const/16 v0, 0xf

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbja:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzrx;->zzc(IJ)V

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    if-eqz v0, :cond_e

    const/16 v0, 0x10

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzrx;->zza(ILcom/google/android/gms/internal/zzse;)V

    :cond_e
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiP:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_f

    const/16 v0, 0x11

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiP:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzrx;->zzb(IJ)V

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjc:[B

    sget-object v2, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_10

    const/16 v0, 0x12

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjc:[B

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzrx;->zza(I[B)V

    :cond_10
    iget v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjd:I

    if-eqz v0, :cond_11

    const/16 v0, 0x13

    iget v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjd:I

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzrx;->zzy(II)V

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    array-length v0, v0

    if-lez v0, :cond_12

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    array-length v0, v0

    if-ge v1, v0, :cond_12

    const/16 v0, 0x14

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    aget v2, v2, v1

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzrx;->zzy(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_12
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzry;->zza(Lcom/google/android/gms/internal/zzrx;)V

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzsi$zzd;->zzJ(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzsi$zzd;

    move-result-object v0

    return-object v0
.end method
