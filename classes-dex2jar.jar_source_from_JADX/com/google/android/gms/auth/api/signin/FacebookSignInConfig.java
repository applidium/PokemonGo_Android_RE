package com.google.android.gms.auth.api.signin;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.Collections;

public class FacebookSignInConfig implements SafeParcelable {
    public static final Creator<FacebookSignInConfig> CREATOR;
    private Intent mIntent;
    final int versionCode;
    private final ArrayList<String> zzSX;

    static {
        CREATOR = new zzb();
    }

    public FacebookSignInConfig() {
        this(1, null, new ArrayList());
    }

    FacebookSignInConfig(int i, Intent intent, ArrayList<String> arrayList) {
        this.versionCode = i;
        this.mIntent = intent;
        this.zzSX = arrayList;
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            FacebookSignInConfig facebookSignInConfig = (FacebookSignInConfig) obj;
            return this.zzSX.size() == facebookSignInConfig.zzlS().size() && this.zzSX.containsAll(facebookSignInConfig.zzlS());
        } catch (ClassCastException e) {
            return false;
        }
    }

    public int hashCode() {
        Collections.sort(this.zzSX);
        return this.zzSX.hashCode();
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzb.zza(this, parcel, i);
    }

    public Intent zzlR() {
        return this.mIntent;
    }

    public ArrayList<String> zzlS() {
        return new ArrayList(this.zzSX);
    }
}
