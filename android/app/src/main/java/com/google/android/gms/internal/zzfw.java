package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import spacemadness.com.lunarconsole.C1401R;

public interface zzfw extends IInterface {

    public static abstract class zza extends Binder implements zzfw {

        private static class zza implements zzfw {
            private IBinder zznJ;

            zza(IBinder iBinder) {
                this.zznJ = iBinder;
            }

            public IBinder asBinder() {
                return this.zznJ;
            }

            public boolean isValidPurchase(String str) throws RemoteException {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.purchase.client.IPlayStorePurchaseListener");
                    obtain.writeString(str);
                    this.zznJ.transact(1, obtain, obtain2, 0);
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

            public void zza(zzfv com_google_android_gms_internal_zzfv) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.purchase.client.IPlayStorePurchaseListener");
                    obtain.writeStrongBinder(com_google_android_gms_internal_zzfv != null ? com_google_android_gms_internal_zzfv.asBinder() : null);
                    this.zznJ.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public zza() {
            attachInterface(this, "com.google.android.gms.ads.internal.purchase.client.IPlayStorePurchaseListener");
        }

        public static zzfw zzT(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.purchase.client.IPlayStorePurchaseListener");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzfw)) ? new zza(iBinder) : (zzfw) queryLocalInterface;
        }

        public IBinder asBinder() {
            return this;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.purchase.client.IPlayStorePurchaseListener");
                    boolean isValidPurchase = isValidPurchase(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(isValidPurchase ? 1 : 0);
                    return true;
                case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.purchase.client.IPlayStorePurchaseListener");
                    zza(com.google.android.gms.internal.zzfv.zza.zzS(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.ads.internal.purchase.client.IPlayStorePurchaseListener");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    boolean isValidPurchase(String str) throws RemoteException;

    void zza(zzfv com_google_android_gms_internal_zzfv) throws RemoteException;
}
