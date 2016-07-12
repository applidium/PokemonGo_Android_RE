.class public abstract Lcom/google/android/gms/location/places/internal/zzf$zza;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/location/places/internal/zzf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/places/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/location/places/internal/zzf$zza$zza;
    }
.end annotation


# direct methods
.method public static zzce(Landroid/os/IBinder;)Lcom/google/android/gms/location/places/internal/zzf;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.google.android.gms.location.places.internal.IGooglePlaceDetectionService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/location/places/internal/zzf;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/location/places/internal/zzf;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/location/places/internal/zzf$zza$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/location/places/internal/zzf$zza$zza;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const-string v0, "com.google.android.gms.location.places.internal.IGooglePlaceDetectionService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v4

    goto :goto_0

    :sswitch_1
    const-string v0, "com.google.android.gms.location.places.internal.IGooglePlaceDetectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/location/places/PlaceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/PlaceRequest;

    move-object v1, v0

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/location/places/internal/PlacesParams;->CREATOR:Lcom/google/android/gms/location/places/internal/zzt;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/places/internal/zzt;->zzeY(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v0

    move-object v3, v0

    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/location/places/internal/zzi$zza;->zzch(Landroid/os/IBinder;)Lcom/google/android/gms/location/places/internal/zzi;

    move-result-object v2

    invoke-virtual {p0, v1, v3, v0, v2}, Lcom/google/android/gms/location/places/internal/zzf$zza;->zza(Lcom/google/android/gms/location/places/PlaceRequest;Lcom/google/android/gms/location/places/internal/PlacesParams;Landroid/app/PendingIntent;Lcom/google/android/gms/location/places/internal/zzi;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v4

    goto :goto_0

    :cond_0
    move-object v1, v2

    goto :goto_1

    :cond_1
    move-object v3, v2

    goto :goto_2

    :cond_2
    move-object v0, v2

    goto :goto_3

    :sswitch_2
    const-string v0, "com.google.android.gms.location.places.internal.IGooglePlaceDetectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/android/gms/location/places/internal/PlacesParams;->CREATOR:Lcom/google/android/gms/location/places/internal/zzt;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/places/internal/zzt;->zzeY(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v0

    move-object v1, v0

    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/location/places/internal/zzi$zza;->zzch(Landroid/os/IBinder;)Lcom/google/android/gms/location/places/internal/zzi;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/google/android/gms/location/places/internal/zzf$zza;->zza(Lcom/google/android/gms/location/places/internal/PlacesParams;Landroid/app/PendingIntent;Lcom/google/android/gms/location/places/internal/zzi;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v4

    goto :goto_0

    :cond_3
    move-object v1, v2

    goto :goto_4

    :cond_4
    move-object v0, v2

    goto :goto_5

    :sswitch_3
    const-string v0, "com.google.android.gms.location.places.internal.IGooglePlaceDetectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->CREATOR:Lcom/google/android/gms/location/places/zze;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/places/zze;->zzeN(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/NearbyAlertRequest;

    move-result-object v0

    move-object v1, v0

    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/google/android/gms/location/places/internal/PlacesParams;->CREATOR:Lcom/google/android/gms/location/places/internal/zzt;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/places/internal/zzt;->zzeY(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v0

    move-object v3, v0

    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/location/places/internal/zzi$zza;->zzch(Landroid/os/IBinder;)Lcom/google/android/gms/location/places/internal/zzi;

    move-result-object v2

    invoke-virtual {p0, v1, v3, v0, v2}, Lcom/google/android/gms/location/places/internal/zzf$zza;->zza(Lcom/google/android/gms/location/places/NearbyAlertRequest;Lcom/google/android/gms/location/places/internal/PlacesParams;Landroid/app/PendingIntent;Lcom/google/android/gms/location/places/internal/zzi;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v4

    goto/16 :goto_0

    :cond_5
    move-object v1, v2

    goto :goto_6

    :cond_6
    move-object v3, v2

    goto :goto_7

    :cond_7
    move-object v0, v2

    goto :goto_8

    :sswitch_4
    const-string v0, "com.google.android.gms.location.places.internal.IGooglePlaceDetectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/google/android/gms/location/places/internal/PlacesParams;->CREATOR:Lcom/google/android/gms/location/places/internal/zzt;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/places/internal/zzt;->zzeY(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v0

    move-object v1, v0

    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/location/places/internal/zzi$zza;->zzch(Landroid/os/IBinder;)Lcom/google/android/gms/location/places/internal/zzi;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/google/android/gms/location/places/internal/zzf$zza;->zzb(Lcom/google/android/gms/location/places/internal/PlacesParams;Landroid/app/PendingIntent;Lcom/google/android/gms/location/places/internal/zzi;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v4

    goto/16 :goto_0

    :cond_8
    move-object v1, v2

    goto :goto_9

    :cond_9
    move-object v0, v2

    goto :goto_a

    :sswitch_5
    const-string v0, "com.google.android.gms.location.places.internal.IGooglePlaceDetectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/google/android/gms/location/places/PlaceFilter;->CREATOR:Lcom/google/android/gms/location/places/zzg;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/places/zzg;->zzeO(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/PlaceFilter;

    move-result-object v0

    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    sget-object v1, Lcom/google/android/gms/location/places/internal/PlacesParams;->CREATOR:Lcom/google/android/gms/location/places/internal/zzt;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/location/places/internal/zzt;->zzeY(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v2

    :cond_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/location/places/internal/zzi$zza;->zzch(Landroid/os/IBinder;)Lcom/google/android/gms/location/places/internal/zzi;

    move-result-object v1

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/gms/location/places/internal/zzf$zza;->zza(Lcom/google/android/gms/location/places/PlaceFilter;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/gms/location/places/internal/zzi;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v4

    goto/16 :goto_0

    :cond_b
    move-object v0, v2

    goto :goto_b

    :sswitch_6
    const-string v0, "com.google.android.gms.location.places.internal.IGooglePlaceDetectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/google/android/gms/location/places/PlaceReport;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/PlaceReport;

    :goto_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c

    sget-object v1, Lcom/google/android/gms/location/places/internal/PlacesParams;->CREATOR:Lcom/google/android/gms/location/places/internal/zzt;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/location/places/internal/zzt;->zzeY(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v2

    :cond_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/location/places/internal/zzi$zza;->zzch(Landroid/os/IBinder;)Lcom/google/android/gms/location/places/internal/zzi;

    move-result-object v1

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/gms/location/places/internal/zzf$zza;->zza(Lcom/google/android/gms/location/places/PlaceReport;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/gms/location/places/internal/zzi;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v4

    goto/16 :goto_0

    :cond_d
    move-object v0, v2

    goto :goto_c

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
