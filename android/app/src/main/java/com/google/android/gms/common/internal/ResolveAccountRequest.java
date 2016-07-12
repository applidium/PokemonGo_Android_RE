package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class ResolveAccountRequest implements SafeParcelable {
    public static final Creator<ResolveAccountRequest> CREATOR;
    final int mVersionCode;
    private final Account zzQd;
    private final int zzagp;

    static {
        CREATOR = new zzy();
    }

    ResolveAccountRequest(int i, Account account, int i2) {
        this.mVersionCode = i;
        this.zzQd = account;
        this.zzagp = i2;
    }

    public ResolveAccountRequest(Account account, int i) {
        this(1, account, i);
    }

    public int describeContents() {
        return 0;
    }

    public Account getAccount() {
        return this.zzQd;
    }

    public int getSessionId() {
        return this.zzagp;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzy.zza(this, parcel, i);
    }
}
