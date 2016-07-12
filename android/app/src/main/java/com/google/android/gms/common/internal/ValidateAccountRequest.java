package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class ValidateAccountRequest implements SafeParcelable {
    public static final Creator<ValidateAccountRequest> CREATOR;
    final int mVersionCode;
    private final String zzSb;
    final IBinder zzaeH;
    private final Scope[] zzaeI;
    private final int zzagu;
    private final Bundle zzagv;

    static {
        CREATOR = new zzad();
    }

    ValidateAccountRequest(int i, int i2, IBinder iBinder, Scope[] scopeArr, Bundle bundle, String str) {
        this.mVersionCode = i;
        this.zzagu = i2;
        this.zzaeH = iBinder;
        this.zzaeI = scopeArr;
        this.zzagv = bundle;
        this.zzSb = str;
    }

    public ValidateAccountRequest(zzp com_google_android_gms_common_internal_zzp, Scope[] scopeArr, String str, Bundle bundle) {
        this(1, GoogleApiAvailability.GOOGLE_PLAY_SERVICES_VERSION_CODE, com_google_android_gms_common_internal_zzp == null ? null : com_google_android_gms_common_internal_zzp.asBinder(), scopeArr, bundle, str);
    }

    public int describeContents() {
        return 0;
    }

    public String getCallingPackage() {
        return this.zzSb;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzad.zza(this, parcel, i);
    }

    public int zzpu() {
        return this.zzagu;
    }

    public Scope[] zzpv() {
        return this.zzaeI;
    }

    public Bundle zzpw() {
        return this.zzagv;
    }
}
