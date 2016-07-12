package com.google.android.gms.location.places;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.v4.os.EnvironmentCompat;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzw.zza;
import com.google.android.gms.common.internal.zzx;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import com.voxelbusters.nativeplugins.defines.Keys;
import spacemadness.com.lunarconsole.C1401R;

public class PlaceReport implements SafeParcelable {
    public static final Creator<PlaceReport> CREATOR;
    private final String mTag;
    final int mVersionCode;
    private final String zzaGt;
    private final String zzaGu;

    static {
        CREATOR = new zzj();
    }

    PlaceReport(int i, String str, String str2, String str3) {
        this.mVersionCode = i;
        this.zzaGt = str;
        this.mTag = str2;
        this.zzaGu = str3;
    }

    public static PlaceReport create(String str, String str2) {
        return zzi(str, str2, EnvironmentCompat.MEDIA_UNKNOWN);
    }

    private static boolean zzdy(String str) {
        boolean z = true;
        switch (str.hashCode()) {
            case -1436706272:
                if (str.equals("inferredGeofencing")) {
                    z = true;
                    break;
                }
                break;
            case -1194968642:
                if (str.equals("userReported")) {
                    z = true;
                    break;
                }
                break;
            case -284840886:
                if (str.equals(EnvironmentCompat.MEDIA_UNKNOWN)) {
                    z = false;
                    break;
                }
                break;
            case -262743844:
                if (str.equals("inferredReverseGeocoding")) {
                    z = true;
                    break;
                }
                break;
            case 1164924125:
                if (str.equals("inferredSnappedToRoad")) {
                    z = true;
                    break;
                }
                break;
            case 1287171955:
                if (str.equals("inferredRadioSignals")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case C1401R.styleable.AdsAttrs_adSize /*0*/:
            case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
            case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
            case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
            case Place.TYPE_AQUARIUM /*4*/:
            case Place.TYPE_ART_GALLERY /*5*/:
                return true;
            default:
                return false;
        }
    }

    public static PlaceReport zzi(String str, String str2, String str3) {
        zzx.zzw(str);
        zzx.zzcr(str2);
        zzx.zzcr(str3);
        zzx.zzb(zzdy(str3), (Object) "Invalid source");
        return new PlaceReport(1, str, str2, str3);
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof PlaceReport)) {
            return false;
        }
        PlaceReport placeReport = (PlaceReport) obj;
        return zzw.equal(this.zzaGt, placeReport.zzaGt) && zzw.equal(this.mTag, placeReport.mTag) && zzw.equal(this.zzaGu, placeReport.zzaGu);
    }

    public String getPlaceId() {
        return this.zzaGt;
    }

    public String getSource() {
        return this.zzaGu;
    }

    public String getTag() {
        return this.mTag;
    }

    public int hashCode() {
        return zzw.hashCode(this.zzaGt, this.mTag, this.zzaGu);
    }

    public String toString() {
        zza zzv = zzw.zzv(this);
        zzv.zzg("placeId", this.zzaGt);
        zzv.zzg(Keys.TAG, this.mTag);
        if (!EnvironmentCompat.MEDIA_UNKNOWN.equals(this.zzaGu)) {
            zzv.zzg("source", this.zzaGu);
        }
        return zzv.toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzj.zza(this, parcel, i);
    }
}
