.class public abstract Lcom/google/android/gms/internal/zzbl;
.super Ljava/lang/Object;


# static fields
.field private static zzso:Ljava/security/MessageDigest;


# instance fields
.field protected zzpd:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/zzbl;->zzso:Ljava/security/MessageDigest;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbl;->zzpd:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected zzcy()Ljava/security/MessageDigest;
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbl;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzbl;->zzso:Ljava/security/MessageDigest;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzbl;->zzso:Ljava/security/MessageDigest;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    :try_start_1
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/zzbl;->zzso:Ljava/security/MessageDigest;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :try_start_2
    sget-object v0, Lcom/google/android/gms/internal/zzbl;->zzso:Ljava/security/MessageDigest;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method abstract zzz(Ljava/lang/String;)[B
.end method
