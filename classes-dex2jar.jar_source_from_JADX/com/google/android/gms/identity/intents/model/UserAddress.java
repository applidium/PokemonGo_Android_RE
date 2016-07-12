package com.google.android.gms.identity.intents.model;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.identity.intents.AddressConstants.Extras;

public final class UserAddress implements SafeParcelable {
    public static final Creator<UserAddress> CREATOR;
    private final int mVersionCode;
    String name;
    String phoneNumber;
    String zzGw;
    String zzaDk;
    String zzaDl;
    String zzaDm;
    String zzaDn;
    String zzaDo;
    String zzaDp;
    String zzaDq;
    String zzaDr;
    String zzaDs;
    boolean zzaDt;
    String zzaDu;
    String zzaDv;

    static {
        CREATOR = new zzb();
    }

    UserAddress() {
        this.mVersionCode = 1;
    }

    UserAddress(int i, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, boolean z, String str13, String str14) {
        this.mVersionCode = i;
        this.name = str;
        this.zzaDk = str2;
        this.zzaDl = str3;
        this.zzaDm = str4;
        this.zzaDn = str5;
        this.zzaDo = str6;
        this.zzaDp = str7;
        this.zzaDq = str8;
        this.zzGw = str9;
        this.zzaDr = str10;
        this.zzaDs = str11;
        this.phoneNumber = str12;
        this.zzaDt = z;
        this.zzaDu = str13;
        this.zzaDv = str14;
    }

    public static UserAddress fromIntent(Intent intent) {
        return (intent == null || !intent.hasExtra(Extras.EXTRA_ADDRESS)) ? null : (UserAddress) intent.getParcelableExtra(Extras.EXTRA_ADDRESS);
    }

    public int describeContents() {
        return 0;
    }

    public String getAddress1() {
        return this.zzaDk;
    }

    public String getAddress2() {
        return this.zzaDl;
    }

    public String getAddress3() {
        return this.zzaDm;
    }

    public String getAddress4() {
        return this.zzaDn;
    }

    public String getAddress5() {
        return this.zzaDo;
    }

    public String getAdministrativeArea() {
        return this.zzaDp;
    }

    public String getCompanyName() {
        return this.zzaDu;
    }

    public String getCountryCode() {
        return this.zzGw;
    }

    public String getEmailAddress() {
        return this.zzaDv;
    }

    public String getLocality() {
        return this.zzaDq;
    }

    public String getName() {
        return this.name;
    }

    public String getPhoneNumber() {
        return this.phoneNumber;
    }

    public String getPostalCode() {
        return this.zzaDr;
    }

    public String getSortingCode() {
        return this.zzaDs;
    }

    public int getVersionCode() {
        return this.mVersionCode;
    }

    public boolean isPostBox() {
        return this.zzaDt;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzb.zza(this, parcel, i);
    }
}
