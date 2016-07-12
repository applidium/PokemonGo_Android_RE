package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public final class BinderWrapper implements Parcelable {
    public static final Creator<BinderWrapper> CREATOR;
    private IBinder zzaeJ;

    /* renamed from: com.google.android.gms.common.internal.BinderWrapper.1 */
    static final class C02331 implements Creator<BinderWrapper> {
        C02331() {
        }

        public /* synthetic */ Object createFromParcel(Parcel parcel) {
            return zzaj(parcel);
        }

        public /* synthetic */ Object[] newArray(int i) {
            return zzbC(i);
        }

        public BinderWrapper zzaj(Parcel parcel) {
            return new BinderWrapper(null);
        }

        public BinderWrapper[] zzbC(int i) {
            return new BinderWrapper[i];
        }
    }

    static {
        CREATOR = new C02331();
    }

    public BinderWrapper() {
        this.zzaeJ = null;
    }

    public BinderWrapper(IBinder iBinder) {
        this.zzaeJ = null;
        this.zzaeJ = iBinder;
    }

    private BinderWrapper(Parcel parcel) {
        this.zzaeJ = null;
        this.zzaeJ = parcel.readStrongBinder();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeStrongBinder(this.zzaeJ);
    }
}
