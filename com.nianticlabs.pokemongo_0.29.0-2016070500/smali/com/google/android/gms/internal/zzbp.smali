.class public Lcom/google/android/gms/internal/zzbp;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbp$zza;
    }
.end annotation


# direct methods
.method static zza(IIJJJ)J
    .locals 8

    const-wide/32 v6, 0x7fffffff

    const-wide/32 v4, 0x4000ffff

    int-to-long v0, p0

    add-long/2addr v0, v6

    rem-long/2addr v0, v4

    mul-long/2addr v0, p4

    rem-long/2addr v0, v4

    add-long v2, p2, v4

    sub-long v0, v2, v0

    rem-long/2addr v0, v4

    mul-long/2addr v0, p6

    rem-long/2addr v0, v4

    int-to-long v2, p1

    add-long/2addr v2, v6

    rem-long/2addr v2, v4

    add-long/2addr v0, v2

    rem-long/2addr v0, v4

    return-wide v0
.end method

.method static zza(JI)J
    .locals 6

    const-wide/32 v4, 0x4000ffff

    if-nez p2, :cond_1

    const-wide/16 p0, 0x1

    :cond_0
    :goto_0
    return-wide p0

    :cond_1
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    rem-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_2

    mul-long v0, p0, p0

    rem-long/2addr v0, v4

    div-int/lit8 v2, p2, 0x2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzbp;->zza(JI)J

    move-result-wide v0

    rem-long p0, v0, v4

    goto :goto_0

    :cond_2
    mul-long v0, p0, p0

    rem-long/2addr v0, v4

    div-int/lit8 v2, p2, 0x2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzbp;->zza(JI)J

    move-result-wide v0

    rem-long/2addr v0, v4

    mul-long/2addr v0, p0

    rem-long p0, v0, v4

    goto :goto_0
.end method

.method static zza([Ljava/lang/String;II)Ljava/lang/String;
    .locals 3

    array-length v0, p0

    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    const-string v0, "Unable to construct shingle"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->e(Ljava/lang/String;)V

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    move v0, p1

    :goto_1
    add-int v2, p1, p2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static zza(IJLjava/lang/String;Ljava/util/PriorityQueue;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/String;",
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/google/android/gms/internal/zzbp$zza;",
            ">;)V"
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/internal/zzbp$zza;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/gms/internal/zzbp$zza;-><init>(JLjava/lang/String;)V

    invoke-virtual {p4}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    if-ne v0, p0, :cond_1

    invoke-virtual {p4}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbp$zza;

    iget-wide v2, v0, Lcom/google/android/gms/internal/zzbp$zza;->value:J

    iget-wide v4, v1, Lcom/google/android/gms/internal/zzbp$zza;->value:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p4, v1}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p4, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    invoke-virtual {p4}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    if-le v0, p0, :cond_0

    invoke-virtual {p4}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    goto :goto_0
.end method

.method public static zza([Ljava/lang/String;IILjava/util/PriorityQueue;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/google/android/gms/internal/zzbp$zza;",
            ">;)V"
        }
    .end annotation

    const-wide/32 v6, 0x1001fff

    const/4 v0, 0x0

    invoke-static {p0, v0, p2}, Lcom/google/android/gms/internal/zzbp;->zzb([Ljava/lang/String;II)J

    move-result-wide v2

    invoke-static {p0, v0, p2}, Lcom/google/android/gms/internal/zzbp;->zza([Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v2, v3, v0, p3}, Lcom/google/android/gms/internal/zzbp;->zza(IJLjava/lang/String;Ljava/util/PriorityQueue;)V

    add-int/lit8 v0, p2, -0x1

    invoke-static {v6, v7, v0}, Lcom/google/android/gms/internal/zzbp;->zza(JI)J

    move-result-wide v4

    const/4 v0, 0x1

    move v8, v0

    :goto_0
    array-length v0, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, 0x1

    if-ge v8, v0, :cond_0

    add-int/lit8 v0, v8, -0x1

    aget-object v0, p0, v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbn;->zzC(Ljava/lang/String;)I

    move-result v0

    add-int v1, v8, p2

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p0, v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbn;->zzC(Ljava/lang/String;)I

    move-result v1

    invoke-static/range {v0 .. v7}, Lcom/google/android/gms/internal/zzbp;->zza(IIJJJ)J

    move-result-wide v2

    invoke-static {p0, v8, p2}, Lcom/google/android/gms/internal/zzbp;->zza([Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v2, v3, v0, p3}, Lcom/google/android/gms/internal/zzbp;->zza(IJLjava/lang/String;Ljava/util/PriorityQueue;)V

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static zzb([Ljava/lang/String;II)J
    .locals 10

    const-wide/32 v8, 0x7fffffff

    const-wide/32 v6, 0x4000ffff

    aget-object v0, p0, p1

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbn;->zzC(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, v8

    rem-long v2, v0, v6

    add-int/lit8 v0, p1, 0x1

    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    const-wide/32 v4, 0x1001fff

    mul-long/2addr v2, v4

    rem-long/2addr v2, v6

    aget-object v1, p0, v0

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbn;->zzC(Ljava/lang/String;)I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v4, v8

    rem-long/2addr v4, v6

    add-long/2addr v2, v4

    rem-long/2addr v2, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method
