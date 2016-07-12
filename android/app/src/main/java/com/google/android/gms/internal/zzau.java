package com.google.android.gms.internal;

import android.accounts.Account;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.AccountChangeEventsRequest;
import com.google.android.gms.auth.AccountChangeEventsResponse;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import spacemadness.com.lunarconsole.C1401R;

public interface zzau extends IInterface {

    public static abstract class zza extends Binder implements zzau {

        private static class zza implements zzau {
            private IBinder zznJ;

            zza(IBinder iBinder) {
                this.zznJ = iBinder;
            }

            public IBinder asBinder() {
                return this.zznJ;
            }

            public Bundle zza(Account account) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.auth.IAuthManagerService");
                    if (account != null) {
                        obtain.writeInt(1);
                        account.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zznJ.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                    Bundle bundle = obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                    obtain2.recycle();
                    obtain.recycle();
                    return bundle;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public Bundle zza(Account account, String str, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.auth.IAuthManagerService");
                    if (account != null) {
                        obtain.writeInt(1);
                        account.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeString(str);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zznJ.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                    Bundle bundle2 = obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                    obtain2.recycle();
                    obtain.recycle();
                    return bundle2;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public Bundle zza(Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.auth.IAuthManagerService");
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zznJ.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                    Bundle bundle2 = obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                    obtain2.recycle();
                    obtain.recycle();
                    return bundle2;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public Bundle zza(String str, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.auth.IAuthManagerService");
                    obtain.writeString(str);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zznJ.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    Bundle bundle2 = obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                    obtain2.recycle();
                    obtain.recycle();
                    return bundle2;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public Bundle zza(String str, String str2, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.auth.IAuthManagerService");
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zznJ.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    Bundle bundle2 = obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                    obtain2.recycle();
                    obtain.recycle();
                    return bundle2;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public AccountChangeEventsResponse zza(AccountChangeEventsRequest accountChangeEventsRequest) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.auth.IAuthManagerService");
                    if (accountChangeEventsRequest != null) {
                        obtain.writeInt(1);
                        accountChangeEventsRequest.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zznJ.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    AccountChangeEventsResponse accountChangeEventsResponse = obtain2.readInt() != 0 ? (AccountChangeEventsResponse) AccountChangeEventsResponse.CREATOR.createFromParcel(obtain2) : null;
                    obtain2.recycle();
                    obtain.recycle();
                    return accountChangeEventsResponse;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static zzau zza(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.auth.IAuthManagerService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzau)) ? new zza(iBinder) : (zzau) queryLocalInterface;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            Bundle zza;
            switch (i) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    parcel.enforceInterface("com.google.android.auth.IAuthManagerService");
                    zza = zza(parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    if (zza != null) {
                        parcel2.writeInt(1);
                        zza.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                    parcel.enforceInterface("com.google.android.auth.IAuthManagerService");
                    zza = zza(parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    if (zza != null) {
                        parcel2.writeInt(1);
                        zza.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                    parcel.enforceInterface("com.google.android.auth.IAuthManagerService");
                    AccountChangeEventsResponse zza2 = zza(parcel.readInt() != 0 ? (AccountChangeEventsRequest) AccountChangeEventsRequest.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    if (zza2 != null) {
                        parcel2.writeInt(1);
                        zza2.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case Place.TYPE_ART_GALLERY /*5*/:
                    parcel.enforceInterface("com.google.android.auth.IAuthManagerService");
                    zza = zza(parcel.readInt() != 0 ? (Account) Account.CREATOR.createFromParcel(parcel) : null, parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    if (zza != null) {
                        parcel2.writeInt(1);
                        zza.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case Place.TYPE_ATM /*6*/:
                    parcel.enforceInterface("com.google.android.auth.IAuthManagerService");
                    zza = zza(parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    if (zza != null) {
                        parcel2.writeInt(1);
                        zza.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case Place.TYPE_BAKERY /*7*/:
                    parcel.enforceInterface("com.google.android.auth.IAuthManagerService");
                    zza = zza(parcel.readInt() != 0 ? (Account) Account.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    if (zza != null) {
                        parcel2.writeInt(1);
                        zza.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.auth.IAuthManagerService");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    Bundle zza(Account account) throws RemoteException;

    Bundle zza(Account account, String str, Bundle bundle) throws RemoteException;

    Bundle zza(Bundle bundle) throws RemoteException;

    Bundle zza(String str, Bundle bundle) throws RemoteException;

    Bundle zza(String str, String str2, Bundle bundle) throws RemoteException;

    AccountChangeEventsResponse zza(AccountChangeEventsRequest accountChangeEventsRequest) throws RemoteException;
}
