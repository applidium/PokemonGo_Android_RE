package com.google.android.gms.location.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;

public class ClientIdentity implements SafeParcelable {
    public static final zzc CREATOR;
    private final int mVersionCode;
    public final String packageName;
    public final int uid;

    static {
        CREATOR = new zzc();
    }

    ClientIdentity(int i, int i2, String str) {
        this.mVersionCode = i;
        this.uid = i2;
        this.packageName = str;
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof ClientIdentity)) {
            return false;
        }
        ClientIdentity clientIdentity = (ClientIdentity) obj;
        return clientIdentity.uid == this.uid && zzw.equal(clientIdentity.packageName, this.packageName);
    }

    int getVersionCode() {
        return this.mVersionCode;
    }

    public int hashCode() {
        return this.uid;
    }

    public String toString() {
        return String.format("%d:%s", new Object[]{Integer.valueOf(this.uid), this.packageName});
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzc.zza(this, parcel, i);
    }
}
