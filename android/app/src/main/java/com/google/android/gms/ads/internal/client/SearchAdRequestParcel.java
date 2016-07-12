package com.google.android.gms.ads.internal.client;

import android.os.Parcel;
import com.google.android.gms.ads.search.SearchAdRequest;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.zzgr;

@zzgr
public final class SearchAdRequestParcel implements SafeParcelable {
    public static final zzae CREATOR;
    public final int backgroundColor;
    public final int versionCode;
    public final int zztP;
    public final int zztQ;
    public final int zztR;
    public final int zztS;
    public final int zztT;
    public final int zztU;
    public final int zztV;
    public final String zztW;
    public final int zztX;
    public final String zztY;
    public final int zztZ;
    public final int zzua;
    public final String zzub;

    static {
        CREATOR = new zzae();
    }

    SearchAdRequestParcel(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, String str, int i10, String str2, int i11, int i12, String str3) {
        this.versionCode = i;
        this.zztP = i2;
        this.backgroundColor = i3;
        this.zztQ = i4;
        this.zztR = i5;
        this.zztS = i6;
        this.zztT = i7;
        this.zztU = i8;
        this.zztV = i9;
        this.zztW = str;
        this.zztX = i10;
        this.zztY = str2;
        this.zztZ = i11;
        this.zzua = i12;
        this.zzub = str3;
    }

    public SearchAdRequestParcel(SearchAdRequest searchAdRequest) {
        this.versionCode = 1;
        this.zztP = searchAdRequest.getAnchorTextColor();
        this.backgroundColor = searchAdRequest.getBackgroundColor();
        this.zztQ = searchAdRequest.getBackgroundGradientBottom();
        this.zztR = searchAdRequest.getBackgroundGradientTop();
        this.zztS = searchAdRequest.getBorderColor();
        this.zztT = searchAdRequest.getBorderThickness();
        this.zztU = searchAdRequest.getBorderType();
        this.zztV = searchAdRequest.getCallButtonColor();
        this.zztW = searchAdRequest.getCustomChannels();
        this.zztX = searchAdRequest.getDescriptionTextColor();
        this.zztY = searchAdRequest.getFontFace();
        this.zztZ = searchAdRequest.getHeaderTextColor();
        this.zzua = searchAdRequest.getHeaderTextSize();
        this.zzub = searchAdRequest.getQuery();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzae.zza(this, parcel, i);
    }
}
