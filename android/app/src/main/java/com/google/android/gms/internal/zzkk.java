package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.proxy.ProxyGrpcRequest;
import com.google.android.gms.auth.api.proxy.ProxyRequest;
import spacemadness.com.lunarconsole.C1401R;

public interface zzkk extends IInterface {

    public static abstract class zza extends Binder implements zzkk {

        private static class zza implements zzkk {
            private IBinder zznJ;

            zza(IBinder iBinder) {
                this.zznJ = iBinder;
            }

            public IBinder asBinder() {
                return this.zznJ;
            }

            public void zza(zzkj com_google_android_gms_internal_zzkj, ProxyGrpcRequest proxyGrpcRequest) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.auth.api.internal.IAuthService");
                    obtain.writeStrongBinder(com_google_android_gms_internal_zzkj != null ? com_google_android_gms_internal_zzkj.asBinder() : null);
                    if (proxyGrpcRequest != null) {
                        obtain.writeInt(1);
                        proxyGrpcRequest.writeToParcel(obtain, 0);
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

            public void zza(zzkj com_google_android_gms_internal_zzkj, ProxyRequest proxyRequest) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.auth.api.internal.IAuthService");
                    obtain.writeStrongBinder(com_google_android_gms_internal_zzkj != null ? com_google_android_gms_internal_zzkj.asBinder() : null);
                    if (proxyRequest != null) {
                        obtain.writeInt(1);
                        proxyRequest.writeToParcel(obtain, 0);
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
        }

        public static zzkk zzaw(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.internal.IAuthService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzkk)) ? new zza(iBinder) : (zzkk) queryLocalInterface;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            ProxyGrpcRequest proxyGrpcRequest = null;
            zzkj zzav;
            switch (i) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    ProxyRequest proxyRequest;
                    parcel.enforceInterface("com.google.android.gms.auth.api.internal.IAuthService");
                    zzav = com.google.android.gms.internal.zzkj.zza.zzav(parcel.readStrongBinder());
                    if (parcel.readInt() != 0) {
                        proxyRequest = (ProxyRequest) ProxyRequest.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzav, proxyRequest);
                    parcel2.writeNoException();
                    return true;
                case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                    parcel.enforceInterface("com.google.android.gms.auth.api.internal.IAuthService");
                    zzav = com.google.android.gms.internal.zzkj.zza.zzav(parcel.readStrongBinder());
                    if (parcel.readInt() != 0) {
                        proxyGrpcRequest = (ProxyGrpcRequest) ProxyGrpcRequest.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzav, proxyGrpcRequest);
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.auth.api.internal.IAuthService");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zza(zzkj com_google_android_gms_internal_zzkj, ProxyGrpcRequest proxyGrpcRequest) throws RemoteException;

    void zza(zzkj com_google_android_gms_internal_zzkj, ProxyRequest proxyRequest) throws RemoteException;
}
