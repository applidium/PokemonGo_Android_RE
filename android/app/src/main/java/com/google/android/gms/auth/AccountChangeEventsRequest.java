package com.google.android.gms.auth;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class AccountChangeEventsRequest implements SafeParcelable {
    public static final Creator<AccountChangeEventsRequest> CREATOR;
    final int mVersion;
    Account zzQd;
    @Deprecated
    String zzRs;
    int zzRu;

    static {
        CREATOR = new zzb();
    }

    public AccountChangeEventsRequest() {
        this.mVersion = 1;
    }

    AccountChangeEventsRequest(int i, int i2, String str, Account account) {
        this.mVersion = i;
        this.zzRu = i2;
        this.zzRs = str;
        if (account != null || TextUtils.isEmpty(str)) {
            this.zzQd = account;
        } else {
            this.zzQd = new Account(str, GoogleAuthUtil.GOOGLE_ACCOUNT_TYPE);
        }
    }

    public int describeContents() {
        return 0;
    }

    public Account getAccount() {
        return this.zzQd;
    }

    public String getAccountName() {
        return this.zzRs;
    }

    public int getEventIndex() {
        return this.zzRu;
    }

    public AccountChangeEventsRequest setAccount(Account account) {
        this.zzQd = account;
        return this;
    }

    public AccountChangeEventsRequest setAccountName(String str) {
        this.zzRs = str;
        return this;
    }

    public AccountChangeEventsRequest setEventIndex(int i) {
        this.zzRu = i;
        return this;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzb.zza(this, parcel, i);
    }
}
