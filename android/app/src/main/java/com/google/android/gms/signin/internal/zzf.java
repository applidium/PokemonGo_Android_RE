package com.google.android.gms.signin.internal;

import android.accounts.Account;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.internal.AuthAccountRequest;
import com.google.android.gms.common.internal.ResolveAccountRequest;
import com.google.android.gms.common.internal.zzp;
import com.google.android.gms.common.internal.zzt;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import com.nianticproject.holoholo.sfida.constants.BluetoothGattSupport;
import com.upsight.android.internal.persistence.subscription.Subscriptions;
import spacemadness.com.lunarconsole.C1401R;

public interface zzf extends IInterface {

    public static abstract class zza extends Binder implements zzf {

        private static class zza implements zzf {
            private IBinder zznJ;

            zza(IBinder iBinder) {
                this.zznJ = iBinder;
            }

            public IBinder asBinder() {
                return this.zznJ;
            }

            public void zza(int i, Account account, zze com_google_android_gms_signin_internal_zze) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
                    obtain.writeInt(i);
                    if (account != null) {
                        obtain.writeInt(1);
                        account.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(com_google_android_gms_signin_internal_zze != null ? com_google_android_gms_signin_internal_zze.asBinder() : null);
                    this.zznJ.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(AuthAccountRequest authAccountRequest, zze com_google_android_gms_signin_internal_zze) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
                    if (authAccountRequest != null) {
                        obtain.writeInt(1);
                        authAccountRequest.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(com_google_android_gms_signin_internal_zze != null ? com_google_android_gms_signin_internal_zze.asBinder() : null);
                    this.zznJ.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(ResolveAccountRequest resolveAccountRequest, zzt com_google_android_gms_common_internal_zzt) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
                    if (resolveAccountRequest != null) {
                        obtain.writeInt(1);
                        resolveAccountRequest.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(com_google_android_gms_common_internal_zzt != null ? com_google_android_gms_common_internal_zzt.asBinder() : null);
                    this.zznJ.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(zzp com_google_android_gms_common_internal_zzp, int i, boolean z) throws RemoteException {
                int i2 = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
                    obtain.writeStrongBinder(com_google_android_gms_common_internal_zzp != null ? com_google_android_gms_common_internal_zzp.asBinder() : null);
                    obtain.writeInt(i);
                    if (z) {
                        i2 = 1;
                    }
                    obtain.writeInt(i2);
                    this.zznJ.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(CheckServerAuthResult checkServerAuthResult) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
                    if (checkServerAuthResult != null) {
                        obtain.writeInt(1);
                        checkServerAuthResult.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zznJ.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(RecordConsentRequest recordConsentRequest, zze com_google_android_gms_signin_internal_zze) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
                    if (recordConsentRequest != null) {
                        obtain.writeInt(1);
                        recordConsentRequest.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(com_google_android_gms_signin_internal_zze != null ? com_google_android_gms_signin_internal_zze.asBinder() : null);
                    this.zznJ.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(zze com_google_android_gms_signin_internal_zze) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
                    obtain.writeStrongBinder(com_google_android_gms_signin_internal_zze != null ? com_google_android_gms_signin_internal_zze.asBinder() : null);
                    this.zznJ.transact(11, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zzaq(boolean z) throws RemoteException {
                int i = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
                    if (z) {
                        i = 1;
                    }
                    obtain.writeInt(i);
                    this.zznJ.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zzjq(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
                    obtain.writeInt(i);
                    this.zznJ.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static zzf zzdN(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.signin.internal.ISignInService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzf)) ? new zza(iBinder) : (zzf) queryLocalInterface;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            boolean z = false;
            RecordConsentRequest recordConsentRequest = null;
            switch (i) {
                case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                    AuthAccountRequest authAccountRequest;
                    parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                    if (parcel.readInt() != 0) {
                        authAccountRequest = (AuthAccountRequest) AuthAccountRequest.CREATOR.createFromParcel(parcel);
                    }
                    zza(authAccountRequest, com.google.android.gms.signin.internal.zze.zza.zzdM(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                    CheckServerAuthResult checkServerAuthResult;
                    parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                    if (parcel.readInt() != 0) {
                        checkServerAuthResult = (CheckServerAuthResult) CheckServerAuthResult.CREATOR.createFromParcel(parcel);
                    }
                    zza(checkServerAuthResult);
                    parcel2.writeNoException();
                    return true;
                case Place.TYPE_AQUARIUM /*4*/:
                    parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                    zzaq(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case Place.TYPE_ART_GALLERY /*5*/:
                    ResolveAccountRequest resolveAccountRequest;
                    parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                    if (parcel.readInt() != 0) {
                        resolveAccountRequest = (ResolveAccountRequest) ResolveAccountRequest.CREATOR.createFromParcel(parcel);
                    }
                    zza(resolveAccountRequest, com.google.android.gms.common.internal.zzt.zza.zzaL(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case Place.TYPE_BAKERY /*7*/:
                    parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                    zzjq(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case BluetoothGattSupport.GATT_INSUF_AUTHENTICATION /*8*/:
                    Account account;
                    parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                    int readInt = parcel.readInt();
                    if (parcel.readInt() != 0) {
                        account = (Account) Account.CREATOR.createFromParcel(parcel);
                    }
                    zza(readInt, account, com.google.android.gms.signin.internal.zze.zza.zzdM(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case Place.TYPE_BAR /*9*/:
                    parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                    zzp zzaH = com.google.android.gms.common.internal.zzp.zza.zzaH(parcel.readStrongBinder());
                    int readInt2 = parcel.readInt();
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    zza(zzaH, readInt2, z);
                    parcel2.writeNoException();
                    return true;
                case Subscriptions.MAX_QUEUE_LENGTH /*10*/:
                    parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                    if (parcel.readInt() != 0) {
                        recordConsentRequest = (RecordConsentRequest) RecordConsentRequest.CREATOR.createFromParcel(parcel);
                    }
                    zza(recordConsentRequest, com.google.android.gms.signin.internal.zze.zza.zzdM(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case Place.TYPE_BICYCLE_STORE /*11*/:
                    parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                    zza(com.google.android.gms.signin.internal.zze.zza.zzdM(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.signin.internal.ISignInService");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zza(int i, Account account, zze com_google_android_gms_signin_internal_zze) throws RemoteException;

    void zza(AuthAccountRequest authAccountRequest, zze com_google_android_gms_signin_internal_zze) throws RemoteException;

    void zza(ResolveAccountRequest resolveAccountRequest, zzt com_google_android_gms_common_internal_zzt) throws RemoteException;

    void zza(zzp com_google_android_gms_common_internal_zzp, int i, boolean z) throws RemoteException;

    void zza(CheckServerAuthResult checkServerAuthResult) throws RemoteException;

    void zza(RecordConsentRequest recordConsentRequest, zze com_google_android_gms_signin_internal_zze) throws RemoteException;

    void zza(zze com_google_android_gms_signin_internal_zze) throws RemoteException;

    void zzaq(boolean z) throws RemoteException;

    void zzjq(int i) throws RemoteException;
}
