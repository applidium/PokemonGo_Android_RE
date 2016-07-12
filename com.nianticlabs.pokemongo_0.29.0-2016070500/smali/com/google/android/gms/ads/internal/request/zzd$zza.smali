.class public final Lcom/google/android/gms/ads/internal/request/zzd$zza;
.super Lcom/google/android/gms/ads/internal/request/zzd;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/request/zzd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/zzc$zza;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/ads/internal/request/zzd;-><init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/zzc$zza;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/zzd$zza;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public zzfH()V
    .locals 0

    return-void
.end method

.method public zzfI()Lcom/google/android/gms/ads/internal/request/zzj;
    .locals 3

    new-instance v1, Lcom/google/android/gms/internal/zzbr;

    sget-object v0, Lcom/google/android/gms/internal/zzby;->zzul:Lcom/google/android/gms/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbu;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzbr;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzd$zza;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/internal/zzgs;->zzfQ()Lcom/google/android/gms/internal/zzgs;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzgt;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzbr;Lcom/google/android/gms/internal/zzgs;)Lcom/google/android/gms/internal/zzgt;

    move-result-object v0

    return-object v0
.end method
