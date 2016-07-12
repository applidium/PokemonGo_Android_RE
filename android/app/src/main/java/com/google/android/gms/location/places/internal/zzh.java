package com.google.android.gms.location.places.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.location.places.PlacePhotoMetadataResult;
import com.google.android.gms.location.places.PlacePhotoResult;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import spacemadness.com.lunarconsole.C1401R;

public interface zzh extends IInterface {

    public static abstract class zza extends Binder implements zzh {

        private static class zza implements zzh {
            private IBinder zznJ;

            zza(IBinder iBinder) {
                this.zznJ = iBinder;
            }

            public IBinder asBinder() {
                return this.zznJ;
            }

            public void zza(PlacePhotoMetadataResult placePhotoMetadataResult) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.places.internal.IPhotosCallbacks");
                    if (placePhotoMetadataResult != null) {
                        obtain.writeInt(1);
                        placePhotoMetadataResult.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zznJ.transact(3, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            public void zza(PlacePhotoResult placePhotoResult) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.places.internal.IPhotosCallbacks");
                    if (placePhotoResult != null) {
                        obtain.writeInt(1);
                        placePhotoResult.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zznJ.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public zza() {
            attachInterface(this, "com.google.android.gms.location.places.internal.IPhotosCallbacks");
        }

        public static zzh zzcg(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.places.internal.IPhotosCallbacks");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzh)) ? new zza(iBinder) : (zzh) queryLocalInterface;
        }

        public IBinder asBinder() {
            return this;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            PlacePhotoResult placePhotoResult = null;
            switch (i) {
                case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                    parcel.enforceInterface("com.google.android.gms.location.places.internal.IPhotosCallbacks");
                    if (parcel.readInt() != 0) {
                        placePhotoResult = (PlacePhotoResult) PlacePhotoResult.CREATOR.createFromParcel(parcel);
                    }
                    zza(placePhotoResult);
                    return true;
                case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                    PlacePhotoMetadataResult placePhotoMetadataResult;
                    parcel.enforceInterface("com.google.android.gms.location.places.internal.IPhotosCallbacks");
                    if (parcel.readInt() != 0) {
                        placePhotoMetadataResult = (PlacePhotoMetadataResult) PlacePhotoMetadataResult.CREATOR.createFromParcel(parcel);
                    }
                    zza(placePhotoMetadataResult);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.location.places.internal.IPhotosCallbacks");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zza(PlacePhotoMetadataResult placePhotoMetadataResult) throws RemoteException;

    void zza(PlacePhotoResult placePhotoResult) throws RemoteException;
}
