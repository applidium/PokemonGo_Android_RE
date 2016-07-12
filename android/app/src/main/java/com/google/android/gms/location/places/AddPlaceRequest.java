package com.google.android.gms.location.places;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.maps.model.LatLng;
import com.voxelbusters.nativeplugins.defines.Keys.Twitter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class AddPlaceRequest implements SafeParcelable {
    public static final Creator<AddPlaceRequest> CREATOR;
    private final String mName;
    final int mVersionCode;
    private final LatLng zzaFS;
    private final List<Integer> zzaFT;
    private final String zzaFU;
    private final Uri zzaFV;
    private final String zzapU;

    static {
        CREATOR = new zzb();
    }

    AddPlaceRequest(int i, String str, LatLng latLng, String str2, List<Integer> list, String str3, Uri uri) {
        boolean z = false;
        this.mVersionCode = i;
        this.mName = zzx.zzcr(str);
        this.zzaFS = (LatLng) zzx.zzw(latLng);
        this.zzapU = zzx.zzcr(str2);
        this.zzaFT = new ArrayList((Collection) zzx.zzw(list));
        zzx.zzb(!this.zzaFT.isEmpty(), (Object) "At least one place type should be provided.");
        if (!(TextUtils.isEmpty(str3) && uri == null)) {
            z = true;
        }
        zzx.zzb(z, (Object) "One of phone number or URI should be provided.");
        this.zzaFU = str3;
        this.zzaFV = uri;
    }

    public AddPlaceRequest(String str, LatLng latLng, String str2, List<Integer> list, Uri uri) {
        this(str, latLng, str2, list, null, (Uri) zzx.zzw(uri));
    }

    public AddPlaceRequest(String str, LatLng latLng, String str2, List<Integer> list, String str3) {
        this(str, latLng, str2, list, zzx.zzcr(str3), null);
    }

    public AddPlaceRequest(String str, LatLng latLng, String str2, List<Integer> list, String str3, Uri uri) {
        this(0, str, latLng, str2, list, str3, uri);
    }

    public int describeContents() {
        return 0;
    }

    public String getAddress() {
        return this.zzapU;
    }

    public LatLng getLatLng() {
        return this.zzaFS;
    }

    public String getName() {
        return this.mName;
    }

    public String getPhoneNumber() {
        return this.zzaFU;
    }

    public List<Integer> getPlaceTypes() {
        return this.zzaFT;
    }

    public Uri getWebsiteUri() {
        return this.zzaFV;
    }

    public String toString() {
        return zzw.zzv(this).zzg(Twitter.NAME, this.mName).zzg("latLng", this.zzaFS).zzg("address", this.zzapU).zzg("placeTypes", this.zzaFT).zzg("phoneNumer", this.zzaFU).zzg("websiteUri", this.zzaFV).toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzb.zza(this, parcel, i);
    }
}
