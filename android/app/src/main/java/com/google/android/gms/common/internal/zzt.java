package com.google.android.gms.common.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import spacemadness.com.lunarconsole.C1401R;

public interface zzt extends IInterface {

    public static abstract class zza extends Binder implements zzt {

        private static class zza implements zzt {
            private IBinder zznJ;

            zza(IBinder iBinder) {
                this.zznJ = iBinder;
            }

            public IBinder asBinder() {
                return this.zznJ;
            }

            public void zzb(ResolveAccountResponse resolveAccountResponse) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.IResolveAccountCallbacks");
                    if (resolveAccountResponse != null) {
                        obtain.writeInt(1);
                        resolveAccountResponse.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zznJ.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public zza() {
            attachInterface(this, "com.google.android.gms.common.internal.IResolveAccountCallbacks");
        }

        public static zzt zzaL(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IResolveAccountCallbacks");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzt)) ? new zza(iBinder) : (zzt) queryLocalInterface;
        }

        public IBinder asBinder() {
            return this;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IResolveAccountCallbacks");
                    zzb(parcel.readInt() != 0 ? (ResolveAccountResponse) ResolveAccountResponse.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.common.internal.IResolveAccountCallbacks");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zzb(ResolveAccountResponse resolveAccountResponse) throws RemoteException;
}
