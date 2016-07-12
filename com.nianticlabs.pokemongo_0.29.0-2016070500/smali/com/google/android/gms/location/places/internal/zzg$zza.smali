.class public abstract Lcom/google/android/gms/location/places/internal/zzg$zza;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/location/places/internal/zzg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/places/internal/zzg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/location/places/internal/zzg$zza$zza;
    }
.end annotation


# direct methods
.method public static zzcf(Landroid/os/IBinder;)Lcom/google/android/gms/location/places/internal/zzg;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.google.android.gms.location.places.internal.IGooglePlacesService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/location/places/internal/zzg;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/location/places/internal/zzg;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/location/places/internal/zzg$zza$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/location/places/internal/zzg$zza$zza;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
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
    const/4 v7, 0x1

    const/4 v5, 0x0

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const-string v0, "com.google.android.gms.location.places.internal.IGooglePlacesService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v7

    goto :goto_0

    :sswitch_1
    const-string v0, "com.google.android.gms.location.places.internal.IGooglePlacesService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/maps/model/LatLngBounds;->CREATOR:Lcom/google/android/gms/maps/model/zzd;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/zzd;->zzfk(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v1

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/location/places/PlaceFilter;->CREATOR:Lcom/google/android/gms/location/places/zzg;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/places/zzg;->zzeO(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/PlaceFilter;

    move-result-object v4

    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/location/places/internal/PlacesParams;->CREATOR:Lcom/google/android/gms/location/places/internal/zzt;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/places/internal/zzt;->zzeY(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v5

    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/location/places/internal/zzi$zza;->zzch(Landroid/os/IBinder;)Lcom/google/android/gms/location/places/internal/zzi;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/location/places/internal/zzg$zza;->zza(Lcom/google/android/gms/maps/model/LatLngBounds;ILjava/lang/String;Lcom/google/android/gms/location/places/PlaceFilter;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/gms/location/places/internal/zzi;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto :goto_0

    :cond_1
    move-object v1, v5

    goto :goto_1

    :cond_2
    move-object v4, v5

    goto :goto_2

    :sswitch_2
    const-string v0, "com.google.android.gms.location.places.internal.IGooglePlacesService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/google/android/gms/location/places/internal/PlacesParams;->CREATOR:Lcom/google/android/gms/location/places/internal/zzt;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/location/places/internal/zzt;->zzeY(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v5

    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/location/places/internal/zzi$zza;->zzch(Landroid/os/IBinder;)Lcom/google/android/gms/location/places/internal/zzi;

    move-result-object v1

    invoke-virtual {p0, v0, v5, v1}, Lcom/google/android/gms/location/places/internal/zzg$zza;->zza(Ljava/lang/String;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/gms/location/places/internal/zzi;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto :goto_0

    :sswitch_3
    const-string v0, "com.google.android.gms.location.places.internal.IGooglePlacesService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/zze;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/zze;->zzfl(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/google/android/gms/location/places/PlaceFilter;->CREATOR:Lcom/google/android/gms/location/places/zzg;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/location/places/zzg;->zzeO(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/PlaceFilter;

    move-result-object v1

    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/google/android/gms/location/places/internal/PlacesParams;->CREATOR:Lcom/google/android/gms/location/places/internal/zzt;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/location/places/internal/zzt;->zzeY(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v5

    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/location/places/internal/zzi$zza;->zzch(Landroid/os/IBinder;)Lcom/google/android/gms/location/places/internal/zzi;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v5, v2}, Lcom/google/android/gms/location/places/internal/zzg$zza;->zza(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/location/places/PlaceFilter;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/gms/location/places/internal/zzi;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto/16 :goto_0

    :cond_5
    move-object v0, v5

    goto :goto_3

    :cond_6
    move-object v1, v5

    goto :goto_4

    :sswitch_4
    const-string v0, "com.google.android.gms.location.places.internal.IGooglePlacesService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/google/android/gms/location/places/PlaceFilter;->CREATOR:Lcom/google/android/gms/location/places/zzg;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/places/zzg;->zzeO(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/PlaceFilter;

    move-result-object v0

    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/google/android/gms/location/places/internal/PlacesParams;->CREATOR:Lcom/google/android/gms/location/places/internal/zzt;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/location/places/internal/zzt;->zzeY(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v5

    :cond_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/location/places/internal/zzi$zza;->zzch(Landroid/os/IBinder;)Lcom/google/android/gms/location/places/internal/zzi;

    move-result-object v1

    invoke-virtual {p0, v0, v5, v1}, Lcom/google/android/gms/location/places/internal/zzg$zza;->zzb(Lcom/google/android/gms/location/places/PlaceFilter;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/gms/location/places/internal/zzi;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto/16 :goto_0

    :cond_8
    move-object v0, v5

    goto :goto_5

    :sswitch_5
    const-string v0, "com.google.android.gms.location.places.internal.IGooglePlacesService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Lcom/google/android/gms/location/places/internal/PlacesParams;->CREATOR:Lcom/google/android/gms/location/places/internal/zzt;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/location/places/internal/zzt;->zzeY(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v5

    :cond_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/location/places/internal/zzi$zza;->zzch(Landroid/os/IBinder;)Lcom/google/android/gms/location/places/internal/zzi;

    move-result-object v1

    invoke-virtual {p0, v0, v5, v1}, Lcom/google/android/gms/location/places/internal/zzg$zza;->zzb(Ljava/lang/String;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/gms/location/places/internal/zzi;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "com.google.android.gms.location.places.internal.IGooglePlacesService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    sget-object v1, Lcom/google/android/gms/location/places/internal/PlacesParams;->CREATOR:Lcom/google/android/gms/location/places/internal/zzt;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/location/places/internal/zzt;->zzeY(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v5

    :cond_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/location/places/internal/zzi$zza;->zzch(Landroid/os/IBinder;)Lcom/google/android/gms/location/places/internal/zzi;

    move-result-object v1

    invoke-virtual {p0, v0, v5, v1}, Lcom/google/android/gms/location/places/internal/zzg$zza;->zza(Ljava/util/List;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/gms/location/places/internal/zzi;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "com.google.android.gms.location.places.internal.IGooglePlacesService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b

    sget-object v1, Lcom/google/android/gms/location/places/internal/PlacesParams;->CREATOR:Lcom/google/android/gms/location/places/internal/zzt;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/location/places/internal/zzt;->zzeY(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v5

    :cond_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/location/places/internal/zzi$zza;->zzch(Landroid/os/IBinder;)Lcom/google/android/gms/location/places/internal/zzi;

    move-result-object v1

    invoke-virtual {p0, v0, v5, v1}, Lcom/google/android/gms/location/places/internal/zzg$zza;->zzb(Ljava/util/List;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/gms/location/places/internal/zzi;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "com.google.android.gms.location.places.internal.IGooglePlacesService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/google/android/gms/location/places/UserDataType;->CREATOR:Lcom/google/android/gms/location/places/zzm;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/places/zzm;->zzeT(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/UserDataType;

    move-result-object v1

    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/google/android/gms/maps/model/LatLngBounds;->CREATOR:Lcom/google/android/gms/maps/model/zzd;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/zzd;->zzfk(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v2

    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/google/android/gms/location/places/internal/PlacesParams;->CREATOR:Lcom/google/android/gms/location/places/internal/zzt;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/places/internal/zzt;->zzeY(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v4

    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/location/places/internal/zzi$zza;->zzch(Landroid/os/IBinder;)Lcom/google/android/gms/location/places/internal/zzi;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/location/places/internal/zzg$zza;->zza(Lcom/google/android/gms/location/places/UserDataType;Lcom/google/android/gms/maps/model/LatLngBounds;Ljava/util/List;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/gms/location/places/internal/zzi;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto/16 :goto_0

    :cond_c
    move-object v1, v5

    goto :goto_6

    :cond_d
    move-object v2, v5

    goto :goto_7

    :cond_e
    move-object v4, v5

    goto :goto_8

    :sswitch_9
    const-string v0, "com.google.android.gms.location.places.internal.IGooglePlacesService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/google/android/gms/location/places/PlaceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/PlaceRequest;

    move-object v1, v0

    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/google/android/gms/location/places/internal/PlacesParams;->CREATOR:Lcom/google/android/gms/location/places/internal/zzt;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/places/internal/zzt;->zzeY(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v0

    move-object v2, v0

    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_b
    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/gms/location/places/internal/zzg$zza;->zza(Lcom/google/android/gms/location/places/PlaceRequest;Lcom/google/android/gms/location/places/internal/PlacesParams;Landroid/app/PendingIntent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto/16 :goto_0

    :cond_f
    move-object v1, v5

    goto :goto_9

    :cond_10
    move-object v2, v5

    goto :goto_a

    :cond_11
    move-object v0, v5

    goto :goto_b

    :sswitch_a
    const-string v0, "com.google.android.gms.location.places.internal.IGooglePlacesService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/google/android/gms/location/places/internal/PlacesParams;->CREATOR:Lcom/google/android/gms/location/places/internal/zzt;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/places/internal/zzt;->zzeY(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v0

    move-object v1, v0

    :goto_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_d
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/location/places/internal/zzg$zza;->zza(Lcom/google/android/gms/location/places/internal/PlacesParams;Landroid/app/PendingIntent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto/16 :goto_0

    :cond_12
    move-object v1, v5

    goto :goto_c

    :cond_13
    move-object v0, v5

    goto :goto_d

    :sswitch_b
    const-string v0, "com.google.android.gms.location.places.internal.IGooglePlacesService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->CREATOR:Lcom/google/android/gms/location/places/zze;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/places/zze;->zzeN(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/NearbyAlertRequest;

    move-result-object v0

    move-object v1, v0

    :goto_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lcom/google/android/gms/location/places/internal/PlacesParams;->CREATOR:Lcom/google/android/gms/location/places/internal/zzt;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/places/internal/zzt;->zzeY(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v0

    move-object v2, v0

    :goto_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_10
    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/gms/location/places/internal/zzg$zza;->zza(Lcom/google/android/gms/location/places/NearbyAlertRequest;Lcom/google/android/gms/location/places/internal/PlacesParams;Landroid/app/PendingIntent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto/16 :goto_0

    :cond_14
    move-object v1, v5

    goto :goto_e

    :cond_15
    move-object v2, v5

    goto :goto_f

    :cond_16
    move-object v0, v5

    goto :goto_10

    :sswitch_c
    const-string v0, "com.google.android.gms.location.places.internal.IGooglePlacesService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lcom/google/android/gms/location/places/internal/PlacesParams;->CREATOR:Lcom/google/android/gms/location/places/internal/zzt;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/places/internal/zzt;->zzeY(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v0

    move-object v1, v0

    :goto_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_12
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/location/places/internal/zzg$zza;->zzb(Lcom/google/android/gms/location/places/internal/PlacesParams;Landroid/app/PendingIntent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto/16 :goto_0

    :cond_17
    move-object v1, v5

    goto :goto_11

    :cond_18
    move-object v0, v5

    goto :goto_12

    :sswitch_d
    const-string v0, "com.google.android.gms.location.places.internal.IGooglePlacesService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Lcom/google/android/gms/maps/model/LatLngBounds;->CREATOR:Lcom/google/android/gms/maps/model/zzd;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/zzd;->zzfk(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v2

    :goto_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/google/android/gms/location/places/AutocompleteFilter;->CREATOR:Lcom/google/android/gms/location/places/zzc;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/places/zzc;->zzeL(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/AutocompleteFilter;

    move-result-object v3

    :goto_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/google/android/gms/location/places/internal/PlacesParams;->CREATOR:Lcom/google/android/gms/location/places/internal/zzt;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/places/internal/zzt;->zzeY(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v4

    :goto_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/location/places/internal/zzi$zza;->zzch(Landroid/os/IBinder;)Lcom/google/android/gms/location/places/internal/zzi;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/location/places/internal/zzg$zza;->zza(Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLngBounds;Lcom/google/android/gms/location/places/AutocompleteFilter;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/gms/location/places/internal/zzi;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto/16 :goto_0

    :cond_19
    move-object v2, v5

    goto :goto_13

    :cond_1a
    move-object v3, v5

    goto :goto_14

    :cond_1b
    move-object v4, v5

    goto :goto_15

    :sswitch_e
    const-string v0, "com.google.android.gms.location.places.internal.IGooglePlacesService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/google/android/gms/location/places/AddPlaceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/AddPlaceRequest;

    :goto_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1c

    sget-object v1, Lcom/google/android/gms/location/places/internal/PlacesParams;->CREATOR:Lcom/google/android/gms/location/places/internal/zzt;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/location/places/internal/zzt;->zzeY(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v5

    :cond_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/location/places/internal/zzi$zza;->zzch(Landroid/os/IBinder;)Lcom/google/android/gms/location/places/internal/zzi;

    move-result-object v1

    invoke-virtual {p0, v0, v5, v1}, Lcom/google/android/gms/location/places/internal/zzg$zza;->zza(Lcom/google/android/gms/location/places/AddPlaceRequest;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/gms/location/places/internal/zzi;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto/16 :goto_0

    :cond_1d
    move-object v0, v5

    goto :goto_16

    :sswitch_f
    const-string v0, "com.google.android.gms.location.places.internal.IGooglePlacesService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/google/android/gms/location/places/PlaceReport;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/PlaceReport;

    :goto_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1e

    sget-object v1, Lcom/google/android/gms/location/places/internal/PlacesParams;->CREATOR:Lcom/google/android/gms/location/places/internal/zzt;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/location/places/internal/zzt;->zzeY(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v5

    :cond_1e
    invoke-virtual {p0, v0, v5}, Lcom/google/android/gms/location/places/internal/zzg$zza;->zza(Lcom/google/android/gms/location/places/PlaceReport;Lcom/google/android/gms/location/places/internal/PlacesParams;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto/16 :goto_0

    :cond_1f
    move-object v0, v5

    goto :goto_17

    :sswitch_10
    const-string v0, "com.google.android.gms.location.places.internal.IGooglePlacesService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Lcom/google/android/gms/location/places/personalized/PlaceAlias;->CREATOR:Lcom/google/android/gms/location/places/personalized/zzc;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/places/personalized/zzc;->zzfc(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/personalized/PlaceAlias;

    move-result-object v1

    :goto_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Lcom/google/android/gms/location/places/internal/PlacesParams;->CREATOR:Lcom/google/android/gms/location/places/internal/zzt;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/places/internal/zzt;->zzeY(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v4

    :goto_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/location/places/internal/zzi$zza;->zzch(Landroid/os/IBinder;)Lcom/google/android/gms/location/places/internal/zzi;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/location/places/internal/zzg$zza;->zza(Lcom/google/android/gms/location/places/personalized/PlaceAlias;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/gms/location/places/internal/zzi;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto/16 :goto_0

    :cond_20
    move-object v1, v5

    goto :goto_18

    :cond_21
    move-object v4, v5

    goto :goto_19

    :sswitch_11
    const-string v0, "com.google.android.gms.location.places.internal.IGooglePlacesService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_22

    sget-object v2, Lcom/google/android/gms/location/places/internal/PlacesParams;->CREATOR:Lcom/google/android/gms/location/places/internal/zzt;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/location/places/internal/zzt;->zzeY(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v5

    :cond_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/location/places/internal/zzi$zza;->zzch(Landroid/os/IBinder;)Lcom/google/android/gms/location/places/internal/zzi;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v5, v2}, Lcom/google/android/gms/location/places/internal/zzg$zza;->zza(Ljava/lang/String;ILcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/gms/location/places/internal/zzi;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "com.google.android.gms.location.places.internal.IGooglePlacesService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_23

    sget-object v1, Lcom/google/android/gms/location/places/internal/PlacesParams;->CREATOR:Lcom/google/android/gms/location/places/internal/zzt;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/location/places/internal/zzt;->zzeY(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v5

    :cond_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/location/places/internal/zzh$zza;->zzcg(Landroid/os/IBinder;)Lcom/google/android/gms/location/places/internal/zzh;

    move-result-object v1

    invoke-virtual {p0, v0, v5, v1}, Lcom/google/android/gms/location/places/internal/zzg$zza;->zza(Ljava/lang/String;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/gms/location/places/internal/zzh;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "com.google.android.gms.location.places.internal.IGooglePlacesService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_24

    sget-object v0, Lcom/google/android/gms/location/places/internal/PlacesParams;->CREATOR:Lcom/google/android/gms/location/places/internal/zzt;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/places/internal/zzt;->zzeY(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v5

    :cond_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/location/places/internal/zzh$zza;->zzcg(Landroid/os/IBinder;)Lcom/google/android/gms/location/places/internal/zzh;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/location/places/internal/zzg$zza;->zza(Ljava/lang/String;IIILcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/gms/location/places/internal/zzh;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_7
        0x12 -> :sswitch_11
        0x13 -> :sswitch_12
        0x14 -> :sswitch_13
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
