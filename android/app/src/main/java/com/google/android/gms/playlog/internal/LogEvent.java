package com.google.android.gms.playlog.internal;

import android.os.Bundle;
import android.os.Parcel;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class LogEvent implements SafeParcelable {
    public static final zzc CREATOR;
    public final String tag;
    public final int versionCode;
    public final long zzaRG;
    public final long zzaRH;
    public final byte[] zzaRI;
    public final Bundle zzaRJ;

    static {
        CREATOR = new zzc();
    }

    LogEvent(int i, long j, long j2, String str, byte[] bArr, Bundle bundle) {
        this.versionCode = i;
        this.zzaRG = j;
        this.zzaRH = j2;
        this.tag = str;
        this.zzaRI = bArr;
        this.zzaRJ = bundle;
    }

    public LogEvent(long j, long j2, String str, byte[] bArr, String... strArr) {
        this.versionCode = 1;
        this.zzaRG = j;
        this.zzaRH = j2;
        this.tag = str;
        this.zzaRI = bArr;
        this.zzaRJ = zzd(strArr);
    }

    private static Bundle zzd(String... strArr) {
        Bundle bundle = null;
        if (strArr != null) {
            if (strArr.length % 2 != 0) {
                throw new IllegalArgumentException("extras must have an even number of elements");
            }
            int length = strArr.length / 2;
            if (length != 0) {
                bundle = new Bundle(length);
                for (int i = 0; i < length; i++) {
                    bundle.putString(strArr[i * 2], strArr[(i * 2) + 1]);
                }
            }
        }
        return bundle;
    }

    public int describeContents() {
        return 0;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("tag=").append(this.tag).append(",");
        stringBuilder.append("eventTime=").append(this.zzaRG).append(",");
        stringBuilder.append("eventUptime=").append(this.zzaRH).append(",");
        if (!(this.zzaRJ == null || this.zzaRJ.isEmpty())) {
            stringBuilder.append("keyValues=");
            for (String str : this.zzaRJ.keySet()) {
                stringBuilder.append("(").append(str).append(",");
                stringBuilder.append(this.zzaRJ.getString(str)).append(")");
                stringBuilder.append(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR);
            }
        }
        return stringBuilder.toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzc.zza(this, parcel, i);
    }
}
