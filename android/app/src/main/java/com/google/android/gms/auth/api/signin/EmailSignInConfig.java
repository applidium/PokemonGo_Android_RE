package com.google.android.gms.auth.api.signin;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import android.util.Patterns;
import com.google.android.gms.auth.api.signin.internal.zzc;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzx;

public class EmailSignInConfig implements SafeParcelable {
    public static final Creator<EmailSignInConfig> CREATOR;
    final int versionCode;
    private final Uri zzSU;
    private String zzSV;
    private Uri zzSW;

    static {
        CREATOR = new zza();
    }

    EmailSignInConfig(int i, Uri uri, String str, Uri uri2) {
        zzx.zzb((Object) uri, (Object) "Server widget url cannot be null in order to use email/password sign in.");
        zzx.zzh(uri.toString(), "Server widget url cannot be null in order to use email/password sign in.");
        zzx.zzb(Patterns.WEB_URL.matcher(uri.toString()).matches(), (Object) "Invalid server widget url");
        this.versionCode = i;
        this.zzSU = uri;
        this.zzSV = str;
        this.zzSW = uri2;
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            EmailSignInConfig emailSignInConfig = (EmailSignInConfig) obj;
            if (!this.zzSU.equals(emailSignInConfig.zzlO())) {
                return false;
            }
            if (this.zzSW == null) {
                if (emailSignInConfig.zzlP() != null) {
                    return false;
                }
            } else if (!this.zzSW.equals(emailSignInConfig.zzlP())) {
                return false;
            }
            if (TextUtils.isEmpty(this.zzSV)) {
                if (!TextUtils.isEmpty(emailSignInConfig.zzlQ())) {
                    return false;
                }
            } else if (!this.zzSV.equals(emailSignInConfig.zzlQ())) {
                return false;
            }
            return true;
        } catch (ClassCastException e) {
            return false;
        }
    }

    public int hashCode() {
        return new zzc().zzl(this.zzSU).zzl(this.zzSW).zzl(this.zzSV).zzmd();
    }

    public void writeToParcel(Parcel parcel, int i) {
        zza.zza(this, parcel, i);
    }

    public Uri zzlO() {
        return this.zzSU;
    }

    public Uri zzlP() {
        return this.zzSW;
    }

    public String zzlQ() {
        return this.zzSV;
    }
}
