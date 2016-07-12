.class public Lcom/google/android/gms/location/places/internal/zzk;
.super Lcom/google/android/gms/common/internal/zzj;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/location/places/internal/zzk$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzj",
        "<",
        "Lcom/google/android/gms/location/places/internal/zzf;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzaHb:Lcom/google/android/gms/location/places/internal/PlacesParams;

.field private final zzaHc:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/location/places/PlacesOptions;)V
    .locals 7

    const/16 v3, 0x43

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzj;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/location/places/internal/zzk;->zzaHc:Ljava/util/Locale;

    const/4 v3, 0x0

    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/zzf;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/zzf;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    :cond_0
    new-instance v0, Lcom/google/android/gms/location/places/internal/PlacesParams;

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/zzk;->zzaHc:Ljava/util/Locale;

    iget-object v4, p8, Lcom/google/android/gms/location/places/PlacesOptions;->zzaGG:Ljava/lang/String;

    move-object v1, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/location/places/internal/PlacesParams;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/location/places/internal/zzk;->zzaHb:Lcom/google/android/gms/location/places/internal/PlacesParams;

    return-void
.end method


# virtual methods
.method protected synthetic zzW(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/zzk;->zzci(Landroid/os/IBinder;)Lcom/google/android/gms/location/places/internal/zzf;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/location/places/zzl;Lcom/google/android/gms/location/places/PlaceFilter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-static {}, Lcom/google/android/gms/location/places/PlaceFilter;->zzwT()Lcom/google/android/gms/location/places/PlaceFilter;

    move-result-object p2

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzk;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/internal/zzf;

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/zzk;->zzaHb:Lcom/google/android/gms/location/places/internal/PlacesParams;

    invoke-interface {v0, p2, v1, p1}, Lcom/google/android/gms/location/places/internal/zzf;->zza(Lcom/google/android/gms/location/places/PlaceFilter;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/gms/location/places/internal/zzi;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/location/places/zzl;Lcom/google/android/gms/location/places/PlaceReport;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzk;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/internal/zzf;

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/zzk;->zzaHb:Lcom/google/android/gms/location/places/internal/PlacesParams;

    invoke-interface {v0, p2, v1, p1}, Lcom/google/android/gms/location/places/internal/zzf;->zza(Lcom/google/android/gms/location/places/PlaceReport;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/gms/location/places/internal/zzi;)V

    return-void
.end method

.method protected zzci(Landroid/os/IBinder;)Lcom/google/android/gms/location/places/internal/zzf;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/location/places/internal/zzf$zza;->zzce(Landroid/os/IBinder;)Lcom/google/android/gms/location/places/internal/zzf;

    move-result-object v0

    return-object v0
.end method

.method protected zzfK()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.location.places.PlaceDetectionApi"

    return-object v0
.end method

.method protected zzfL()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.location.places.internal.IGooglePlaceDetectionService"

    return-object v0
.end method
