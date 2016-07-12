package com.google.android.gms.auth.api.credentials;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzx;
import com.voxelbusters.nativeplugins.defines.Keys.Scheme;
import java.util.Collections;
import java.util.List;

public class Credential implements SafeParcelable {
    public static final Creator<Credential> CREATOR;
    public static final String EXTRA_KEY = "com.google.android.gms.credentials.Credential";
    private final String mName;
    final int mVersionCode;
    private final Uri zzSh;
    private final List<IdToken> zzSi;
    private final String zzSj;
    private final String zzSk;
    private final String zzSl;
    private final String zzSm;
    private final String zzwN;

    public static class Builder {
        private String mName;
        private Uri zzSh;
        private List<IdToken> zzSi;
        private String zzSj;
        private String zzSk;
        private String zzSl;
        private String zzSm;
        private final String zzwN;

        public Builder(Credential credential) {
            this.zzwN = credential.zzwN;
            this.mName = credential.mName;
            this.zzSh = credential.zzSh;
            this.zzSi = credential.zzSi;
            this.zzSj = credential.zzSj;
            this.zzSk = credential.zzSk;
            this.zzSl = credential.zzSl;
            this.zzSm = credential.zzSm;
        }

        public Builder(String str) {
            this.zzwN = str;
        }

        public Credential build() {
            if (TextUtils.isEmpty(this.zzSj) || TextUtils.isEmpty(this.zzSk)) {
                return new Credential(3, this.zzwN, this.mName, this.zzSh, this.zzSi, this.zzSj, this.zzSk, this.zzSl, this.zzSm);
            }
            throw new IllegalStateException("Only one of password or accountType may be set");
        }

        public Builder setAccountType(String str) {
            String scheme = Uri.parse(str).getScheme();
            boolean z = Scheme.HTTP.equalsIgnoreCase(scheme) || Scheme.HTTPS.equalsIgnoreCase(scheme);
            zzx.zzaa(z);
            this.zzSk = str;
            return this;
        }

        public Builder setName(String str) {
            this.mName = str;
            return this;
        }

        public Builder setPassword(String str) {
            this.zzSj = str;
            return this;
        }

        public Builder setProfilePictureUri(Uri uri) {
            this.zzSh = uri;
            return this;
        }
    }

    static {
        CREATOR = new zza();
    }

    Credential(int i, String str, String str2, Uri uri, List<IdToken> list, String str3, String str4, String str5, String str6) {
        this.mVersionCode = i;
        this.zzwN = (String) zzx.zzw(str);
        this.mName = str2;
        this.zzSh = uri;
        this.zzSi = list == null ? Collections.emptyList() : Collections.unmodifiableList(list);
        this.zzSj = str3;
        this.zzSk = str4;
        this.zzSl = str5;
        this.zzSm = str6;
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof Credential)) {
                return false;
            }
            Credential credential = (Credential) obj;
            if (!TextUtils.equals(this.zzwN, credential.zzwN) || !TextUtils.equals(this.mName, credential.mName) || !zzw.equal(this.zzSh, credential.zzSh) || !TextUtils.equals(this.zzSj, credential.zzSj) || !TextUtils.equals(this.zzSk, credential.zzSk)) {
                return false;
            }
            if (!TextUtils.equals(this.zzSl, credential.zzSl)) {
                return false;
            }
        }
        return true;
    }

    public String getAccountType() {
        return this.zzSk;
    }

    public String getGeneratedPassword() {
        return this.zzSl;
    }

    public String getId() {
        return this.zzwN;
    }

    public List<IdToken> getIdTokens() {
        return this.zzSi;
    }

    public String getName() {
        return this.mName;
    }

    public String getPassword() {
        return this.zzSj;
    }

    public Uri getProfilePictureUri() {
        return this.zzSh;
    }

    public int hashCode() {
        return zzw.hashCode(this.zzwN, this.mName, this.zzSh, this.zzSj, this.zzSk, this.zzSl);
    }

    public void writeToParcel(Parcel parcel, int i) {
        zza.zza(this, parcel, i);
    }

    public String zzlI() {
        return this.zzSm;
    }
}
