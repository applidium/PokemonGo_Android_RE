.class public final Lcom/google/android/gms/internal/zzfy;
.super Lcom/google/android/gms/dynamic/zzg;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzfy$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/zzg",
        "<",
        "Lcom/google/android/gms/internal/zzfu;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzDb:Lcom/google/android/gms/internal/zzfy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzfy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzfy;->zzDb:Lcom/google/android/gms/internal/zzfy;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.InAppPurchaseManagerCreatorImpl"

    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/zzg;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static zzc(Landroid/app/Activity;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzfy$zza;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.google.android.gms.ads.internal.purchase.useClientJar"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzfy$zza;

    const-string v1, "InAppPurchaseManager requires the useClientJar flag in intent extras."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzfy$zza;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v1, "com.google.android.gms.ads.internal.purchase.useClientJar"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static zze(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzft;
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/zzfy;->zzc(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Using AdOverlay from the client jar."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaF(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/ads/internal/purchase/zze;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/purchase/zze;-><init>(Landroid/app/Activity;)V

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzfy;->zzDb:Lcom/google/android/gms/internal/zzfy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzfy;->zzf(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzft;
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzfy$zza; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfy$zza;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaH(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private zzf(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzft;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzy(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzfy;->zzas(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzfu;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzfu;->zzf(Lcom/google/android/gms/dynamic/zzd;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzft$zza;->zzQ(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzft;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/dynamic/zzg$zza; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "Could not create remote InAppPurchaseManager."

    invoke-static {v2, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "Could not create remote InAppPurchaseManager."

    invoke-static {v2, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected zzU(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzfu;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzfu$zza;->zzR(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzfu;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic zzd(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzfy;->zzU(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzfu;

    move-result-object v0

    return-object v0
.end method
