package com.google.android.gms.location.places;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class PlacePhotoMetadataResult implements Result, SafeParcelable {
    public static final Creator<PlacePhotoMetadataResult> CREATOR;
    final int mVersionCode;
    private final Status zzSC;
    final DataHolder zzaGq;
    private final PlacePhotoMetadataBuffer zzaGr;

    static {
        CREATOR = new zzh();
    }

    PlacePhotoMetadataResult(int i, Status status, DataHolder dataHolder) {
        this.mVersionCode = i;
        this.zzSC = status;
        this.zzaGq = dataHolder;
        if (dataHolder == null) {
            this.zzaGr = null;
        } else {
            this.zzaGr = new PlacePhotoMetadataBuffer(this.zzaGq);
        }
    }

    public PlacePhotoMetadataResult(Status status, DataHolder dataHolder) {
        this(0, status, dataHolder);
    }

    public int describeContents() {
        return 0;
    }

    public PlacePhotoMetadataBuffer getPhotoMetadata() {
        return this.zzaGr;
    }

    public Status getStatus() {
        return this.zzSC;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzh.zza(this, parcel, i);
    }
}
