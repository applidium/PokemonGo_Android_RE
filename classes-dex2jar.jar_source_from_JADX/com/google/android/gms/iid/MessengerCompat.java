package com.google.android.gms.iid;

import android.os.Binder;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.RemoteException;

public class MessengerCompat implements Parcelable {
    public static final Creator<MessengerCompat> CREATOR;
    Messenger zzaDK;
    zzb zzaDL;

    /* renamed from: com.google.android.gms.iid.MessengerCompat.1 */
    static final class C04611 implements Creator<MessengerCompat> {
        C04611() {
        }

        public /* synthetic */ Object createFromParcel(Parcel parcel) {
            return zzey(parcel);
        }

        public /* synthetic */ Object[] newArray(int i) {
            return zzgJ(i);
        }

        public MessengerCompat zzey(Parcel parcel) {
            IBinder readStrongBinder = parcel.readStrongBinder();
            return readStrongBinder != null ? new MessengerCompat(readStrongBinder) : null;
        }

        public MessengerCompat[] zzgJ(int i) {
            return new MessengerCompat[i];
        }
    }

    private final class zza extends com.google.android.gms.iid.zzb.zza {
        Handler handler;
        final /* synthetic */ MessengerCompat zzaDM;

        zza(MessengerCompat messengerCompat, Handler handler) {
            this.zzaDM = messengerCompat;
            this.handler = handler;
        }

        public void send(Message message) throws RemoteException {
            message.arg2 = Binder.getCallingUid();
            this.handler.dispatchMessage(message);
        }
    }

    static {
        CREATOR = new C04611();
    }

    public MessengerCompat(Handler handler) {
        if (VERSION.SDK_INT >= 21) {
            this.zzaDK = new Messenger(handler);
        } else {
            this.zzaDL = new zza(this, handler);
        }
    }

    public MessengerCompat(IBinder iBinder) {
        if (VERSION.SDK_INT >= 21) {
            this.zzaDK = new Messenger(iBinder);
        } else {
            this.zzaDL = com.google.android.gms.iid.zzb.zza.zzbV(iBinder);
        }
    }

    public static int zzc(Message message) {
        return VERSION.SDK_INT >= 21 ? zzd(message) : message.arg2;
    }

    private static int zzd(Message message) {
        return message.sendingUid;
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (obj != null) {
            try {
                z = getBinder().equals(((MessengerCompat) obj).getBinder());
            } catch (ClassCastException e) {
            }
        }
        return z;
    }

    public IBinder getBinder() {
        return this.zzaDK != null ? this.zzaDK.getBinder() : this.zzaDL.asBinder();
    }

    public int hashCode() {
        return getBinder().hashCode();
    }

    public void send(Message message) throws RemoteException {
        if (this.zzaDK != null) {
            this.zzaDK.send(message);
        } else {
            this.zzaDL.send(message);
        }
    }

    public void writeToParcel(Parcel parcel, int i) {
        if (this.zzaDK != null) {
            parcel.writeStrongBinder(this.zzaDK.getBinder());
        } else {
            parcel.writeStrongBinder(this.zzaDL.asBinder());
        }
    }
}
