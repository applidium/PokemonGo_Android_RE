package com.google.android.gms.auth.api.signin.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.google.android.gms.auth.api.signin.EmailSignInConfig;
import com.google.android.gms.auth.api.signin.FacebookSignInConfig;
import com.google.android.gms.auth.api.signin.GoogleSignInConfig;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzx;

public final class SignInConfiguration implements SafeParcelable {
    public static final Creator<SignInConfiguration> CREATOR;
    private static int zzTr;
    final int versionCode;
    private String zzTl;
    private final String zzTs;
    private EmailSignInConfig zzTt;
    private GoogleSignInConfig zzTu;
    private FacebookSignInConfig zzTv;
    private String zzTw;

    static {
        zzTr = 31;
        CREATOR = new zzh();
    }

    SignInConfiguration(int i, String str, String str2, EmailSignInConfig emailSignInConfig, GoogleSignInConfig googleSignInConfig, FacebookSignInConfig facebookSignInConfig, String str3) {
        this.versionCode = i;
        this.zzTs = zzx.zzcr(str);
        this.zzTl = str2;
        this.zzTt = emailSignInConfig;
        this.zzTu = googleSignInConfig;
        this.zzTv = facebookSignInConfig;
        this.zzTw = str3;
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            SignInConfiguration signInConfiguration = (SignInConfiguration) obj;
            if (!this.zzTs.equals(signInConfiguration.zzme())) {
                return false;
            }
            if (TextUtils.isEmpty(this.zzTl)) {
                if (!TextUtils.isEmpty(signInConfiguration.zzmb())) {
                    return false;
                }
            } else if (!this.zzTl.equals(signInConfiguration.zzmb())) {
                return false;
            }
            if (TextUtils.isEmpty(this.zzTw)) {
                if (!TextUtils.isEmpty(signInConfiguration.zzmi())) {
                    return false;
                }
            } else if (!this.zzTw.equals(signInConfiguration.zzmi())) {
                return false;
            }
            if (this.zzTt == null) {
                if (signInConfiguration.zzmf() != null) {
                    return false;
                }
            } else if (!this.zzTt.equals(signInConfiguration.zzmf())) {
                return false;
            }
            if (this.zzTv == null) {
                if (signInConfiguration.zzmh() != null) {
                    return false;
                }
            } else if (!this.zzTv.equals(signInConfiguration.zzmh())) {
                return false;
            }
            if (this.zzTu == null) {
                if (signInConfiguration.zzmg() != null) {
                    return false;
                }
            } else if (!this.zzTu.equals(signInConfiguration.zzmg())) {
                return false;
            }
            return true;
        } catch (ClassCastException e) {
            return false;
        }
    }

    public int hashCode() {
        return new zzc().zzl(this.zzTs).zzl(this.zzTl).zzl(this.zzTw).zzl(this.zzTt).zzl(this.zzTu).zzl(this.zzTv).zzmd();
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzh.zza(this, parcel, i);
    }

    public String zzmb() {
        return this.zzTl;
    }

    public String zzme() {
        return this.zzTs;
    }

    public EmailSignInConfig zzmf() {
        return this.zzTt;
    }

    public GoogleSignInConfig zzmg() {
        return this.zzTu;
    }

    public FacebookSignInConfig zzmh() {
        return this.zzTv;
    }

    public String zzmi() {
        return this.zzTw;
    }
}
