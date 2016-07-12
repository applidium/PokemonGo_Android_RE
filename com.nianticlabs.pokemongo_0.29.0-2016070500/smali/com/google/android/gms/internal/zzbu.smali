.class public abstract Lcom/google/android/gms/internal/zzbu;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zzue:Ljava/lang/String;

.field private final zzuf:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbu;->zzue:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbu;->zzuf:Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbD()Lcom/google/android/gms/internal/zzbv;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzbv;->zza(Lcom/google/android/gms/internal/zzbu;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/internal/zzbu$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzbu;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static zzP(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbu;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/zzbu",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zzbu;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzbu;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbD()Lcom/google/android/gms/internal/zzbv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzbv;->zzb(Lcom/google/android/gms/internal/zzbu;)V

    return-object v0
.end method

.method public static zzQ(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbu;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/zzbu",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zzbu;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzbu;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbD()Lcom/google/android/gms/internal/zzbv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzbv;->zzc(Lcom/google/android/gms/internal/zzbu;)V

    return-object v0
.end method

.method public static zza(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzbu;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/internal/zzbu",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbu$2;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzbu$2;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static zza(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/zzbu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/google/android/gms/internal/zzbu",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbu$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzbu$1;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public static zzb(Ljava/lang/String;J)Lcom/google/android/gms/internal/zzbu;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lcom/google/android/gms/internal/zzbu",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbu$3;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzbu$3;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method public static zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzbu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/zzbu",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbu$4;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzbu$4;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbE()Lcom/google/android/gms/internal/zzbx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzbx;->zzd(Lcom/google/android/gms/internal/zzbu;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbu;->zzue:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract zza(Landroid/content/SharedPreferences;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            ")TT;"
        }
    .end annotation
.end method

.method public zzde()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbu;->zzuf:Ljava/lang/Object;

    return-object v0
.end method
