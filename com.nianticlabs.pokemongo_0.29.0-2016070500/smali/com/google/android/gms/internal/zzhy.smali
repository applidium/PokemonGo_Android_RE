.class public final Lcom/google/android/gms/internal/zzhy;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation


# static fields
.field private static zzIk:Ljava/lang/String;

.field private static final zzpy:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzhy;->zzpy:Ljava/lang/Object;

    return-void
.end method

.method public static zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/google/android/gms/internal/zzhy;->zzpy:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzhy;->zzIk:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzhy;->zzb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzhy;->zzIk:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static zzb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x3

    :try_start_0
    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-string v0, "com.google.ads.mediation.MediationAdapter"

    const/4 v2, 0x0

    invoke-static {v0, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    new-instance v0, Ljava/math/BigInteger;

    new-array v2, v8, [B

    invoke-direct {v0, v2}, Ljava/math/BigInteger;-><init>([B)V

    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move-object v2, v0

    move v0, v1

    :goto_0
    array-length v6, v5

    if-ge v0, v6, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbv()Lcom/google/android/gms/internal/zzid;

    move-result-object v6

    aget-object v7, v5, v0

    invoke-virtual {v6, v3, v4, v7}, Lcom/google/android/gms/internal/zzid;->zza(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "err"

    sput-object v0, Lcom/google/android/gms/internal/zzhy;->zzIk:Ljava/lang/String;

    :goto_1
    return-void

    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%X"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v2, v4, v1

    invoke-static {v0, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzhy;->zzIk:Ljava/lang/String;

    goto :goto_1
.end method

.method public static zzgy()Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/google/android/gms/internal/zzhy;->zzpy:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzhy;->zzIk:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
