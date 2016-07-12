package com.google.android.gms.location.places.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.location.places.Place;
import com.google.android.gms.location.places.PlaceLikelihood;

public class PlaceLikelihoodEntity implements SafeParcelable, PlaceLikelihood {
    public static final Creator<PlaceLikelihoodEntity> CREATOR;
    final int mVersionCode;
    final PlaceImpl zzaHA;
    final float zzaHB;

    static {
        CREATOR = new zzm();
    }

    PlaceLikelihoodEntity(int i, PlaceImpl placeImpl, float f) {
        this.mVersionCode = i;
        this.zzaHA = placeImpl;
        this.zzaHB = f;
    }

    public static PlaceLikelihoodEntity zza(PlaceImpl placeImpl, float f) {
        return new PlaceLikelihoodEntity(0, (PlaceImpl) zzx.zzw(placeImpl), f);
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof PlaceLikelihoodEntity)) {
                return false;
            }
            PlaceLikelihoodEntity placeLikelihoodEntity = (PlaceLikelihoodEntity) obj;
            if (!this.zzaHA.equals(placeLikelihoodEntity.zzaHA)) {
                return false;
            }
            if (this.zzaHB != placeLikelihoodEntity.zzaHB) {
                return false;
            }
        }
        return true;
    }

    public /* synthetic */ Object freeze() {
        return zzxo();
    }

    public float getLikelihood() {
        return this.zzaHB;
    }

    public Place getPlace() {
        return this.zzaHA;
    }

    public int hashCode() {
        return zzw.hashCode(this.zzaHA, Float.valueOf(this.zzaHB));
    }

    public boolean isDataValid() {
        return true;
    }

    public String toString() {
        return zzw.zzv(this).zzg("place", this.zzaHA).zzg("likelihood", Float.valueOf(this.zzaHB)).toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzm.zza(this, parcel, i);
    }

    public PlaceLikelihood zzxo() {
        return this;
    }
}
