package com.google.android.gms.auth.api.credentials.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.credentials.CredentialRequest;
import com.google.android.gms.location.places.Place;
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

            public void zza(zzg com_google_android_gms_auth_api_credentials_internal_zzg) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
                    obtain.writeStrongBinder(com_google_android_gms_auth_api_credentials_internal_zzg != null ? com_google_android_gms_auth_api_credentials_internal_zzg.asBinder() : null);
                    this.zznJ.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(zzg com_google_android_gms_auth_api_credentials_internal_zzg, CredentialRequest credentialRequest) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
                    obtain.writeStrongBinder(com_google_android_gms_auth_api_credentials_internal_zzg != null ? com_google_android_gms_auth_api_credentials_internal_zzg.asBinder() : null);
                    if (credentialRequest != null) {
                        obtain.writeInt(1);
                        credentialRequest.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zznJ.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(zzg com_google_android_gms_auth_api_credentials_internal_zzg, DeleteRequest deleteRequest) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
                    obtain.writeStrongBinder(com_google_android_gms_auth_api_credentials_internal_zzg != null ? com_google_android_gms_auth_api_credentials_internal_zzg.asBinder() : null);
                    if (deleteRequest != null) {
                        obtain.writeInt(1);
                        deleteRequest.writeToParcel(obtain, 0);
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

            public void zza(zzg com_google_android_gms_auth_api_credentials_internal_zzg, SaveRequest saveRequest) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
                    obtain.writeStrongBinder(com_google_android_gms_auth_api_credentials_internal_zzg != null ? com_google_android_gms_auth_api_credentials_internal_zzg.asBinder() : null);
                    if (saveRequest != null) {
                        obtain.writeInt(1);
                        saveRequest.writeToParcel(obtain, 0);
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

        public static zzh zzat(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzh)) ? new zza(iBinder) : (zzh) queryLocalInterface;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            DeleteRequest deleteRequest = null;
            zzg zzas;
            switch (i) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    CredentialRequest credentialRequest;
                    parcel.enforceInterface("com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
                    zzas = com.google.android.gms.auth.api.credentials.internal.zzg.zza.zzas(parcel.readStrongBinder());
                    if (parcel.readInt() != 0) {
                        credentialRequest = (CredentialRequest) CredentialRequest.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzas, credentialRequest);
                    parcel2.writeNoException();
                    return true;
                case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                    SaveRequest saveRequest;
                    parcel.enforceInterface("com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
                    zzas = com.google.android.gms.auth.api.credentials.internal.zzg.zza.zzas(parcel.readStrongBinder());
                    if (parcel.readInt() != 0) {
                        saveRequest = (SaveRequest) SaveRequest.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzas, saveRequest);
                    parcel2.writeNoException();
                    return true;
                case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                    parcel.enforceInterface("com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
                    zzas = com.google.android.gms.auth.api.credentials.internal.zzg.zza.zzas(parcel.readStrongBinder());
                    if (parcel.readInt() != 0) {
                        deleteRequest = (DeleteRequest) DeleteRequest.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzas, deleteRequest);
                    parcel2.writeNoException();
                    return true;
                case Place.TYPE_AQUARIUM /*4*/:
                    parcel.enforceInterface("com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
                    zza(com.google.android.gms.auth.api.credentials.internal.zzg.zza.zzas(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zza(zzg com_google_android_gms_auth_api_credentials_internal_zzg) throws RemoteException;

    void zza(zzg com_google_android_gms_auth_api_credentials_internal_zzg, CredentialRequest credentialRequest) throws RemoteException;

    void zza(zzg com_google_android_gms_auth_api_credentials_internal_zzg, DeleteRequest deleteRequest) throws RemoteException;

    void zza(zzg com_google_android_gms_auth_api_credentials_internal_zzg, SaveRequest saveRequest) throws RemoteException;
}
