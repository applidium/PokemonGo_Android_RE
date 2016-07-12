package com.google.android.gms.location.places;

import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.BitmapTeleporter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;

public class PlacePhotoResult implements Result, SafeParcelable {
    public static final Creator<PlacePhotoResult> CREATOR;
    private final Bitmap mBitmap;
    final int mVersionCode;
    private final Status zzSC;
    final BitmapTeleporter zzaGs;

    static {
        CREATOR = new zzi();
    }

    PlacePhotoResult(int i, Status status, BitmapTeleporter bitmapTeleporter) {
        this.mVersionCode = i;
        this.zzSC = status;
        this.zzaGs = bitmapTeleporter;
        if (this.zzaGs != null) {
            this.mBitmap = bitmapTeleporter.zzos();
        } else {
            this.mBitmap = null;
        }
    }

    public PlacePhotoResult(Status status, BitmapTeleporter bitmapTeleporter) {
        this.mVersionCode = 0;
        this.zzSC = status;
        this.zzaGs = bitmapTeleporter;
        if (this.zzaGs != null) {
            this.mBitmap = bitmapTeleporter.zzos();
        } else {
            this.mBitmap = null;
        }
    }

    public int describeContents() {
        return 0;
    }

    public Bitmap getBitmap() {
        return this.mBitmap;
    }

    public Status getStatus() {
        return this.zzSC;
    }

    public String toString() {
        return zzw.zzv(this).zzg(NotificationCompatApi21.CATEGORY_STATUS, this.zzSC).zzg("bitmap", this.mBitmap).toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzi.zza(this, parcel, i);
    }
}
