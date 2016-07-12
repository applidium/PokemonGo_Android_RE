package com.google.android.gms.ads.internal.client;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.internal.zzcw;
import com.google.android.gms.internal.zzcx;
import com.google.android.gms.internal.zzcy;
import com.google.android.gms.internal.zzcz;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import spacemadness.com.lunarconsole.C1401R;

public interface zzq extends IInterface {

    public static abstract class zza extends Binder implements zzq {

        private static class zza implements zzq {
            private IBinder zznJ;

            zza(IBinder iBinder) {
                this.zznJ = iBinder;
            }

            public IBinder asBinder() {
                return this.zznJ;
            }

            public void zza(NativeAdOptionsParcel nativeAdOptionsParcel) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
                    if (nativeAdOptionsParcel != null) {
                        obtain.writeInt(1);
                        nativeAdOptionsParcel.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zznJ.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(zzcw com_google_android_gms_internal_zzcw) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
                    obtain.writeStrongBinder(com_google_android_gms_internal_zzcw != null ? com_google_android_gms_internal_zzcw.asBinder() : null);
                    this.zznJ.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(zzcx com_google_android_gms_internal_zzcx) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
                    obtain.writeStrongBinder(com_google_android_gms_internal_zzcx != null ? com_google_android_gms_internal_zzcx.asBinder() : null);
                    this.zznJ.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(String str, zzcz com_google_android_gms_internal_zzcz, zzcy com_google_android_gms_internal_zzcy) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
                    obtain.writeString(str);
                    obtain.writeStrongBinder(com_google_android_gms_internal_zzcz != null ? com_google_android_gms_internal_zzcz.asBinder() : null);
                    if (com_google_android_gms_internal_zzcy != null) {
                        iBinder = com_google_android_gms_internal_zzcy.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    this.zznJ.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zzb(zzo com_google_android_gms_ads_internal_client_zzo) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
                    obtain.writeStrongBinder(com_google_android_gms_ads_internal_client_zzo != null ? com_google_android_gms_ads_internal_client_zzo.asBinder() : null);
                    this.zznJ.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public zzp zzbk() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
                    this.zznJ.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    zzp zzh = com.google.android.gms.ads.internal.client.zzp.zza.zzh(obtain2.readStrongBinder());
                    return zzh;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public zza() {
            attachInterface(this, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
        }

        public static zzq zzi(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzq)) ? new zza(iBinder) : (zzq) queryLocalInterface;
        }

        public IBinder asBinder() {
            return this;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            NativeAdOptionsParcel nativeAdOptionsParcel = null;
            switch (i) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    IBinder asBinder;
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
                    zzp zzbk = zzbk();
                    parcel2.writeNoException();
                    if (zzbk != null) {
                        asBinder = zzbk.asBinder();
                    }
                    parcel2.writeStrongBinder(asBinder);
                    return true;
                case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
                    zzb(com.google.android.gms.ads.internal.client.zzo.zza.zzg(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
                    zza(com.google.android.gms.internal.zzcw.zza.zzz(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case Place.TYPE_AQUARIUM /*4*/:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
                    zza(com.google.android.gms.internal.zzcx.zza.zzA(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case Place.TYPE_ART_GALLERY /*5*/:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
                    zza(parcel.readString(), com.google.android.gms.internal.zzcz.zza.zzC(parcel.readStrongBinder()), com.google.android.gms.internal.zzcy.zza.zzB(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case Place.TYPE_ATM /*6*/:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
                    if (parcel.readInt() != 0) {
                        nativeAdOptionsParcel = NativeAdOptionsParcel.CREATOR.zze(parcel);
                    }
                    zza(nativeAdOptionsParcel);
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zza(NativeAdOptionsParcel nativeAdOptionsParcel) throws RemoteException;

    void zza(zzcw com_google_android_gms_internal_zzcw) throws RemoteException;

    void zza(zzcx com_google_android_gms_internal_zzcx) throws RemoteException;

    void zza(String str, zzcz com_google_android_gms_internal_zzcz, zzcy com_google_android_gms_internal_zzcy) throws RemoteException;

    void zzb(zzo com_google_android_gms_ads_internal_client_zzo) throws RemoteException;

    zzp zzbk() throws RemoteException;
}
