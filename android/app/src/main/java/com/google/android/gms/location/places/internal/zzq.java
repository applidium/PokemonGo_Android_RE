package com.google.android.gms.location.places.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzc;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.location.places.PlacePhotoMetadata;
import com.google.android.gms.location.places.PlacePhotoResult;
import com.google.android.gms.location.places.Places;
import com.google.android.gms.location.places.zzf;
import com.google.android.gms.location.places.zzf.zza;

public class zzq implements PlacePhotoMetadata {
    private int mIndex;
    private final int zzAG;
    private final int zzAH;
    private final String zzaHL;
    private final CharSequence zzaHM;

    /* renamed from: com.google.android.gms.location.places.internal.zzq.1 */
    class C06741 extends zza<zze> {
        final /* synthetic */ int zzaHN;
        final /* synthetic */ int zzaHO;
        final /* synthetic */ zzq zzaHP;

        C06741(zzq com_google_android_gms_location_places_internal_zzq, zzc com_google_android_gms_common_api_Api_zzc, GoogleApiClient googleApiClient, int i, int i2) {
            this.zzaHP = com_google_android_gms_location_places_internal_zzq;
            this.zzaHN = i;
            this.zzaHO = i2;
            super(com_google_android_gms_common_api_Api_zzc, googleApiClient);
        }

        protected void zza(zze com_google_android_gms_location_places_internal_zze) throws RemoteException {
            com_google_android_gms_location_places_internal_zze.zza(new zzf((zza) this), this.zzaHP.zzaHL, this.zzaHN, this.zzaHO, this.zzaHP.mIndex);
        }
    }

    public zzq(String str, int i, int i2, CharSequence charSequence, int i3) {
        this.zzaHL = str;
        this.zzAG = i;
        this.zzAH = i2;
        this.zzaHM = charSequence;
        this.mIndex = i3;
    }

    public boolean equals(Object obj) {
        if (obj != this) {
            if (!(obj instanceof zzq)) {
                return false;
            }
            zzq com_google_android_gms_location_places_internal_zzq = (zzq) obj;
            if (com_google_android_gms_location_places_internal_zzq.zzAG != this.zzAG || com_google_android_gms_location_places_internal_zzq.zzAH != this.zzAH || !zzw.equal(com_google_android_gms_location_places_internal_zzq.zzaHL, this.zzaHL)) {
                return false;
            }
            if (!zzw.equal(com_google_android_gms_location_places_internal_zzq.zzaHM, this.zzaHM)) {
                return false;
            }
        }
        return true;
    }

    public /* synthetic */ Object freeze() {
        return zzxp();
    }

    public CharSequence getAttributions() {
        return this.zzaHM;
    }

    public int getMaxHeight() {
        return this.zzAH;
    }

    public int getMaxWidth() {
        return this.zzAG;
    }

    public PendingResult<PlacePhotoResult> getPhoto(GoogleApiClient googleApiClient) {
        return getScaledPhoto(googleApiClient, getMaxWidth(), getMaxHeight());
    }

    public PendingResult<PlacePhotoResult> getScaledPhoto(GoogleApiClient googleApiClient, int i, int i2) {
        return googleApiClient.zza(new C06741(this, Places.zzaGz, googleApiClient, i, i2));
    }

    public int hashCode() {
        return zzw.hashCode(Integer.valueOf(this.zzAG), Integer.valueOf(this.zzAH), this.zzaHL, this.zzaHM);
    }

    public boolean isDataValid() {
        return true;
    }

    public PlacePhotoMetadata zzxp() {
        return this;
    }
}
