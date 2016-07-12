package com.google.android.gms.gcm;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class PendingCallback implements Parcelable {
    public static final Creator<PendingCallback> CREATOR;
    final IBinder zzaeJ;

    /* renamed from: com.google.android.gms.gcm.PendingCallback.1 */
    static final class C04511 implements Creator<PendingCallback> {
        C04511() {
        }

        public /* synthetic */ Object createFromParcel(Parcel parcel) {
            return zzet(parcel);
        }

        public /* synthetic */ Object[] newArray(int i) {
            return zzgD(i);
        }

        public PendingCallback zzet(Parcel parcel) {
            return new PendingCallback(parcel);
        }

        public PendingCallback[] zzgD(int i) {
            return new PendingCallback[i];
        }
    }

    static {
        CREATOR = new C04511();
    }

    public PendingCallback(Parcel parcel) {
        this.zzaeJ = parcel.readStrongBinder();
    }

    public int describeContents() {
        return 0;
    }

    public IBinder getIBinder() {
        return this.zzaeJ;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeStrongBinder(this.zzaeJ);
    }
}
