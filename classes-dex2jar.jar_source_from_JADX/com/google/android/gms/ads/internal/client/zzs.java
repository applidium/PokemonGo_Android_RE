package com.google.android.gms.ads.internal.client;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.internal.zzck;
import com.google.android.gms.internal.zzfs;
import com.google.android.gms.internal.zzfw;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import com.nianticproject.holoholo.sfida.constants.BluetoothGattSupport;
import com.upsight.android.internal.persistence.subscription.Subscriptions;
import spacemadness.com.lunarconsole.C1401R;

public interface zzs extends IInterface {

    public static abstract class zza extends Binder implements zzs {

        private static class zza implements zzs {
            private IBinder zznJ;

            zza(IBinder iBinder) {
                this.zznJ = iBinder;
            }

            public IBinder asBinder() {
                return this.zznJ;
            }

            public void destroy() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IAdManager");
                    this.zznJ.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public String getMediationAdapterClassName() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IAdManager");
                    this.zznJ.transact(18, obtain, obtain2, 0);
                    obtain2.readException();
                    String readString = obtain2.readString();
                    return readString;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public boolean isLoading() throws RemoteException {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IAdManager");
                    this.zznJ.transact(23, obtain, obtain2, 0);
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

            public boolean isReady() throws RemoteException {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IAdManager");
                    this.zznJ.transact(3, obtain, obtain2, 0);
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

            public void pause() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IAdManager");
                    this.zznJ.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void resume() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IAdManager");
                    this.zznJ.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void setManualImpressionsEnabled(boolean z) throws RemoteException {
                int i = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IAdManager");
                    if (z) {
                        i = 1;
                    }
                    obtain.writeInt(i);
                    this.zznJ.transact(22, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void showInterstitial() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IAdManager");
                    this.zznJ.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void stopLoading() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IAdManager");
                    this.zznJ.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(AdSizeParcel adSizeParcel) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IAdManager");
                    if (adSizeParcel != null) {
                        obtain.writeInt(1);
                        adSizeParcel.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zznJ.transact(13, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(zzn com_google_android_gms_ads_internal_client_zzn) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IAdManager");
                    obtain.writeStrongBinder(com_google_android_gms_ads_internal_client_zzn != null ? com_google_android_gms_ads_internal_client_zzn.asBinder() : null);
                    this.zznJ.transact(20, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(zzo com_google_android_gms_ads_internal_client_zzo) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IAdManager");
                    obtain.writeStrongBinder(com_google_android_gms_ads_internal_client_zzo != null ? com_google_android_gms_ads_internal_client_zzo.asBinder() : null);
                    this.zznJ.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(zzu com_google_android_gms_ads_internal_client_zzu) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IAdManager");
                    obtain.writeStrongBinder(com_google_android_gms_ads_internal_client_zzu != null ? com_google_android_gms_ads_internal_client_zzu.asBinder() : null);
                    this.zznJ.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(zzv com_google_android_gms_ads_internal_client_zzv) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IAdManager");
                    obtain.writeStrongBinder(com_google_android_gms_ads_internal_client_zzv != null ? com_google_android_gms_ads_internal_client_zzv.asBinder() : null);
                    this.zznJ.transact(21, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(zzck com_google_android_gms_internal_zzck) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IAdManager");
                    obtain.writeStrongBinder(com_google_android_gms_internal_zzck != null ? com_google_android_gms_internal_zzck.asBinder() : null);
                    this.zznJ.transact(19, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(zzfs com_google_android_gms_internal_zzfs) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IAdManager");
                    obtain.writeStrongBinder(com_google_android_gms_internal_zzfs != null ? com_google_android_gms_internal_zzfs.asBinder() : null);
                    this.zznJ.transact(14, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(zzfw com_google_android_gms_internal_zzfw, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IAdManager");
                    obtain.writeStrongBinder(com_google_android_gms_internal_zzfw != null ? com_google_android_gms_internal_zzfw.asBinder() : null);
                    obtain.writeString(str);
                    this.zznJ.transact(15, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public zzd zzaM() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IAdManager");
                    this.zznJ.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    zzd zzbk = com.google.android.gms.dynamic.zzd.zza.zzbk(obtain2.readStrongBinder());
                    return zzbk;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public AdSizeParcel zzaN() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IAdManager");
                    this.zznJ.transact(12, obtain, obtain2, 0);
                    obtain2.readException();
                    AdSizeParcel zzc = obtain2.readInt() != 0 ? AdSizeParcel.CREATOR.zzc(obtain2) : null;
                    obtain2.recycle();
                    obtain.recycle();
                    return zzc;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zzaP() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IAdManager");
                    this.zznJ.transact(11, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public boolean zzb(AdRequestParcel adRequestParcel) throws RemoteException {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IAdManager");
                    if (adRequestParcel != null) {
                        obtain.writeInt(1);
                        adRequestParcel.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zznJ.transact(4, obtain, obtain2, 0);
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
            attachInterface(this, "com.google.android.gms.ads.internal.client.IAdManager");
        }

        public static zzs zzk(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzs)) ? new zza(iBinder) : (zzs) queryLocalInterface;
        }

        public IBinder asBinder() {
            return this;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            AdSizeParcel adSizeParcel = null;
            int i3 = 0;
            boolean isReady;
            switch (i) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    IBinder asBinder;
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
                    zzd zzaM = zzaM();
                    parcel2.writeNoException();
                    if (zzaM != null) {
                        asBinder = zzaM.asBinder();
                    }
                    parcel2.writeStrongBinder(asBinder);
                    return true;
                case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
                    destroy();
                    parcel2.writeNoException();
                    return true;
                case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
                    isReady = isReady();
                    parcel2.writeNoException();
                    parcel2.writeInt(isReady ? 1 : 0);
                    return true;
                case Place.TYPE_AQUARIUM /*4*/:
                    AdRequestParcel zzb;
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
                    if (parcel.readInt() != 0) {
                        zzb = AdRequestParcel.CREATOR.zzb(parcel);
                    }
                    isReady = zzb(zzb);
                    parcel2.writeNoException();
                    if (isReady) {
                        i3 = 1;
                    }
                    parcel2.writeInt(i3);
                    return true;
                case Place.TYPE_ART_GALLERY /*5*/:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
                    pause();
                    parcel2.writeNoException();
                    return true;
                case Place.TYPE_ATM /*6*/:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
                    resume();
                    parcel2.writeNoException();
                    return true;
                case Place.TYPE_BAKERY /*7*/:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
                    zza(com.google.android.gms.ads.internal.client.zzo.zza.zzg(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case BluetoothGattSupport.GATT_INSUF_AUTHENTICATION /*8*/:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
                    zza(com.google.android.gms.ads.internal.client.zzu.zza.zzm(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case Place.TYPE_BAR /*9*/:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
                    showInterstitial();
                    parcel2.writeNoException();
                    return true;
                case Subscriptions.MAX_QUEUE_LENGTH /*10*/:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
                    stopLoading();
                    parcel2.writeNoException();
                    return true;
                case Place.TYPE_BICYCLE_STORE /*11*/:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
                    zzaP();
                    parcel2.writeNoException();
                    return true;
                case Place.TYPE_BOOK_STORE /*12*/:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
                    adSizeParcel = zzaN();
                    parcel2.writeNoException();
                    if (adSizeParcel != null) {
                        parcel2.writeInt(1);
                        adSizeParcel.writeToParcel(parcel2, 1);
                        return true;
                    }
                    parcel2.writeInt(0);
                    return true;
                case Place.TYPE_BOWLING_ALLEY /*13*/:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
                    if (parcel.readInt() != 0) {
                        adSizeParcel = AdSizeParcel.CREATOR.zzc(parcel);
                    }
                    zza(adSizeParcel);
                    parcel2.writeNoException();
                    return true;
                case Place.TYPE_BUS_STATION /*14*/:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
                    zza(com.google.android.gms.internal.zzfs.zza.zzP(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case Place.TYPE_CAFE /*15*/:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
                    zza(com.google.android.gms.internal.zzfw.zza.zzT(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case Place.TYPE_CAR_RENTAL /*18*/:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
                    String mediationAdapterClassName = getMediationAdapterClassName();
                    parcel2.writeNoException();
                    parcel2.writeString(mediationAdapterClassName);
                    return true;
                case Place.TYPE_CAR_REPAIR /*19*/:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
                    zza(com.google.android.gms.internal.zzck.zza.zzs(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case Place.TYPE_CAR_WASH /*20*/:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
                    zza(com.google.android.gms.ads.internal.client.zzn.zza.zzf(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case Place.TYPE_CASINO /*21*/:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
                    zza(com.google.android.gms.ads.internal.client.zzv.zza.zzn(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case Place.TYPE_CEMETERY /*22*/:
                    boolean z;
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    setManualImpressionsEnabled(z);
                    parcel2.writeNoException();
                    return true;
                case Place.TYPE_CHURCH /*23*/:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
                    isReady = isLoading();
                    parcel2.writeNoException();
                    if (isReady) {
                        i3 = 1;
                    }
                    parcel2.writeInt(i3);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.ads.internal.client.IAdManager");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void destroy() throws RemoteException;

    String getMediationAdapterClassName() throws RemoteException;

    boolean isLoading() throws RemoteException;

    boolean isReady() throws RemoteException;

    void pause() throws RemoteException;

    void resume() throws RemoteException;

    void setManualImpressionsEnabled(boolean z) throws RemoteException;

    void showInterstitial() throws RemoteException;

    void stopLoading() throws RemoteException;

    void zza(AdSizeParcel adSizeParcel) throws RemoteException;

    void zza(zzn com_google_android_gms_ads_internal_client_zzn) throws RemoteException;

    void zza(zzo com_google_android_gms_ads_internal_client_zzo) throws RemoteException;

    void zza(zzu com_google_android_gms_ads_internal_client_zzu) throws RemoteException;

    void zza(zzv com_google_android_gms_ads_internal_client_zzv) throws RemoteException;

    void zza(zzck com_google_android_gms_internal_zzck) throws RemoteException;

    void zza(zzfs com_google_android_gms_internal_zzfs) throws RemoteException;

    void zza(zzfw com_google_android_gms_internal_zzfw, String str) throws RemoteException;

    zzd zzaM() throws RemoteException;

    AdSizeParcel zzaN() throws RemoteException;

    void zzaP() throws RemoteException;

    boolean zzb(AdRequestParcel adRequestParcel) throws RemoteException;
}
