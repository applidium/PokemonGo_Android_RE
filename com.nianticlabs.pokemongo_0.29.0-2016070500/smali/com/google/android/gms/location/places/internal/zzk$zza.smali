.class public Lcom/google/android/gms/location/places/internal/zzk$zza;
.super Lcom/google/android/gms/common/api/Api$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/places/internal/zzk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/Api$zza",
        "<",
        "Lcom/google/android/gms/location/places/internal/zzk;",
        "Lcom/google/android/gms/location/places/PlacesOptions;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzaHd:Ljava/lang/String;

.field private final zzaHe:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/Api$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/zzk$zza;->zzaHd:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/location/places/internal/zzk$zza;->zzaHe:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public synthetic zza(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$zzb;
    .locals 7

    move-object v4, p4

    check-cast v4, Lcom/google/android/gms/location/places/PlacesOptions;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/location/places/internal/zzk$zza;->zzb(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/location/places/PlacesOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/location/places/internal/zzk;

    move-result-object v0

    return-object v0
.end method

.method public zzb(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/location/places/PlacesOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/location/places/internal/zzk;
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/zzk$zza;->zzaHd:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v6, p0, Lcom/google/android/gms/location/places/internal/zzk$zza;->zzaHd:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/zzk$zza;->zzaHe:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v7, p0, Lcom/google/android/gms/location/places/internal/zzk$zza;->zzaHe:Ljava/lang/String;

    :goto_1
    if-nez p4, :cond_2

    new-instance v0, Lcom/google/android/gms/location/places/PlacesOptions$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/PlacesOptions$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/PlacesOptions$Builder;->build()Lcom/google/android/gms/location/places/PlacesOptions;

    move-result-object v8

    :goto_2
    new-instance v0, Lcom/google/android/gms/location/places/internal/zzk;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/location/places/internal/zzk;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/location/places/PlacesOptions;)V

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_2
    move-object v8, p4

    goto :goto_2
.end method
