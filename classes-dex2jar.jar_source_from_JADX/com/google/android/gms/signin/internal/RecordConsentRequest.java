package com.google.android.gms.signin.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class RecordConsentRequest implements SafeParcelable {
    public static final Creator<RecordConsentRequest> CREATOR;
    final int mVersionCode;
    private final Account zzQd;
    private final String zzTl;
    private final Scope[] zzaVk;

    static {
        CREATOR = new zzg();
    }

    RecordConsentRequest(int i, Account account, Scope[] scopeArr, String str) {
        this.mVersionCode = i;
        this.zzQd = account;
        this.zzaVk = scopeArr;
        this.zzTl = str;
    }

    public int describeContents() {
        return 0;
    }

    public Account getAccount() {
        return this.zzQd;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzg.zza(this, parcel, i);
    }

    public Scope[] zzCj() {
        return this.zzaVk;
    }

    public String zzmb() {
        return this.zzTl;
    }
}
