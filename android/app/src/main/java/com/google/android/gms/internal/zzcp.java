package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.zzd;
import spacemadness.com.lunarconsole.C1401R;

public interface zzcp extends IInterface {

    public static abstract class zza extends Binder implements zzcp {

        private static class zza implements zzcp {
            private IBinder zznJ;

            zza(IBinder iBinder) {
                this.zznJ = iBinder;
            }

            public IBinder asBinder() {
                return this.zznJ;
            }

            public IBinder zza(zzd com_google_android_gms_dynamic_zzd, zzd com_google_android_gms_dynamic_zzd2, zzd com_google_android_gms_dynamic_zzd3, int i) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegateCreator");
                    obtain.writeStrongBinder(com_google_android_gms_dynamic_zzd != null ? com_google_android_gms_dynamic_zzd.asBinder() : null);
                    obtain.writeStrongBinder(com_google_android_gms_dynamic_zzd2 != null ? com_google_android_gms_dynamic_zzd2.asBinder() : null);
                    if (com_google_android_gms_dynamic_zzd3 != null) {
                        iBinder = com_google_android_gms_dynamic_zzd3.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    obtain.writeInt(i);
                    this.zznJ.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    iBinder = obtain2.readStrongBinder();
                    return iBinder;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static zzcp zzv(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegateCreator");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzcp)) ? new zza(iBinder) : (zzcp) queryLocalInterface;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegateCreator");
                    IBinder zza = zza(com.google.android.gms.dynamic.zzd.zza.zzbk(parcel.readStrongBinder()), com.google.android.gms.dynamic.zzd.zza.zzbk(parcel.readStrongBinder()), com.google.android.gms.dynamic.zzd.zza.zzbk(parcel.readStrongBinder()), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(zza);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegateCreator");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    IBinder zza(zzd com_google_android_gms_dynamic_zzd, zzd com_google_android_gms_dynamic_zzd2, zzd com_google_android_gms_dynamic_zzd3, int i) throws RemoteException;
}
