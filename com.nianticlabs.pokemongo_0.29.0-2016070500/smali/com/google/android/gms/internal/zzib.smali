.class public final Lcom/google/android/gms/internal/zzib;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzib$zza;,
        Lcom/google/android/gms/internal/zzib$zzb;
    }
.end annotation


# direct methods
.method static synthetic zzG(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/zzib;->zzv(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static zza(Landroid/content/Context;I)Ljava/util/concurrent/Future;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzib$3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzib$3;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzib$3;->zzgz()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzib$zzb;)Ljava/util/concurrent/Future;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzib$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzib$2;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzib$zzb;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzib$2;->zzgz()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public static zza(Landroid/content/Context;Z)Ljava/util/concurrent/Future;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzib$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzib$1;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzib$1;->zzgz()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public static zzb(Landroid/content/Context;Lcom/google/android/gms/internal/zzib$zzb;)Ljava/util/concurrent/Future;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzib$4;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzib$4;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzib$zzb;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzib$4;->zzgz()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method private static zzv(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "admob"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
