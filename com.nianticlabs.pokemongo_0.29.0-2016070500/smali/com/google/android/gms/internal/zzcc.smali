.class public Lcom/google/android/gms/internal/zzcc;
.super Ljava/lang/Object;


# direct methods
.method public static zza(Lcom/google/android/gms/internal/zzcg;J)Lcom/google/android/gms/internal/zzce;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzcg;->zzb(J)Lcom/google/android/gms/internal/zzce;

    move-result-object v0

    goto :goto_0
.end method

.method public static varargs zza(Lcom/google/android/gms/internal/zzcg;Lcom/google/android/gms/internal/zzce;J[Ljava/lang/String;)Z
    .locals 2

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzcg;->zza(Lcom/google/android/gms/internal/zzce;J[Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static varargs zza(Lcom/google/android/gms/internal/zzcg;Lcom/google/android/gms/internal/zzce;[Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzcg;->zza(Lcom/google/android/gms/internal/zzce;[Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static zzb(Lcom/google/android/gms/internal/zzcg;)Lcom/google/android/gms/internal/zzce;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcg;->zzdn()Lcom/google/android/gms/internal/zzce;

    move-result-object v0

    goto :goto_0
.end method
