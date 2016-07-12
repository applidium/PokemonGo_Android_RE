package com.google.android.gms.internal;

import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.consent.GetConsentIntentRequest;
import spacemadness.com.lunarconsole.C1401R;

public interface zzkg extends IInterface {

    public static abstract class zza extends Binder implements zzkg {

        private static class zza implements zzkg {
            private IBinder zznJ;

            zza(IBinder iBinder) {
                this.zznJ = iBinder;
            }

            public IBinder asBinder() {
                return this.zznJ;
            }

            public Intent zza(GetConsentIntentRequest getConsentIntentRequest) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.auth.api.consent.internal.IConsentService");
                    if (getConsentIntentRequest != null) {
                        obtain.writeInt(1);
                        getConsentIntentRequest.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zznJ.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    Intent intent = obtain2.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(obtain2) : null;
                    obtain2.recycle();
                    obtain.recycle();
                    return intent;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static zzkg zzaq(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.consent.internal.IConsentService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzkg)) ? new zza(iBinder) : (zzkg) queryLocalInterface;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    parcel.enforceInterface("com.google.android.gms.auth.api.consent.internal.IConsentService");
                    Intent zza = zza(parcel.readInt() != 0 ? (GetConsentIntentRequest) GetConsentIntentRequest.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    if (zza != null) {
                        parcel2.writeInt(1);
                        zza.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.auth.api.consent.internal.IConsentService");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    Intent zza(GetConsentIntentRequest getConsentIntentRequest) throws RemoteException;
}
