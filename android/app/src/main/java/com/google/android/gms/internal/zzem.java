package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import spacemadness.com.lunarconsole.C1401R;

public interface zzem extends IInterface {

    public static abstract class zza extends Binder implements zzem {

        private static class zza implements zzem {
            private IBinder zznJ;

            zza(IBinder iBinder) {
                this.zznJ = iBinder;
            }

            public IBinder asBinder() {
                return this.zznJ;
            }

            public zzen zzae(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
                    obtain.writeString(str);
                    this.zznJ.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    zzen zzF = com.google.android.gms.internal.zzen.zza.zzF(obtain2.readStrongBinder());
                    return zzF;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public boolean zzaf(String str) throws RemoteException {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
                    obtain.writeString(str);
                    this.zznJ.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    obtain2.recycle();
                    obtain.recycle();
                    return z;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public zza() {
            attachInterface(this, "com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
        }

        public static zzem zzE(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzem)) ? new zza(iBinder) : (zzem) queryLocalInterface;
        }

        public IBinder asBinder() {
            return this;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
                    zzen zzae = zzae(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(zzae != null ? zzae.asBinder() : null);
                    return true;
                case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
                    boolean zzaf = zzaf(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zzaf ? 1 : 0);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    zzen zzae(String str) throws RemoteException;

    boolean zzaf(String str) throws RemoteException;
}
