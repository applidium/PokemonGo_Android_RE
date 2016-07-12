package com.google.android.gms.location.places;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzx;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public final class UserDataType implements SafeParcelable {
    public static final zzm CREATOR;
    public static final UserDataType zzaGI;
    public static final UserDataType zzaGJ;
    public static final UserDataType zzaGK;
    public static final Set<UserDataType> zzaGL;
    final int mVersionCode;
    final String zzGq;
    final int zzaGM;

    static {
        zzaGI = zzy("test_type", 1);
        zzaGJ = zzy("labeled_place", 6);
        zzaGK = zzy("here_content", 7);
        zzaGL = Collections.unmodifiableSet(new HashSet(Arrays.asList(new UserDataType[]{zzaGI, zzaGJ, zzaGK})));
        CREATOR = new zzm();
    }

    UserDataType(int i, String str, int i2) {
        zzx.zzcr(str);
        this.mVersionCode = i;
        this.zzGq = str;
        this.zzaGM = i2;
    }

    private static UserDataType zzy(String str, int i) {
        return new UserDataType(0, str, i);
    }

    public int describeContents() {
        zzm com_google_android_gms_location_places_zzm = CREATOR;
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof UserDataType)) {
                return false;
            }
            UserDataType userDataType = (UserDataType) obj;
            if (!this.zzGq.equals(userDataType.zzGq)) {
                return false;
            }
            if (this.zzaGM != userDataType.zzaGM) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        return this.zzGq.hashCode();
    }

    public String toString() {
        return this.zzGq;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzm com_google_android_gms_location_places_zzm = CREATOR;
        zzm.zza(this, parcel, i);
    }
}
